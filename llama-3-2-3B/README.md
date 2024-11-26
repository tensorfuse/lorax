# How to run on Llama-3.2-3B models on lorax

## create hugging face secret in tensorkube
```
tensorkube secret create hugging-face-secret HUGGING_FACE_HUB_TOKEN=<token>
```
## Deploy using the following command

```
tensorkube deploy --gpus 1 --gpu-type a10g --secret hugging-face-secret --min-scale 1
```