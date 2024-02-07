#!/bin/bash

# Define variables
SERVER_EXEC="/Users/orhancavus/Development/Python/ml_ai_ds/llama.cpp/server"
CONFIG_FILE="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/LLama2-7B-chat-GGUF/llama-2-7b-chat.Q4_K_M.gguf"
HOST="0.0.0.0"
THREADS="16"
MEMORY="4096"

# Print start message
echo "Starting server llama-2-7b-chat.Q4_K_M.gguf..."

# /Users/orhancavus/Development/Python/ml_ai_ds/llama.cpp/server -c 4096 --host 0.0.0.0 -t 16 --mlock -m /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/LLama2-7B-chat-GGUF/llama-2-7b-chat.Q4_K_M.gguf

# Run server with specified parameters
"$SERVER_EXEC" -c "$MEMORY" --host "$HOST" -t "$THREADS" --mlock -m "$CONFIG_FILE"

# Print completion message
echo "Server started successfully."
