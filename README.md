# **AsmXoM**

AsmXoM is an enhanced compilation toolchain designed to enforce strict code–data separation at the assembly level. It aims to render x86-64 programs compatible with Execute-Only Memory (XoM) defense mechanisms through this strict isolation. The AsmXoM prototype is implemented based on  GCC 15.2.0 and a modified version of GNU Binutils 2.44.

##### Overview of the Source code

```bash
|-- binutils-2.44   # Modified binutils source code.
|-- build.sh        # Script for local build.
|-- docker          # Configure for docker build.
|-- env.sh          # Script for environment initialization.
|-- evaluation      # Script and project for artifact evaluation.
|-- gcc-wrapper     # Compiler plugins and linker scripts.
|-- LICENSE      
|-- README.md      
|-- script          # Scripts for automated testing.
|-- xom             # Dynamic link library implementing XOM using Intel MPK.
```

### Prerequisites

- An x86-64 CPU supporting Intel Memory Protection Keys (MPK)
- A minimum of 20 GB of available disk space for building GCC and GNU Binutils

### How to build

#### Docker build

The default image builds the modified Binutils 2.44, downloads and verifies GCC 15.2.0, builds GCC, and builds the GCC plugin and XoM support binaries during `docker build`. 

```bash
docker build --platform=linux/amd64 -t asmxom:15.2 .
docker run --name asmxom -it asmxom:15.2
```

#### Local build
Alternatively, you can execute the following scripts to compile the complete AsmXoM locally.

```bash
./build.sh
source env.sh
```

### How to use

#### Using GAS

The modified `GAS` assembler provides two compilation flags to enable the customized modules:

- `--dcollect` collect all embedded data information within the program.
- `--dsplit` separate embedded data into the read-only data section.   

```bash
# collect embedded data information
/Workplace/binutils-2.44/build/bin/as --keep-locals --dcollect test.s -o test.o

# dump collected information
python3 /Workplace/scripy/parse_xom_info.py test.o --section xomdata --log /tmp/dump.log

# separate embedded data
/Workplace/binutils-2.44/build/bin/as --keep-locals --dsplit test.s -o test.o
```

#### Using GCC

You can pass custom flags to the assembler invoked by GCC using the `-Wa` option.   

```bash
/Workplace/gcc-15.2.0/build/bin/gcc -Wa,--keep-locals -Wa,--dcollect test.c -o test
/Workplace/gcc-15.2.0/build/bin/gcc -Wa,--keep-locals -Wa,--dsplit test.c -o test
```

### How to Evaluation

We provide the following scripts in directory `evaluation` to allow users to easily test AsmXoM's functionality and its XoM compatibility. These scripts use OpenSSL as the project to illustrate the testing process. 

```bash
|-- function_evaluation.sh        # Embedded data identification and analysis
|-- correctness_evaluation.sh     # Functional correctness testing after code-data separation
|-- compatibility_evaluation.sh   # XoM compatibility testing after code-data separation
|-- disclosure_evaluation.sh      # Code leakage prevention testing in XoM environment
```

#### Embedded Data Identification

This evaluation compiles OpenSSL using AsmXoM to achieve code-data separation and collect statistics on the identified embedded data.  


Execute the following commands:

```bash
cd evaluation
./function_evaluation.sh
```

Expected output:
```bash
========================================
[Step 1] Check openssl-3.3.5 ...
========================================
[Success] [+] Find openssl-3.3.5 in /root/AsmXoM/evaluation
========================================
[Step 2] Configuring openssl-3.3.5 ...
========================================
[Success] [+] Configuration Successful!
========================================
[Step 3] Compiling openssl-3.3.5 with -j128 ...
========================================
[Success] [+] Compilation Successful!
========================================
[Step 4] Analysis the embedded data in openssl-3.3.5 ...
========================================
...
+--------------------------------+-----------------------------------+
| METRIC CATEGORY                | VALUE                             |
+--------------------------------+-----------------------------------+
| Total Embedded Data Count      | 123                               |
| Total Embedded Data Size       | 176603                            |
| Actual Text Size               | 5262113                           |
+--------------------------------+-----------------------------------+
| Embedded / Actual Size Ratio   | 3.36%                             |
| Average Embedded Data Size     | 1435.7967479674796                |
+--------------------------------+-----------------------------------+
| Total Hardcode Size            | 189225                            |
| Total Hardcode Block           | 768                               |
+--------------------------------+-----------------------------------+
```

#### Functional Correctness Testing

