## Getting Started

### Data Preparation
##### Download the data (VOC, Cityscapes) and pre-trained models:

```
DATA/
|-- city
|-- pascal_voc
|-- pytorch-weight
|   |-- resnet50_v1c.pth
|   |-- resnet101_v1c.pth
```


### For CPS+FPL (e.g., VOC dataset)

```shell
$ cd ./FPL_based_on_CPS/exp.voc/voc.res101v3+.CPS+CutMix+FPL
$ bash script_FPL.sh
```
##### You may need:
- Adapt data and model path in `config_FPL.py`.
- Specify some variables(e.g., the path to your snapshot dir) in `script_FPL.sh`.
- Change ***C.labeled_ratio*** in `config_FPL.py` for other data partitions.
- The core contribution of FPL is the ***topk_ce_FPL*** function in `train_FPL.py`.


### For AEL+FPL (e.g., Cityscapes dataset)
```shell
$ cd ./FPL_based_on_AEL/experiments/cityscapes_2
$ bash train.sh
```
##### You may need:
- Adapt data path in `config.yaml`.
- Adapt model path in `./FPL_based_on_AEL/semseg/models/resnet.py`.
- Change ***n_sup*** in `config.yaml` for other data partitions.
- The core contribution of FPL is the ***topk_ce_FPL*** function in `./FPL_based_on_AEL/semseg/utils/loss_helper_topk.py`.
