/* ldscript.ld */
SECTIONS
{
    /* Define a section used for relocation purposes. */
    .xomdata : ALIGN(8)
    {
        __xomdata_section_start = .;
        KEEP(*(.xomdata))
        __xomdata_section_end = .;
    }
}

/* Insert the output sections above immediately after the .bss output section.
 * Their position relative to non-allocated metadata sections such as .symtab
 * depends on the linker's complete output-section layout.
 */
INSERT AFTER .bss;
