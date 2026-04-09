#!/bin/bash
echo "🚀 Starting Qwen Agent (Fast Coding / DevOps Worker)"
echo "   Context: 24k | GPU Layers: 65 | Port: 8081"
echo "   Press Ctrl+C to stop"
echo "------------------------------------------------"

~/llama.cpp/build/bin/llama-server \
  -m ~/llama.cpp/models/Qwen3.5-9B-UD-IQ3_XXS.gguf \
  -c 24576 \
  --n-gpu-layers 65 \
  -ngl 65 \
  --port 8081 \
  --host 0.0.0.0
