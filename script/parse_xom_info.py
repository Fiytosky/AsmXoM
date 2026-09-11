import struct
import os
import argparse
import sys
import io
from elftools.elf.elffile import ELFFile
from elftools.elf.constants import SH_FLAGS

# Define the size and format of the fixed structure (little-endian).
# Header fixed: magic(4s) + name_size(I) = 8 bytes
HEADER_FIXED_FMT = "<4sI"
HEADER_FIXED_SIZE = struct.calcsize(HEADER_FIXED_FMT)
MAGIC_SIG = b'xom\x00'   # Header magic number

META_HEADER_FIXED_FMT = '<IIIII'
META_HEADER_FIXED_SIZE = struct.calcsize(META_HEADER_FIXED_FMT)

# Metadata fixed: frag_address(Q) + frag_index(I) + frag_size(I) + fr_flags(4s) + symbol_size(I) = 24 bytes
# Assume struct frag_flags occupies 4 bytes (4s); adjust this if it differs.
META_FIXED_FMT = "<QII4sI"
META_FIXED_SIZE = struct.calcsize(META_FIXED_FMT)

def extract_section_bytes(elf_path: str, section_name: str):
    """Extract the raw bytes of a specified ELF section with pyelftools."""
    try:
        with open(elf_path, 'rb') as f:
            elf = ELFFile(f)
            # full_data =f.read()
            # mem_file = io.BytesIO(full_data)
            # elf = ELFFile(mem_file)
            section = elf.get_section_by_name(section_name)
            
            if not section:
                print(f"[!] Section '{section_name}' not found in {elf_path}")
                return None
            
            return section.data()
    except Exception as e:
        print(f"[!] Error reading ELF file: {e}")
        return None

def get_all_executable_size(elf_path):
    total_exec_size = 0
    
    with open(elf_path, 'rb') as f:
        elf = ELFFile(f)
        
        # print(f"{'Section Name':<20} | {'Size (Bytes)':<15}")
        # print("-" * 40)
        
        for section in elf.iter_sections():
            # Check whether the section-header flags include the executable bit.
            if section['sh_flags'] & SH_FLAGS.SHF_EXECINSTR:
                size = section['sh_size']
                total_exec_size += size
                # print(f"{section.name:<20} | {size:<15}")
                
    # print("-" * 40)
    # print(f"Total size of all executable sections: {total_exec_size} bytes")
    return total_exec_size

def safe_load_elf(file_path):
    with open(file_path, 'rb') as f:
        # 1. Check whether the first four bytes are \x7fELF.
        magic = f.read(4)
        if magic != b'\x7fELF':
            print(f"[!] Skipping non-ELF file: {file_path} (detected prefix: {magic})")
            return False
        
        # 2. If validation succeeds, report that the file is an ELF binary.
        return True

