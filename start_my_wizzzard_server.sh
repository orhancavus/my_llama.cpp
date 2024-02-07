#!/bin/bash

# Define variables
SERVER_EXEC="/Users/orhancavus/Development/Python/ml_ai_ds/llama.cpp/server"
CONFIG_FILE="/Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/WizardLM-7B-V1.0-Uncensored-GGUF/wizardLM-7B.ggmlv3.q4_0.gguf.bin"
HOST="0.0.0.0"
THREADS="16"
MEMORY="4096"

# Print start message
echo "Starting server wizardLM-7B.ggmlv3.q4_0.gguf.bin..."

# Run server with specified parameters
"$SERVER_EXEC" -c "$MEMORY" --host "$HOST" -t "$THREADS" --mlock -m "$CONFIG_FILE"

# Print completion message
echo "Server started successfully."
