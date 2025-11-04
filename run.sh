export CUDA_VISIBLE_DEVICES=1
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
export PYTORCH_ALLOC_CONF=expandable_segments:True

python -m deepcompressor.app.diffusion.ptq \
    examples/diffusion/configs/model/flux.1-schnell.yaml \
    examples/diffusion/configs/svdquant/int4.yaml \
    examples/diffusion/configs/svdquant/fast.yaml \
    --pipeline-path /simple/black-forest-labs/FLUX.1-schnell/ \
    --save-model true \
    --eval-num-gpus 1 --eval-num-samples 500