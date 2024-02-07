#!/bin/bash

# Define variables
MAIN_EXEC="/Users/orhancavus/Development/Python/ml_ai_ds/llama.cpp/main"
HOST="0.0.0.0"
THREADS="16"
MEMORY="4096"

# Define config file variables
CONFIG_FILE1="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/LLama2-7B-chat-GGUF/llama-2-7b-chat.Q4_K_M.gguf"
CONFIG_FILE2="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/WizardLM-7B-V1.0-Uncensored-GGUF/wizardLM-7B.ggmlv3.q4_0.gguf.bin"
CONFIG_FILE3="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/TheBloke:stable-vicuna-13B-GGML/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin"
CONFIG_FILE4="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/Mistral-7B-Instruct-v0.1-GGUF/mistral-7b-instruct-v0.1.Q4_K_S.gguf"

echo

# Check if a parameter is passed
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
        4)
            CONFIG_FILE="$CONFIG_FILE4"
            ;;            
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
else
    # Prompt user to select a config file
    echo "Select a config file:"
    echo "====================="
    echo "1. $(basename "$CONFIG_FILE1")"
    echo "2. $(basename "$CONFIG_FILE2")"
    echo "3. $(basename "$CONFIG_FILE3")"
    echo "5. $(basename "$CONFIG_FILE4")"
    echo
    read -p "Enter your choice (1-4): " CHOICE

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
        4)
            CONFIG_FILE="$CONFIG_FILE4"
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
fi

# Print start message
echo "Starting chat $(basename "$CONFIG_FILE")..."

# Run server with specified parameters
"$MAIN_EXEC" -c "$MEMORY" -t "$THREADS" -m "$CONFIG_FILE" --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"

# Print completion message
echo "Server started successfully."