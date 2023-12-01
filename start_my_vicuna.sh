#!/bin/bash
Echo 
Echo Starting /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/TheBloke:stable-vicuna-13B-GGML/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin

./main -t 30 -m /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/TheBloke:stable-vicuna-13B-GGML/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"
