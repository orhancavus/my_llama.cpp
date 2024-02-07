#!/bin/bash

# Define variables
SERVER_EXEC="/Users/orhancavus/Development/Python/ml_ai_ds/llama.cpp/server"
HOST="0.0.0.0"
THREADS="16"
MEMORY="4096"

# Define config file variables
CONFIG_FILE1="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/LLama2-7B-chat-GGUF/llama-2-7b-chat.Q4_K_M.gguf"
CONFIG_FILE2="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/WizardLM-7B-V1.0-Uncensored-GGUF/wizardLM-7B.ggmlv3.q4_0.gguf.bin"
CONFIG_FILE3="/path/to/CONFIG_FILE3"

 Check if a parameter is passed
if [ $# -eq 1 ]; then
    case $1 in
        1)
            CONFIG_FILE="$CONFIG_FILE1"
            ;;
        2)
            CONFIG_FILE="$CONFIG_FILE2"
            ;;
        3)
            CONFIG_FILE="$CONFIG_FILE3"
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
else
    # Prompt user to select a config file
    echo "Select a config file:"
    echo "1. $(basename "$CONFIG_FILE1")"
    echo "2. $(basename "$CONFIG_FILE2")"
    echo "3. $(basename "$CONFIG_FILE3")"
    read -p "Enter your choice (1-3): " CHOICE

    # Check user's choice and set CONFIG_FILE accordingly
    case $CHOICE in
        1)
            CONFIG_FILE="$CONFIG_FILE1"
            ;;
        2)
            CONFIG_FILE="$CONFIG_FILE2"
            ;;
        3)
            CONFIG_FILE="$CONFIG_FILE3"
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
fi

# Print start message
echo "Starting server $(basename "$CONFIG_FILE")..."

# Run server with specified parameters
"$SERVER_EXEC" -c "$MEMORY" --host "$HOST" -t "$THREADS" --mlock -m "$CONFIG_FILE"

# Print completion message
echo "Server started successfully."