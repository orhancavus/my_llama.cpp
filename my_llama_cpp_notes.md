# Installation and running llama.cpp on Mac

## Orhan Cavus 14.09.2023

## Links for installation

<https://huggingface.co/TheBloke/CodeLlama-13B-Instruct-GGUF>
<https://uniquehazards.com/2023/05/06/the-complete-idiots.html>  
<https://github.com/ggerganov/llama.cpp>  
<https://til.simonwillison.net/llms/llama-7b-m2>  
<https://agi-sphere.com/wizardlm/>  
<https://llama-cpp-python.readthedocs.io/en/latest/install/macos/>
<https://continue.dev/docs/reference/Models/llamacpp>

```bash
 xcode-select --install
 deactivate
 cd ..
 ls
 git clone git@github.com:ggerganov/llama.cpp.git
 git clone https://github.com/ggerganov/llama.cpp\ncd llama.cpp
 python3 -m pip install -r requirements.txt
 pwd
 mv ~/Downloads/stable-vicuna-13B.ggmlv3.q4_0.bin ./models

 ./convert-llama-ggml-to-gguf.py --eps 1e-5 -i ./models/stable-vicuna-13B.ggmlv3.q4_0.bin -o ./models/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin
 ./main -t 30 -m ./models/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"\n
```

## Convert ggmlv to gguf format

```bash
# tutorial 
./convert-llama-ggml-to-gguf.py --eps 1e-5 -i ./models/llama-2-13b-chat.ggmlv3.q4_0.bin -o ./models/llama-2-13b-chat.ggmlv3.q4_0.gguf.bin

# convert vicuna-13B ggml
./convert-llama-ggml-to-gguf.py --eps 1e-5 -i ./models/stable-vicuna-13B.ggmlv3.q4_0.bin -o ./models/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin

# convert wizzardLM ggml
./convert-llama-ggml-to-gguf.py --eps 1e-5 -i ./models/TheBloke_wizardLM-7B-GGML/wizardLM-7B.ggmlv3.q4_0.bin -o ./models/TheBloke_wizardLM-7B-GGML/wizardLM-7B.ggmlv3.q4_0.gguf.bin

```

## Run on local machine

```bash
# tutorial
./main -t 30 -m ./models/stable-vicuna-13B.ggmlv3.q4_0.bin --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"

# Run my vicuna-13B ggml
./main -t 30 -m ./models/stable-vicuna-13B.ggmlv3.q4_0.gguf.bin --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"

# Run my wizardLM
./main -t 30 -m ./models/TheBloke_wizardLM-7B-GGML/wizardLM-7B.ggmlv3.q4_0.gguf.bin --color -c 2048 --temp 0.7 --repeat_penalty 1.1 -n -1 --interactive-first -r "### Human:" -p "### Human:"

./main -m ./models/TheBloke_wizardLM-7B-GGML/wizardLM-7B.ggmlv3.q4_0.gguf.bin -t 4 -c 2048 -n 2048 --color -i --reverse-prompt 'Human:' -p 'Human:'

huggingface-cli download TheBloke/CodeLlama-13B-Instruct-GGUF codellama-13b-instruct.q4_K_M.gguf --local-dir . --local-dir-use-symlinks False

rsync -ah --progress ggml-model-gpt4all-falcon-q4_0.bin ./models

./convert-llama-ggml-to-gguf.py --eps 1e-5 -i ./models/ggml-model-gpt4all-falcon-q4_0.bin -o ./models/ggml-model-gpt4all-falcon-q4_0.gguf.bin

```

## Run as API server

```bash
./server -c 4096 --host 0.0.0.0 -t 16 --mlock -m ./models/codellama-13b-instruct.Q4_K_M.gguf

# config your ggml model path
# make sure it is gguf v2
# make sure it is q4_0

export MODEL=[path to your llama.cpp ggml models]]/[ggml-model-name]]Q4_0.gguf
python3 -m llama_cpp.server --model $MODEL  --n_gpu_layers 1
```

## Run as client

```bash
node chat.mjs

```

## Run from Javascript

```bash
node index.js
```

## Run with bash model selection as server

```bash
./select_start_api_server.sh
```

## Run with bash model selection as chat app

```bash
./select_start_api_server.sh
```
