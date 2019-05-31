#!/bin/bash

cd ..
#source activate pytorch-env

NAME=10_mnist_acaif-mse_g16_frontal_bid_lamb2_inorm_32d_kyle_faithful_sn
python task_launcher.py \
--model=acaif \
--dataset=mnist \
--arch=architectures/arch_acai_kyle.py \
--save_every=100 \
--save_images_every=100 \
--epochs=1500 \
--resume=auto \
--n_channels=1 \
--ngf=0 \
--ndf=0 \
--name=${NAME} \
--batch_size=64 \
--beta=0.0 \
--lamb=2.0 \
--cls=0.0 \
--save_path=results_mixup \
--mixer=mixup \
--seed=1 \
--cls_probe=architectures/cls_probes/linear_legacy.py \
--cls_probe_args="{'n_in': 32, 'n_classes':10}" \
--weight_decay=1e-5 \
--beta1=0.5 \
--beta2=0.99 \
--lr=1e-4 \
--gan_loss=mse
