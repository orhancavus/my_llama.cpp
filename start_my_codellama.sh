#!/bin/bash
Echo 
Echo Starting /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/CodeLlama-13B-Instruct-GGUF/codellama-13b-instruct.Q4_K_M.gguf

./main -t 30 -m /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/CodeLlama-13B-Instruct-GGUF/codellama-13b-instruct.Q4_K_M.gguf --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"
