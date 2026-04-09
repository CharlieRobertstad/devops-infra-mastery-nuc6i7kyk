#!/bin/bash
# Lightweight router - automatically stops previous model before starting new one

MODEL=${1:-hermes}   # default to hermes if no argument

echo "🛑 Stopping any running agent first..."
fuser -k 8080/tcp 8081/tcp 2>/dev/null || true
sleep 1.5   # give a moment for cleanup

if [ "$MODEL" = "hermes" ] || [ "$MODEL" = "Hermes" ]; then
    echo "🔀 Routing to Hermes (Primary Orchestrator)"
    ~/devops-infra-mastery-nuc6i7kyk/scripts/run-hermes-agent.sh
elif [ "$MODEL" = "qwen" ] || [ "$MODEL" = "Qwen" ]; then
    echo "🔀 Routing to Qwen (Fast Worker / Coding)"
    ~/devops-infra-mastery-nuc6i7kyk/scripts/run-qwen-agent.sh
else
    echo "Usage: agent [hermes|qwen]"
    echo "Default is hermes"
fi
