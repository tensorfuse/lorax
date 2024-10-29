#!/bin/sh

export PATH=/opt/conda/bin:$PATH
export HUGGINGFACE_HUB_CACHE=/data 
export HF_HUB_ENABLE_HF_TRANSFER=1


aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID && \
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY  && \
aws configure set region us-east-1

mkdir -p /data

nginx && lorax-launcher --json-output --model-id TinyLlama/TinyLlama_v1.1