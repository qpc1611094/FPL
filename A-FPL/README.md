# Adaptive Fuzzy Positive Learning for Annotation-Scarce Semantic Segmentation
This is an implementation of A-FPL (IJCV2024), and this code repository is based on that of [DT-ST](https://github.com/DZhaoXd/DT-ST).



### Environment

```bash
Set-up the enviroment following the instruction from the original DT-ST repo.
```

### Getting started
Data:
- Download [The Cityscapes Dataset]( https://www.cityscapes-dataset.com/ )

The data folder should be structured as follows:
```
├── datasets/
│   ├── cityscapes/     
|   |   ├── gtFine/
|   |   ├── leftImg8bit/		
...
```
Pretrain models:
- Download pretrained model on GTA5: ([GTA5_NO_DG](https://drive.google.com/file/d/1C_SC1_Ne1r3iqKxjY17wKVHQLRaBq5hT/view?usp=drive_link)) and ([GTA5_DG](https://drive.google.com/file/d/1fZ1uAPxUxPaWQrjBwZ6qkwsY3n2odqYd/view?usp=drive_link)) 
- Download pretrained model on SYNTHIA: ([SYNTHIA_NO_DG](https://drive.google.com/file/d/1380-cAcVxIgyhKWHtf5IGkGbdQGZ7Gzb/view?usp=drive_link)) and ([SYNTHIA_DG](https://drive.google.com/file/d/1_EhjzkcVClC_cjnar6r_tnpU3ZMB8nXG/view?usp=drive_link)) 

Then, put these *.pth into the pretrain folder.

### Train
```
python train_TCR_DTU_fpl_gta.py -cfg configs/deeplabv2_r101_dtst.yaml OUTPUT_DIR outputs_GTA_FPL_noDG resume pretrain/G2C_Pretrain_NO_DG.pth
```


### Evaluate
```
python test.py -cfg configs/deeplabv2_r101_dtst.yaml resume results/outputs_GTA_FPL_noDG/model_iter020000.pth
```

### Acknowledge
Some codes are adapted from [DT-ST](https://github.com/DZhaoXd/DT-ST), [FADA](https://github.com/JDAI-CV/FADA#classes-matter-a-fine-grained-adversarial-approach-to-cross-domain-semantic-segmentation-eccv-2020),  [SAC](https://github.com/visinf/da-sac) and [DSU](https://github.com/lixiaotong97/DSU). Thank them for their excellent works.




