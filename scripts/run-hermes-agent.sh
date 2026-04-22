#!/bin/bash
echo "🚀 Starting Hermes Agent (RTX 5060 Ti 16GB)"
echo "   Context: 32k | GPU Layers: 99 | Port: 8080"
echo "------------------------------------------------"

~/llama.cpp/build/bin/llama-server \
  -m ~/llama.cpp/models/Hermes-3-Llama-3.1-8B.Q5_K_M.gguf \
  -c 32768 \
  --n-gpu-layers 99 \
  -ngl 99 \
  --port 8080 \
  --host 0.0.0.0
