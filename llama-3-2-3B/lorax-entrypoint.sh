#!/bin/sh

export PATH=/opt/conda/bin:$PATH
export HUGGINGFACE_HUB_CACHE=data 
export HF_HUB_ENABLE_HF_TRANSFER=1


aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID && \
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY  && \
aws configure set region us-east-1

unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
# The above steps will be unnecessary once we ship ISRA 

sleep 1

mkdir -p data

ln -s /usr/lib64/libcuda.so.1 /usr/lib64/libcuda.so

nginx && lorax-launcher --json-output --model-id meta-llama/Llama-3.2-3B --port 3000