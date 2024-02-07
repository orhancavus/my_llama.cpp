# Locall LLM Server running with llama.cpp  README

## Overview

This Bash script designed to facilitate the startup of a Local LLM model server application with various configuration files as API server or chat app.

Both scripts allow the user to select a configuration file interactively or pass the choice as a parameter.

- select_start_api_server.sh - Starts local LLM running with llama.cpp as API server.
- select_start_chat_server.sh - Starts local LLM running with llama.cpp as chat app from bash.

## Usage

### Running the Script

1. Ensure that you have Bash installed on your system.
2. Make the script executable by running:

    ```bash
    chmod +x select_start_api_server.sh
    ```

3. Run the script by executing:

    ```bash
    ./select_start_api_server.sh [OPTION]
    ```

    - `[OPTION]`: (Optional) The number representing the choice of the configuration file. If provided, the script will use this option without user interaction.

### Configuration Files

The script comes pre-configured with 4 default configuration files. You can modify these paths in the script according to your application's setup.

- `CONFIG_FILE1`: Path to LLama2-7B-chat-GGUF configuration file.
- `CONFIG_FILE2`: Path to WizardLM-7B-V1.0-Uncensored-GGUF configuration file.
- `CONFIG_FILE3`: Path to TheBloke:stable-vicuna-13B-GGML configuration file.
- `CONFIG_FILE4`: Path to tMistral-7B-Instruct-v0.1-GGUFconfiguration file.

## Script Behavior

- If no option is provided, the script will prompt the user to select a configuration file from the predefined options.
- If an option is provided, the script will use the corresponding configuration file without user interaction.
- Once a configuration file is selected, the script starts the server using the specified configuration.
- The server is started with the following parameters:
  - Memory: 4096
  - Host: 0.0.0.0
  - Threads: 16
  - Memory Locking enabled (--mlock)

## Example

To run the script and select the second configuration file without user interaction:

```bash
./select_start_api_server.sh 2
```

## Usage as a chat app

To run the script and select the second configuration file without user interaction:

```bash
./select_start_chat_server.sh 
```
