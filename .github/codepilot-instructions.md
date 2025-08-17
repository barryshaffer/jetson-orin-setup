
# GitHub Copilot Instructions for the Jetson Orin Setup Repository

## 1. Overview

This repository contains a collection of shell scripts designed to automate the setup and configuration of NVIDIA Jetson Orin devices running JetPack 5.x and later. The goal is to provide a minimal, efficient, and customizable development environment.

The main script is `setup_jetson.sh`, which orchestrates the entire setup process by calling other scripts located in the `scripts/` and `scripts/utils/` directories.

## 2. Repository Structure

- **`setup_jetson.sh`**: The main entry point for the setup process.
- **`scripts/`**: Contains core scripts for essential installations and configurations (e.g., installing VS Code, setting terminal fonts).
- **`scripts/utils/`**: Contains utility scripts for optional or more specific tasks (e.g., building custom versions of software, system optimizations).
- **`.github/`**: Contains GitHub-related files, including this one.
- **`README.md`**: Provides an overview of the project, usage instructions, and other relevant information.

## 3. Shell Scripting Guidelines

When writing or modifying shell scripts in this repository, please adhere to the following guidelines:

### a. General Style

- **Shebang**: Start all scripts with `#!/bin/bash`.
- **Error Handling**: Use `set -e` at the beginning of your scripts to ensure that the script will exit immediately if a command exits with a non-zero status.
- **Comments**: Use comments to explain complex or non-obvious parts of the script.
- **File and Directory Paths**: Use absolute paths whenever possible to avoid ambiguity. The `SCRIPT_DIR` variable in `setup_jetson.sh` is a good example of how to get the absolute path to the script's directory.

### b. Logging

The `setup_jetson.sh` script includes a logging function `log_message`. When adding new functionality to this script, use this function to log important information.

- **`log_message "INFO" "Your message here"`**: For informational messages.
- **`log_message "WARN" "Your message here"`**: for warnings.
- **`log_message "ERROR" "Your message here"`**: for errors.

### c. Variable Naming

- **Constants**: Use uppercase for variables that are treated as constants (e.g., `LOG_DIR`, `SCRIPT_DIR`).
- **Local Variables**: Use lowercase for local variables within functions.

### d. User Interaction

- **Prompts**: If a script requires user input, provide a clear and concise prompt.
- **Defaults**: Whenever possible, provide a default option for user prompts (e.g., `(y/N)`).

## 4. Creating New Scripts

When adding a new script to the repository, please follow these steps:

1.  **Create the script**: Place the new script in the appropriate directory (`scripts/` or `scripts/utils/`).
2.  **Make it executable**: Ensure that the script has execute permissions.
3.  **Add it to the main script (if necessary)**: If the new script should be part of the main setup process, add a call to it in `setup_jetson.sh`. Make sure to include checks to ensure the script exists and is executable.
4.  **Update the README**: If the new script is a utility script, add it to the table of utility scripts in `README.md`.

## 5. Copilot's Role

As GitHub Copilot, your role is to assist in the development and maintenance of this repository. When generating code, please:

- **Follow the existing style**: Mimic the coding style and conventions of the existing scripts.
- **Generate clear and concise code**: The scripts should be easy to read and understand.
- **Provide helpful suggestions**: When appropriate, suggest improvements to the existing code or new features that would be beneficial to the project.
- **Respect the repository's structure**: When adding new files, place them in the appropriate directories.