This evaluation compiles OpenSSL using AsmXoM to achieve code-data separation, followed by running the standard OpenSSL tests (i.e., `make test`).   

- Expected Result: All tests passed.   

Execute the following commands:

```bash
cd evaluation
./correctness_evaluation.sh
```

Expected output:
```bash
========================================
[Step 1] Check openssl-3.3.5 ...
========================================
[Success] [+] Find openssl-3.3.5 in /root/AsmXoM/evaluation
========================================
[Step 2] Configuring openssl-3.3.5 ...
========================================
[Success] [+] Configuration Successful!
========================================
[Step 3] Compiling openssl-3.3.5 with -j128 ...
========================================
[Success] [+] Compilation Successful!
========================================
[Step 4] Running standard tests (openssl-3.3.5) ...
========================================
...
All tests successful.
Files=316, Tests=3244, 478 wallclock secs ( 6.25 usr  0.76 sys + 391.64 cusr 86.09 csys = 484.74 CPU)
Result: PASS
```

#### XoM Compatibility Testing

This evaluation enforces XoM protection on the program via Intel MPK, and compiles and executes OpenSSL using AsmXoM and the baseline GCC, respectively.  

- Under XoM protection, OpenSSL compiled using AsmXoM executes normally.
- Under XoM protection, OpenSSL compiled using the baseline GCC crashes with a `segmentation fault`.   

Execute the following commands:

```bash
cd evaluation
./compatibility_evaluation.sh
```

Expected output:

```bash
========================================
[Step 1] Prepare xom environment ...
========================================
[Success] [+] Compiled /root/AsmXoM/xom/libmpk_xom.so
========================================
[Step 2] Check openssl-3.3.5 ...
========================================
[Success] [+] Find openssl-3.3.5 in /root/AsmXoM/evaluation
========================================
[Step 3] Build openssl-3.3.5 by native GCC ...
========================================
[Success] [+] Compilation Successful!
========================================
[Step 4] Run openssl-3.3.5 in XoM environment compiled by native GCC ...
========================================
Doing sha1 ops for 3s on 16 size blocks: ./compatibility_evaluation.sh: line 120: 3548223 Segmentation fault  (core dumped) $XOM_RUN ./apps/openssl speed sha1
========================================
[Step 5] Build openssl-3.3.5 by AsmXoM ...
========================================
[Success] [+] Compilation Successful!
========================================
[Step 6] Run openssl-3.3.5 in XoM environment compiled by AsmXoM ...
========================================
Doing sha1 ops for 3s on 16 size blocks: 8435293 sha1 ops in 3.00s
Doing sha1 ops for 3s on 64 size blocks: 7541216 sha1 ops in 3.00s
...
```

#### Code Leakage Prevention Testing

This evaluation emulates an attacker with an arbitrary read primitive by modifying the entry functions of OpenSSL to access their own executable code pages. 

- Under XoM protection, reading the code segment results in a `SEGV_PKUERR`.
- Without XoM protection, the code segment can be read normally.   

Execute the following commands:

```bash
cd evaluation
./disclosure_evaluation.sh
```

Expected output:

```bash
========================================
[Step 1] Simulate attack payload ...
========================================
[Success] [+] Compiled /root/AsmXoM/xom/libleak_probe.so
========================================
[Step 2] Build openssl-3.3.5 ...
========================================
[Success] [+] Compilation Successful!
========================================
[Step 3] Run openssl-3.3.5 in XoM environment ...
========================================
[mpk-xom] pkey=1 object=<main> exec=[0x404000, 0x909000) prot=r-x
[mpk-xom] data read/write access to selected executable pages is disabled; instruction fetch remains enabled
[leak-probe] attempting to read code
[leak-probe] executable segment : [0x404000, 0x908f51)
[leak-probe] test address       : 0x404010

[leak-probe] PASS
[leak-probe] attempted in-process code disclosure
[leak-probe] signal  : SIGSEGV
[leak-probe] si_code : SEGV_PKUERR
[leak-probe] result  : executable page cannot be read as data
========================================
[Step 4] Run openssl-3.3.5 in non-XoM environment ...
========================================
[leak-probe] attempting to read code
[leak-probe] executable segment : [0x404000, 0x908f51)
[leak-probe] test address       : 0x404010
[leak-probe] READ SUCCEEDED
[leak-probe] leaked bytes       : 85 c0 74 02 ff d0 e8 30 95 40 00 48 83 c4 08 c3 
...
```

