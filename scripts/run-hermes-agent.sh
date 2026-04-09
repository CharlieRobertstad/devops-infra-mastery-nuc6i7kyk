#!/bin/bash
echo "🚀 Starting Hermes Agent (Primary Orchestrator)"
echo "   Context: 16k | GPU Layers: 45 | Port: 8080"
echo "   Press Ctrl+C to stop"
echo "------------------------------------------------"

~/llama.cpp/build/bin/llama-server \
  -m ~/llama.cpp/models/Hermes-3-Llama-3.1-8B.Q5_K_M.gguf \
  -c 16384 \
  --n-gpu-layers 45 \
  -ngl 45 \
  --port 8080 \
  --host 0.0.0.0
