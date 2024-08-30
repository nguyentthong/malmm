checkpoint_path=/mnt/hdd/Thong/MA-LMM/lavis/output/coin_cls/blip2_vicuna_instruct_vicuna7b/train/b16_e20_lr0.0001_wd0.05_q32_f100_fb20_freezevit/checkpoint_best.pth
torchrun --nproc_per_node=4 \
    --master_port=34651 \
    train.py \
    --cfg-path lavis/projects/malmm/cls_coin.yaml \
    --options \
    model.arch blip2_vicuna_instruct \
    model.model_type vicuna7b \
    model.load_finetuned False \
    model.load_pretrained True \
    model.num_query_token 32 \
    model.vit_precision fp16 \
    model.freeze_vit True \
    model.memory_bank_length 20 \
    model.num_frames 100 \
    run.init_lr 1e-4 \
    run.max_epoch 20 \
    run.num_beams 5 \
    run.batch_size_train 16 \
    run.batch_size_eval 16 \
    run.accum_grad_iters 1 \
    run.num_workers 12 \
    run.seed 42 \
    run.evaluate True \
    run.report_metric True \
    run.prefix test \
    run.resume_ckpt_path ${checkpoint_path}

