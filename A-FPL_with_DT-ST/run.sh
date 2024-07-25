CUDA_VISIBLE_DEVICES=0 python train_TCR_DTU_fpl_gta.py -cfg configs/deeplabv2_r101_dtst.yaml OUTPUT_DIR outputs_GTA_FPL_noDG resume pretrain/G2C_Pretrain_NO_DG.pth

CUDA_VISIBLE_DEVICES=1 python train_TCR_DTU_fpl_gta.py -cfg configs/deeplabv2_r101_dtst.yaml OUTPUT_DIR outputs_GTA_FPL_DG resume /mnt/workspace/pc.qiao/DT-ST-main/pretrain/G2C_Pretrain_DG.pth

CUDA_VISIBLE_DEVICES=2 python train_TCR_DTU_fpl_syn_noDG.py -cfg configs/deeplabv2_r101_dtst_synthia.yaml OUTPUT_DIR outputs_SYN_FPL_noDG resume pretrain/S2C_Pretrain_NO_DG.pth

CUDA_VISIBLE_DEVICES=3 python train_TCR_DTU_fpl_syn_DG.py -cfg configs/deeplabv2_r101_dtst_synthia.yaml OUTPUT_DIR outputs_SYN_FPL_DG resume pretrain/S2C_Pretrain_DG.pth


