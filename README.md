# PointSite Inference Tool

## Preliminary

In order to run this inference tool properly, LIG_Tool must be installed.

```
rmdir LIG_Tool 1>ws1 2>ws2
if [ ! -d "LIG_Tool" ]
then
	git clone https://github.com/realbigws/LIG_Tool
fi
rm -f ws1 ws2
```


## Setup

<<<<<<< HEAD
Tested with CUDA 9.0, Ubuntu 18.04, Python 3.6 with [Conda](https://www.anaconda.com/) and PyTorch 1.1.

```
./install.sh
=======
Tested with CUDA 10.0, Ubuntu 18.04, Python 3.6 with [Conda](https://www.anaconda.com/) and PyTorch 1.1.0.

```
# Install related library, e.g
conda create --name pointsite python=3.6
source activate pointsite
pip install torch==1.1.0 # See https://pytorch.org/get-started/locally/
git clone https://github.com/PointSite/PointSite_Inference.git
cd PointSite_Inference/
bash develop.sh
>>>>>>> 0d7ef18330a7e1db1c81eb9cbc418869d1c7e945
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
## Visualization
You will get .obj file in output folder, please use [MeshLab](http://www.meshlab.net/) to visualize.
![predict](pic/result.png)

## Reference
[facebookresearch/SparseConvNet](https://github.com/facebookresearch/SparseConvNet/tree/master/)
