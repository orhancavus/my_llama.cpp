#!/bin/bash


echo Start vicuna as API server ..
echo Model name : /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/TheBloke:stable-vicuna-13B-GGML/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin

./server -m /Users/orhancavus/Development/Python/ml_ai_ds/my_models/TheBloke/TheBloke:stable-vicuna-13B-GGML/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin -c 2048
