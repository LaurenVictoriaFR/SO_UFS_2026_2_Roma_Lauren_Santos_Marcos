#!/bin/bash
OLLAMA_PID=$(pgrep -f "/ollama serve")
echo "timestamp;cpu_pct;mem_pct;threads;gpu_util_pct;vram_used_mib"
while true; do
  TS=$(date +"%Y-%m-%dT%H:%M:%S.%3N")
  PS_LINE=$(ps -o %cpu=,%mem=,nlwp= -p "$OLLAMA_PID" | awk '{print $1";"$2";"$3}')
  GPU_LINE=$(nvidia-smi --query-gpu=utilization.gpu,memory.used --format=csv,noheader,nounits | tr -d ' ')
  echo "${TS};${PS_LINE};${GPU_LINE//,/;}"
  sleep 1
done
