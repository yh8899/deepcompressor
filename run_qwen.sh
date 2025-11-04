export CUDA_VISIBLE_DEVICES=3
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
export PYTORCH_ALLOC_CONF=expandable_segments:True

python -m deepcompressor.app.diffusion.ptq \
    examples/diffusion/configs/model/qwen-image.yaml \
    examples/diffusion/configs/svdquant/int4.yaml \
    examples/diffusion/configs/svdquant/fast.yaml \
    --pipeline-path /simple/Qwen/Qwen-Image \
    --skip-eval true \
    --save-model true