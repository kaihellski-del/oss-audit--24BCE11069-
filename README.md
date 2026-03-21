# Open Source Audit: Git

**Student Name:** Anonymous Candidate
**Roll Number:** 2026-OSS-AUDIT
**Chosen Software:** Git (GPL v2)

---

## Description

This repository contains the five required shell scripts for the Open Source Audit Capstone Project, demonstrating practical Linux command-line automation, system auditing, and open-source philosophical concepts.

The audit covers:
- Origin and philosophy of Git
- License analysis (GNU GPL v2)
- Ethics of the open-source commons
- Linux system footprint and integration
- FOSS ecosystem and dependencies
- Comparative analysis: Git vs Perforce Helix Core

---

## Files Included

| File | Description |
|------|-------------|
| `script1_system_identity.sh` | Generates a Linux system welcome screen with OS and license metadata |
| `script2_package_inspector.sh` | Evaluates installation status and philosophical background of FOSS packages |
| `script3_disk_auditor.sh` | Iterates through critical Linux directories to report on permissions, ownership, and storage size |
| `script4_log_analyzer.sh` | Parses system logs line-by-line to tabulate specific error strings and warnings safely |
| `script5_manifesto_generator.sh` | An interactive script that captures user input to generate a personalized text-based open-source manifesto |

---

## Instructions for Execution

All scripts are designed to run on a standard Linux environment (Ubuntu/Debian or RHEL-based).

**Step 1 — Clone the repository:**
```bash
git clone https://github.com/foss-auditor-student/oss-audit-2026.git
```

**Step 2 — Navigate to the directory:**
```bash
cd oss-audit-2026
```

**Step 3 — Grant execution permissions to all scripts:**
```bash
chmod +x *.sh
```

**Step 4 — Execute scripts individually:**
```bash
./script1_system_identity.sh
./script2_package_inspector.sh git
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## Dependencies

- Standard GNU Coreutils (`awk`, `grep`, `cut`, `du`, `ls`)
- Debian package manager (`dpkg`) — for Script 2 on Ubuntu/Debian
- Red Hat package manager (`rpm`) — for Script 2 on RHEL/Fedora/CentOS

---

## Script Summaries

### Script 1: System Identity Report
Outputs a formatted welcome screen displaying OS distribution, kernel version, uptime, logged-in user, and licensing metadata. Uses command substitution and `/etc/os-release` for dynamic, cross-distro compatibility.

### Script 2: FOSS Package Inspector
Accepts a package name as an argument (defaults to `git`). Checks installation status via `dpkg`, extracts the version, and outputs philosophical context using a `case` statement.

### Script 3: Disk and Permission Auditor
Iterates over an array of critical system directories using a `for` loop. Reports permissions, ownership, and human-readable disk usage using `ls`, `awk`, `du`, and `printf` for aligned output.

### Script 4: Log File Analyzer
Safely parses a log file line-by-line using `while IFS= read -r`. Validates file existence and handles empty files. Counts keyword occurrences and displays the last 5 matching lines.

### Script 5: Open Source Manifesto Generator
Reads interactive user input and writes a personalized manifesto to a `.txt` file using `>` (create/overwrite) and `>>` (append) redirection operators.

---

## License

This project is submitted as academic coursework. The shell scripts are original work and are released under the **MIT License** for educational use.

---

## Project Software: Git

> Git is a free and open-source distributed version control system, licensed under the **GNU General Public License version 2 (GPLv2)**. Originally created by Linus Torvalds in April 2005, it has become the global standard for source code management.
