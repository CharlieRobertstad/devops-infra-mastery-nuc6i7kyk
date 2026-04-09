#!/bin/bash
# ================================================
# run-hermes-agent.sh
# High-performance Qwen 3.5 9B Dense (UD-IQ3_XXS)
# Optimized for RTX 3070 Ti 8GB
# ================================================

echo "🚀 Starting Hermes Agent - Qwen 3.5 9B Dense (UD-IQ3_XXS)"
echo "   Context: 32k | GPU Layers: 99 | Port: 8080"
echo "   Press Ctrl+C to stop"
echo "------------------------------------------------"

~/llama.cpp/build/bin/llama-server \
  -m ~/llama.cpp/models/Qwen3.5-9B-UD-IQ3_XXS.gguf \
  -c 32768 \
  --n-gpu-layers 99 \
  -ngl 99 \
  --port 8080 \
  --host 0.0.0.0
