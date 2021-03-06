#!/bin/bash

NAME=mnist_mixup
cd ..
python task_launcher.py \
--dataset=mnist \
--arch=architectures/arch_acai_kyle.py \
--save_every=100 \
--save_images_every=100 \
--epochs=2000 \
--resume=auto \
--n_channels=1 \
--ngf=0 \
--ndf=0 \
--name=${NAME} \
--batch_size=64 \
--beta=0.0 \
--lamb=10.0 \
--cls=0.0 \
--save_path=results_mixup \
--mixer=mixup \
--seed=1 \
--classify_encoding='32,10' \
--weight_decay=1e-5 \
--beta1=0.5 \
--beta2=0.99 \
--lr=1e-4
