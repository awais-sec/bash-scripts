# Bash Scripts — Shell Scripting Labs

Shell scripts for system administration and security tasks, written as part of a
Digital Forensics & Cyber Security shell-scripting course. Twelve labs, progressing
from basic terminal commands to process management and file operations.

> **Roll No:** SP-2023/BS-DFCS/008 &nbsp;|&nbsp; **Name:** Awais Ahmed

Each lab has its own folder with the script(s) and a `README.md` write-up
(what it does, the code, and screenshots of it running).

| Lab | Topic | Write-up |
|---|---|---|
| 01 | Introduction to the Shell | [lab01_intro_to_shell/](lab01_intro_to_shell/) |
| 02 | Scripting Basics (dirs, permissions, aliases) | [lab02_scripting_basics/](lab02_scripting_basics/) |
| 03 | Variables | [lab03_variables/](lab03_variables/) |
| 04 | Command-Line Arguments | [lab04_arguments/](lab04_arguments/) |
| 05 | Wildcards & File Listing | [lab05_wildcards_filetests/](lab05_wildcards_filetests/) |
| 06 | Conditionals | [lab06_conditionals/](lab06_conditionals/) |
| 07 | Loops | [lab07_loops/](lab07_loops/) |
| 08 | Functions & Libraries | [lab08_functions/](lab08_functions/) |
| 09 | Arrays — Basics | [lab09_arrays_basics/](lab09_arrays_basics/) |
| 10 | Arrays — Practical Applications | [lab10_arrays_advanced/](lab10_arrays_advanced/) |
| 11 | Process Management | [lab11_process_management/](lab11_process_management/) |
| 12 | File Operations | [lab12_file_operations/](lab12_file_operations/) |

All screenshots live in [`assets/`](assets/) and are referenced from each
lab's README.

## Usage

```bash
git clone https://github.com/awais-sec/bash-scripts.git
cd bash-scripts
chmod +x */*.sh
./lab01_intro_to_shell/lab01.sh
```

Some scripts (labs 06, 07, 11, 12) prompt for input via `read`, so run them
interactively rather than piping input from a file unless you intend to.
