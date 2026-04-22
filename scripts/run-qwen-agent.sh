#!/bin/bash
echo "🚀 Starting Qwen Agent (RTX 5060 Ti 16GB)"
echo "   Context: 32k | GPU Layers: 99 | Port: 8081"
echo "------------------------------------------------"

~/llama.cpp/build/bin/llama-server \
  -m ~/llama.cpp/models/Qwen3.5-9B-UD-IQ3_XXS.gguf \
  -c 32768 \
  --n-gpu-layers 99 \
  -ngl 99 \
  --port 8081 \
  --host 0.0.0.0
