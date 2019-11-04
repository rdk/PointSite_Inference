# PointSite: a point cloud segmentation tool for identification of protein ligand binding atoms
Created by [Zhen Li](https://github.com/icemansina),  [Xu Yan](https://github.com/yanx27) and [Sheng Wang](https://github.com/realbigws)
![](https://raw.githubusercontent.com/PointSite/PointSite_Inference/master/example/pipline.png)
## Preliminary

In order to run this inference tool properly, LIG_Tool must be installed.

```
rmdir LIG_Tool 2> /dev/null
if [ ! -d "LIG_Tool" ]
then
	git clone https://github.com/realbigws/LIG_Tool
fi
```


## Setup

Tested with CUDA 9.0, Ubuntu 18.04, Python 3.6 with [Conda](https://www.anaconda.com/) and PyTorch 1.1.

```
./install.sh
```

## Inference
 ```
python inference.py 
--gpu: GPU index, if you have not GPU, just ignore it
--output: output root (required)
--data: data root, only support .xyz file (required)
--select_list: TXT file for selected protein name, default None
--num_vote: voting number in inference (default 25, larger number can archieve more stable and high performance)
```

## Running example
```
conda activate pointsite_inference
python inference.py --output blind_out --data example/blind --select_list example/blind_list
conda deactivate
```

Note tht the above input data (in '.XYZ' format) contain the ground-truth label of binding atoms. Run below script for identifying binding atoms on unlabeled data in '.PDB' files.
```
./pointsite_run.sh example/blind_list example/blind blind_out `pwd`
```


## Visualization
You will get .obj file in output folder, please use [MeshLab](http://www.meshlab.net/) to visualize.
![predict](https://raw.githubusercontent.com/PointSite/PointSite_Inference/master/example/result.png)

## Reference
[facebookresearch/SparseConvNet](https://github.com/facebookresearch/SparseConvNet/tree/master/)
