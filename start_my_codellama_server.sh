#!/bin/bash
#
Echo run local LLM for API usage
Echo /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/CodeLlama-13B-Instruct-GGUF/codellama-13b-instruct.Q4_K_M.gguf

./server -c 4096 --host 0.0.0.0 -t 16 --mlock -m /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/CodeLlama-13B-Instruct-GGUF/codellama-13b-instruct.Q4_K_M.gguf
