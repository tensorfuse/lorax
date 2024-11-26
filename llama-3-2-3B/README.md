# How to run on Llama-3.2-3B models on lorax

## create hugging face secret in tensorkube
```
tensorkube secret create hugging-face-secret HUGGING_FACE_HUB_TOKEN=<token>
```
## Deploy using the following command

```
tensorkube deploy --gpus 1 --gpu-type a10g --secret hugging-face-secret --min-scale 1
```

## Query the deployment

Use `tensorkube list deployments` to view the deployed app and get the <URL>. Use the curl command below.


```
curl -X POST "<URL_COMMAND>/generate" \
    -H "Content-Type: application/json" \
    -d '{"inputs": "[INST] Natalia sold clips to 48 of her friends in April, and then she sold half as many clips in May. How many clips did Natalia sell altogether in April and May? [/INST]", "parameters": {"max_new_tokens": 64}}'
```