def parse_xomdata(data: bytes, text_size: int, log_file: str):
    data_len = len(data)
    offset = 0
    # stream = io.BytesIO(data)
    # data_len = len(data)
    entry_count = 0
    embeded_data_size = 0
    data_block = 0

    total_hardcode_size = 0
    total_hardcode_block = 0
    total_direct_code_num = 0
    total_direct_data_num = 0
    total_fall_through_num = 0
    total_indirect_code_num = 0
    total_indirect_data_num = 0

    with open(log_file, "w", encoding="utf-8") as log:
        log.write(f"=== 🚀 Starting to parse the .xomdata section (total size: {data_len} bytes) ===\n\n")
        
        while offset < data_len:
            if data_len - offset < 4:
                break
            
            # ---------------------------------------------------------
            # 1. Process the header.
            # ---------------------------------------------------------
            peek_bytes = data[offset : offset + 4]
            if peek_bytes == MAGIC_SIG:
                if data_len < HEADER_FIXED_SIZE:
                    log.write("[ERROR] Data is too short to parse the header.\n")
                    return
                
                magic_bytes, name_size = struct.unpack_from(HEADER_FIXED_FMT, data, offset)
                offset += HEADER_FIXED_SIZE
                
                magic_str = magic_bytes.decode('ascii', errors='ignore').strip('\x00')
                
                # Extract the filename.
                file_name = ""
                if name_size > 0:
                    if offset + name_size > data_len:
                        log.write(f"[ERROR] Filename length is out of bounds ({name_size} bytes required).\n")
                        return
                    file_name_bytes = data[offset : offset + name_size]
                    file_name = file_name_bytes.decode('utf-8', errors='ignore').strip('\x00')
                    offset += name_size

                (hardcoded_bytes_per_file, 
                bytes_frag_num, 
                direct_code_num, 
                direct_data_num, 
                fall_through_num) = struct.unpack_from(META_HEADER_FIXED_FMT, data, offset)
                offset += META_HEADER_FIXED_SIZE
                    
                log.write("--- [ Header ] ---\n")
                log.write(f"Magic      : {magic_str}\n")
                log.write(f"Name Size  : {name_size} bytes\n")
                log.write(f"File Name  : {file_name if file_name else '<empty>'}\n\n")
                log.write(f"hardcoded_bytes_per_file  : {hardcoded_bytes_per_file}  bytes\n")
                log.write(f"bytes_frag_num  : {bytes_frag_num}\n")
                log.write(f"direct_code_num  : {direct_code_num}\n")
                log.write(f"direct_data_num  : {direct_data_num}\n")
                log.write(f"fall_through_num : {fall_through_num}\n")

                total_hardcode_size += hardcoded_bytes_per_file
                total_hardcode_block += bytes_frag_num
                total_direct_code_num += direct_code_num
                total_direct_data_num += direct_data_num
                total_fall_through_num += fall_through_num
            
            # ---------------------------------------------------------
            # 2. Parse Metadata structures in a loop.
            # ---------------------------------------------------------
            else:
                log.write("--- [ Metadata Entries ] ---\n")
            
            # while offset < data_len:
                if offset + META_FIXED_SIZE > data_len:
                    log.write(f"\n[WARNING] The remaining data ({data_len - offset} bytes) is insufficient to parse the next complete fixed Metadata header.\n")
                    break
                    
                # Parse the fixed-length metadata fields.
                (frag_address, 
                frag_index, 
                frag_size, 
                fr_flags_bytes, 
                symbol_size) = struct.unpack_from(META_FIXED_FMT, data, offset)
                
                offset += META_FIXED_SIZE
                
                # Format the flags as a hexadecimal string for readability.
                fr_flags_hex = fr_flags_bytes.hex()
                
                # Extract the symbol name.
                symbol_name = ""
                if symbol_size > 0:
                    if offset + symbol_size > data_len:
                        log.write(f"\n[ERROR] Entry #{entry_count}: Symbol length is out of bounds ({symbol_size} bytes required).\n")
                        break
                    symbol_bytes = data[offset : offset + symbol_size]
                    symbol_name = symbol_bytes.decode('utf-8', errors='ignore').strip('\x00')
                    offset += symbol_size
                    
                # Write the entry to the log.
                log.write(f"[Entry #{entry_count}]\n")
                log.write(f"  Frag Address : 0x{frag_address:016x}\n")
                log.write(f"  Frag Index   : {frag_index}\n")
                log.write(f"  Frag Size    : {frag_size} (0x{frag_size:x}) bytes\n")
                log.write(f"  Frag Flags   : 0x{fr_flags_hex}\n")
                log.write(f"  Symbol Size  : {symbol_size} bytes\n")
                log.write(f"  Symbol Name  : {symbol_name if symbol_name else '<None>'}\n")
                log.write("-" * 40 + "\n")
                
                entry_count += 1
                embeded_data_size += frag_size
                if frag_size != 0 and symbol_name != "null":
                    data_block += 1

        if text_size > 0:
            # Calculate the ratio.
            ratio_val = embeded_data_size / text_size
            ratio_pct = ratio_val * 100
            
            # --- Dynamic precision selection ---
            if ratio_pct == 0:
                ratio_str = "0.00%"
            elif ratio_pct < 0.0001:
                # Very small value: use scientific notation (for example, 1.23e-05%).
                ratio_str = f"{ratio_pct:.2e}%"
            elif ratio_pct < 0.01:
                # Small value: retain six decimal places (for example, 0.002214%).
                ratio_str = f"{ratio_pct:.6f}%"
            elif ratio_pct < 1.0:
                # Moderately small value: retain four decimal places (for example, 0.1234%).
                ratio_str = f"{ratio_pct:.4f}%"
            else:
                # Normal value: retain two decimal places.
                ratio_str = f"{ratio_pct:.2f}%"
        else:
            ratio_str = "N/A (Size is 0)"

        average_size = 0
        if data_block > 0:
            average_size = embeded_data_size / data_block

        total_code_block = total_hardcode_block - data_block
        total_indirect_code_num = total_code_block - total_direct_code_num - total_fall_through_num
        total_indirect_data_num = data_block - total_direct_data_num
            
        log.write(f"\n=== ✅ Parsing complete: {entry_count} metadata entries parsed successfully. ===\n")

        border_line = "+" + "-"*32 + "+" + "-"*35 + "+"
        print("\n" + border_line)
        print(f"| {'METRIC CATEGORY':<30} | {'VALUE':<33} |")
        print(border_line)

        print(f"| {'Total Embedded Data Count':<30} | {data_block:<33} |")
        print(f"| {'Total Embedded Data Size':<30} | {embeded_data_size:<33} |")
        print(f"| {'Actual Text Size':<30} | {text_size:<33} |")
        print(border_line)

        print(f"| {'Embedded / Actual Size Ratio':<30} | {ratio_str:<33} |")
        print(f"| {'Average Embedded Data Size':<30} | {average_size:<33} |")
        print(border_line)

        print(f"| {'Total Hardcode Size':<30} | {total_hardcode_size:<33} |")
        print(f"| {'Total Hardcode Block':<30} | {total_hardcode_block:<33} |")
        # print(f"| {'Total Direct code Num':<30} | {total_direct_code_num:<33} |")
        # print(f"| {'Total Direct Data Num':<30} | {total_direct_data_num:<33} |")
        # print(f"| {'Total Fall Through Num':<30} | {total_fall_through_num:<33} |")
        # print(f"| {'Total Indirect Code Num':<30} | {total_indirect_code_num:<33} |")
        # print(f"| {'Total Indirect Data Num':<30} | {total_indirect_data_num:<33} |")
        # print(border_line)
        print(border_line + "\n")


def main():
    parser = argparse.ArgumentParser(description="Extract and parse .my_section from binary.")
    parser.add_argument("file", help="Path to the ELF binary file")
    parser.add_argument("--section", default=".my_section", help="Section name to extract (default: .my_section)")
    parser.add_argument("--ldlog", help="Path to the ld log file")
    parser.add_argument("--asonly", default="no", help="test")
    
    args = parser.parse_args()

    # 1. Extract the raw bytes.
    # print(f"section name: {args.section}")
    print(f"read log file: {args.ldlog}")
    print(f"read elf file: {args.file}")

    # The build system may generate a wrapper instead of an actual binary,
    # and run.sh may pick it up. Skip it in that case.
    is_elf = safe_load_elf (args.file)
    if not is_elf:
        print(f"Skip: {args.file} -> is a Wrapper bash!")
        return

    raw_data = extract_section_bytes(args.file, args.section)
    text_size = get_all_executable_size(args.file)
    
    if raw_data:
        parse_xomdata(raw_data, text_size, args.ldlog)

if __name__ == "__main__":
    main()
