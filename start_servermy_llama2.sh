#/bin/bash

Echo start server llama-2-7b-chat.Q4_K_M.gguf
Echo run 

./server -c 4096 --host 0.0.0.0 -t 16 --mlock -m /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/LLama2-7B-chat-GGUF/llama-2-7b-chat.Q4_K_M.gguf