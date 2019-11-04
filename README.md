# PointSite Inference Tool
## Setup

Tested with CUDA 10.0, Ubuntu 18.04, Python 3.6 with [Conda](https://www.anaconda.com/) and PyTorch 1.1.0.

```
# Install related library, e.g
conda create --name pointsite python=3.6
source activate pointsite
pip install torch==1.1.0 # See https://pytorch.org/get-started/locally/
git clone https://github.com/PointSite/PointSite_Inference.git
cd PointSite_Inference/
bash develop.sh
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
