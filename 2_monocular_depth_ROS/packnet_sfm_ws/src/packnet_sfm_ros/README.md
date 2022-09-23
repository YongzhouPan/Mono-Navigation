# How to prepare TensorRT model
We need to convert packnet weight (e.g. packnet.ckpt) to .ONNX format and then convert it to .trt format

Tested with `Ubuntu 18.04 LTS`, `python 3.6.9`, `TensorRT-7.1.3.4`, `PyTorch 1.4.0`, `Cuda 11.0` and `CuDNN 8.0.5`

NOTE: I tried with Pytorch 1.8.1 with CUDA 11.1 doesn't work

1) TensorRT can be installed following this [guide](https://docs.nvidia.com/deeplearning/tensorrt/install-guide/index.html#installing-tar). Note that `onnx` and `onnx-graphsurgeon` need to be installed with pip3

```bash
pip3 install onnx
pip3 install nvidia-pyindex
pip3 install onnx-graphsurgeon
```

2) `packnet_to_onnx.py`
   -   change `CKPT_FILE_PATH` to `/path/to/weight.ckpt`
   -   change `MODEL_NAME`
   -   change dimension of `NET_INPUT_W` and `NET_INPUT_H` to the network input size 

3) `onnx_to_trt.py`
   -   change `ONNX_FILE_PATH` to `/path/to/model.onnx`
   -   change `MODEL_NAME`
   -   change `MAX_GPU_MEM` (in GBs)
   -   change `MAX_BATCH_SIZE`, but it's usually `1`
   -   change dimension of `NET_INPUT_W` and `NET_INPUT_H` to the network input size 
   Note: it usually takes around 4 mins to run this program
   
``` bash
source install/setup.bash --extend 
cd ~/packnet_ws/src/packnet_sfm_ros/src/trt_packnet/src

# to make onnx file
python3 packnet_to_onnx.py

# to make trt file
python3 packnet_to_onnx.py
```
   
3) `trt_packnet_node`
   -   change `TRT_FILE_PATH` to `/path/to/weight.trt`
   -   change `NET_INPUT_H_W`



# NOTE

Use align_corners=False when doing upsampling. Follow this [link](https://machinethink.net/blog/coreml-upsampling/)

## Pre-requisite
1) Configure ROS to be able to use with Python3 and cv_bridge following this [link](https://medium.com/@beta_b0t/how-to-setup-ros-with-python-3-44a69ca36674)
```bash
sudo apt-get install python3-pip python3-yaml
sudo pip3 install rospkg catkin_pkg
sudo apt-get install python-catkin-tools python3-dev python3-numpy

# Install cv_bridge for python3
cd 
mkdir -p packnet_ws/src
cd packnet_ws/src
git clone -b melodic https://github.com/ros-perception/vision_opencv.git

# Config the workspace to work with python3
cd ~/packnet_ws
catkin config -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.6m -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so
catkin config --install
catkin build

# we need to always source this directory, after building
source install/setup.bash --extend 
```

2) Install some dependencies
> pytorch: [link](https://pytorch.org/get-started/locally/)

> yacs, matplotlib, termcolor, horovod, tqdm, wandb (basically everything with ModuleNotFoundError)

```pip3 install yacs matplotlib termcolor horovod tqdm wandb```

## Quick Start
1) Download packnet_sfm_ros repro
```bash
cd ~/packnet_ws/src
git clone https://github.com/surfii3z/packnet_sfm_ros.git
```

2) Download the pre-train model to packnet_sfm_ros/src/packnet_sfm/trained_models
```bash
cd ~/packnet_ws/src/packnet_sfm_ros
mkdir trained_models
cd trained_models

# For example: download PackNet, Self-Supervised Scale-Aware, 192x640, CS → K
wget https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_MR_velsup_CStoK.ckpt
```
3) Change the model name in this [line](https://github.com/surfii3z/packnet_sfm_ros/blob/1e07bfc83ef1e7946644f33d69e3805452898113/ros/packnet_sfm_node#L27) of the packnet_sfm_node file

4) Build the package
```bash

catkin build
```

5) Try to run the node
```bash
rosrun packnet_sfm_ros packnet_sfm_node
```

# Results

1) Kitti Odom seq 09 with 7DOF alignment with the ground truth (click the picture to go to the result video)

<a href="https://youtu.be/QPy7ygm_McE" target="_blank">
<img align="center" src="/media/figs/odometry_vs_GT_with_a_s_option.png" width="50%"/>
</a>

___________________________________________________________________________________________________________________
# BELOW IS THE ORIGINAL README from the original repo
## PackNet-SfM: 3D Packing for Self-Supervised Monocular Depth Estimation

[Install](#install) // [Datasets](#datasets) // [Training](#training) // [Evaluation](#evaluation) // [Models](#models) // [License](#license) // [References](#references)

<a href="https://www.tri.global/" target="_blank">
 <img align="right" src="/media/figs/tri-logo.png" width="20%"/>
</a>

<a href="https://www.youtube.com/watch?v=b62iDkLgGSI" target="_blank">
<img width="60%" src="/media/figs/packnet-ddad.gif"/>
</a>

Official [PyTorch](https://pytorch.org/) implementation of _self-supervised_ monocular depth estimation methods invented by the ML Team at [Toyota Research Institute (TRI)](https://www.tri.global/), in particular for _PackNet_: [**3D Packing for Self-Supervised Monocular Depth Estimation (CVPR 2020 oral)**](https://arxiv.org/abs/1905.02693),
*Vitor Guizilini, Rares Ambrus, Sudeep Pillai, Allan Raventos and Adrien Gaidon*.
Although self-supervised (i.e. trained only on monocular videos), PackNet outperforms other self, semi, and fully supervised methods. Furthermore, it gets better with input resolution and number of parameters, generalizes better, and can run in real-time (with TensorRT). See [References](#references) for more info on our models.

## Install

You need a machine with recent Nvidia drivers and a GPU with at least 6GB of memory (more for the bigger models at higher resolution). We recommend using docker (see [nvidia-docker2](https://github.com/NVIDIA/nvidia-docker) instructions) to have a reproducible environment. To setup your environment, type in a terminal (only tested in Ubuntu 18.04):

```bash
git clone https://github.com/TRI-ML/packnet-sfm.git
cd packnet-sfm
# if you want to use docker (recommended)
make docker-build
```

We will list below all commands as if run directly inside our container. To run any of the commands in a container, you can either start the container in interactive mode with `make docker-start-interactive` to land in a shell where you can type those commands, or you can do it in one step:

```bash
# single GPU
make docker-run COMMAND="some-command"
# multi-GPU
make docker-run-mpi COMMAND="some-command"
```

For instance, to verify that the environment is setup correctly, you can run a simple overfitting test:

```bash
# download a tiny subset of KITTI
curl -s https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/KITTI_tiny.tar | tar xv -C /data/datasets/
# in docker
make docker-run COMMAND="python3 scripts/train.py configs/overfit_kitti.yaml"
```

If you want to use features related to [AWS](https://aws.amazon.com/) (for dataset access)
and [Weights & Biases (WANDB)](https://www.wandb.com/) (for experiment management/visualization), then you should create associated accounts and configure your shell with the following environment variables:

```bash
export AWS_SECRET_ACCESS_KEY="something"
export AWS_ACCESS_KEY_ID="something"
export AWS_DEFAULT_REGION="something"
export WANDB_ENTITY="something"
export WANDB_API_KEY="something"
```

To enable WANDB logging and AWS checkpoint syncing, you can then set the corresponding configuration parameters in `configs/<your config>.yaml` (cf. [configs/default_config.py](./configs/default_config.py) for defaults and docs):

```yaml
wandb:
    dry_run: True                                 # Wandb dry-run (not logging)
    name: ''                                      # Wandb run name
    project: os.environ.get("WANDB_PROJECT", "")  # Wandb project
    entity: os.environ.get("WANDB_ENTITY", "")    # Wandb entity
    tags: []                                      # Wandb tags
    dir: ''                                       # Wandb save folder
checkpoint:
    s3_path: ''       # s3 path for AWS model syncing
    s3_frequency: 1   # How often to s3 sync
```

If you encounter out of memory issues, try a lower `batch_size` parameter in the config file.

NB: if you would rather not use docker, you could create a [conda](https://docs.conda.io/en/latest/) environment via following the steps in the Dockerfile and mixing `conda` and `pip` at your own risks...

## Datasets

Datasets are assumed to be downloaded in `/data/datasets/<dataset-name>` (can be a symbolic link).

### Dense Depth for Autonomous Driving (DDAD)

Together with PackNet, we introduce **Dense Depth for Automated Driving** ([DDAD](https://github.com/TRI-ML/DDAD)): a new dataset that leverages diverse logs from TRI's fleet of well-calibrated self-driving cars equipped with cameras and high-accuracy long-range LiDARs.  Compared to existing benchmarks, DDAD enables much more accurate 360 degree depth evaluation at range, see the official [DDAD repository](https://github.com/TRI-ML/DDAD) for more info and instructions. You can also download DDAD directly via:

```bash
curl -s https://tri-ml-public.s3.amazonaws.com/github/DDAD/datasets/DDAD.tar | tar -xv -C /data/datasets/
```

### KITTI

The KITTI (raw) dataset used in our experiments can be downloaded from the [KITTI website](http://www.cvlibs.net/datasets/kitti/raw_data.php).
For convenience, we provide the standard splits used for training and evaluation: [eigen_zhou](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/splits/KITTI/eigen_zhou_files.txt), [eigen_train](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/splits/KITTI/eigen_train_files.txt), [eigen_val](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/splits/KITTI/eigen_val_files.txt) and [eigen_test](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/splits/KITTI/eigen_test_files.txt), as well as pre-computed ground-truth depth maps: [original](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw_velodyne.tar.gz) and [improved](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw_groundtruth.tar.gz).
The full KITTI_raw dataset, as used in our experiments, can be directly downloaded [here](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/KITTI_raw.tar.gz) or with the following command:

```bash
# KITTI_raw
curl -s https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/KITTI_raw.tar | tar -xv -C /data/datasets/
```

### Tiny DDAD/KITTI

For simple tests, we also provide a "tiny" version of [DDAD](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/DDAD_tiny.tar) and [KITTI](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/KITTI_tiny.tar):

```bash
# DDAD_tiny
curl -s https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/DDAD_tiny.tar | tar -xv -C /data/datasets/
# KITTI_tiny
curl -s https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/datasets/KITTI_tiny.tar | tar -xv -C /data/datasets/
```

## Training

PackNet can be trained from scratch in a fully self-supervised way (from video only, cf. [CVPR'20](#cvpr-packnet)), in a semi-supervised way (with sparse lidar using our reprojected 3D loss, cf. [CoRL'19](#corl-ssl)), and it can also use a fixed pre-trained semantic segmentation network to guide the representation learning further (cf. [ICLR'20](#iclr-semguided)).

Any training, including fine-tuning, can be done by passing either a `.yaml` config file or a `.ckpt` model checkpoint to [scripts/train.py](./scripts/train.py):

```bash
python3 scripts/train.py <config.yaml or checkpoint.ckpt>
```

If you pass a config file, training will start from scratch using the parameters in that config file. Example config files are in [configs](./configs).
If you pass instead a `.ckpt` file, training will continue from the current checkpoint state.

Note that it is also possible to define checkpoints within the config file itself. These can be done either individually for the depth and/or pose networks or by defining a checkpoint to the model itself, which includes all sub-networks (setting the model checkpoint will overwrite depth and pose checkpoints). In this case, a new training session will start and the networks will be initialized with the model state in the `.ckpt` file(s). Below we provide the locations in the config file where these checkpoints are defined:

```yaml
checkpoint:
    # Folder where .ckpt files will be saved during training
    filepath: /path/to/where/checkpoints/will/be/saved
model:
    # Checkpoint for the model (depth + pose)
    checkpoint_path: /path/to/model.ckpt
    depth_net:
        # Checkpoint for the depth network
        checkpoint_path: /path/to/depth_net.ckpt
    pose_net:
        # Checkpoint for the pose network
        checkpoint_path: /path/to/pose_net.ckpt
```

Every aspect of the training configuration can be controlled by modifying the yaml config file. This include the model configuration (self-supervised, semi-supervised, loss parameters, etc), depth and pose networks configuration (choice of architecture and different parameters), optimizers and schedulers (learning rates, weight decay, etc), datasets (name, splits, depth types, etc) and much more. For a comprehensive list please refer to [configs/default_config.py](./configs/default_config.py).

## Evaluation

Similar to the training case, to evaluate a trained model (cf. above or our [pre-trained models](#models)) you need to provide a `.ckpt` checkpoint, followed optionally by a `.yaml` config file that overrides the configuration stored in the checkpoint.

```bash
python3 scripts/eval.py --checkpoint <checkpoint.ckpt> [--config <config.yaml>]
```

You can also directly run inference on a single image or folder:

```bash
python3 scripts/infer.py --checkpoint <checkpoint.ckpt> --input <image or folder> --output <image or folder> [--image_shape <input shape (h,w)>]
```

## Models

### DDAD

| Model | Abs.Rel. | Sqr.Rel | RMSE | RMSElog | d < 1.25 |
| :--- | :---: | :---: | :---: |  :---: |  :---: |
| _ResNet18, Self-Supervised, 384x640, ImageNet &rightarrow; DDAD (D)_ | _0.213_ | _4.975_ | _18.051_ | _0.340_ | _0.761_ |
| _PackNet,  Self-Supervised, 384x640, DDAD (D)_ | _0.162_ | _3.917_ | _13.452_ | _0.269_ | _0.823_ |
| [ResNet18, Self-Supervised, 384x640, ImageNet &rightarrow; DDAD (D)](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/ResNet18_MR_selfsup_D.ckpt)* | 0.227 | 11.293 | 17.368 | 0.303 | 0.758 |
| [PackNet,  Self-Supervised, 384x640, DDAD (D)](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_MR_selfsup_D.ckpt)* | 0.173 | 7.164 | 14.363 | 0.249 | 0.835 |

*: Note that this repository's results differ slightly from the ones reported in our [CVPR'20 paper](https://arxiv.org/abs/1905.02693) (first two rows), although conclusions are the same. Since CVPR'20, we have officially released an updated [DDAD dataset](https://github.com/TRI-ML/DDAD) to account for privacy constraints and improve scene distribution. Please use the latest numbers when comparing to the official DDAD release.

### KITTI

| Model | Abs.Rel. | Sqr.Rel | RMSE | RMSElog | d < 1.25 |
| :--- | :---: | :---: | :---: |  :---: |  :---: |
| [ResNet18, Self-Supervised, 192x640, ImageNet &rightarrow; KITTI (K)](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/ResNet18_MR_selfsup_K.ckpt) | 0.116 | 0.811 | 4.902 | 0.198 | 0.865 |
| [PackNet, Self-Supervised, 192x640, KITTI (K)](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_MR_selfsup_K.ckpt) | 0.111 | 0.800 | 4.576 | 0.189 | 0.880 |
| [PackNet, Self-Supervised Scale-Aware, 192x640, CS &rightarrow; K](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_MR_velsup_CStoK.ckpt) | 0.108 | 0.758 | 4.506 | 0.185 | 0.887 |
| [PackNet, Self-Supervised Scale-Aware, 384x1280, CS &rightarrow; K](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_HR_velsup_CStoK.ckpt) | 0.106 | 0.838 | 4.545 | 0.186 | 0.895 |
| [PackNet, Semi-Supervised (densified GT), 192x640, CS &rightarrow; K](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_MR_semisup_CStoK.ckpt) | 0.072 | 0.335 | 3.220 | 0.115 | 0.934 |

All experiments followed the [Eigen et al.](https://arxiv.org/abs/1406.2283) protocol for [training](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/splits/KITTI/eigen_zhou_files.txt) and [evaluation](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/splits/KITTI/eigen_test_files.txt), with [Zhou et al](https://people.eecs.berkeley.edu/~tinghuiz/projects/SfMLearner/)'s preprocessing to remove static training frames. The PackNet model pre-trained on Cityscapes  used for fine-tuning on KITTI can be found [here](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/models/PackNet01_MR_selfsup_CS.ckpt).

### Precomputed Depth Maps

For convenience, we also provide pre-computed depth maps for supervised training and evaluation:

- PackNet, Self-Supervised Scale-Aware, 192x640, CS &rightarrow; K |
[eigen_train_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_train_files/KITTI_raw-eigen_train_files-PackNet01_MR_velsup_CStoK.tar.gz) |
[eigen_zhou_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_zhou_files/KITTI_raw-eigen_zhou_files-PackNet01_MR_velsup_CStoK.tar.gz) |
[eigen_val_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_val_files/KITTI_raw-eigen_val_files-PackNet01_MR_velsup_CStoK.tar.gz) |
[eigen_test_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_test_files/KITTI_raw-eigen_test_files-PackNet01_MR_velsup_CStoK.tar.gz) |

- PackNet, Semi-Supervised (densified GT), 192x640, CS &rightarrow; K |
[eigen_train_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_train_files/KITTI_raw-eigen_train_files-PackNet01_MR_semisup_CStoK.tar.gz) |
[eigen_zhou_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_zhou_files/KITTI_raw-eigen_zhou_files-PackNet01_MR_semisup_CStoK.tar.gz) |
[eigen_val_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_val_files/KITTI_raw-eigen_val_files-PackNet01_MR_semisup_CStoK.tar.gz) |
[eigen_test_files](https://tri-ml-public.s3.amazonaws.com/github/packnet-sfm/depth_maps/KITTI_raw/eigen_test_files/KITTI_raw-eigen_test_files-PackNet01_MR_semisup_CStoK.tar.gz) |

## License

The source code is released under the [MIT license](LICENSE.md).

## References

[**PackNet**](#cvpr-packnet) relies on symmetric packing and unpacking blocks to jointly learn to compress and decompress detail-preserving representations using 3D convolutions. It also uses depth superresolution, which we introduce in [SuperDepth (ICRA 2019)](#icra-superdepth). Our network can also output metrically scaled depth thanks to our weak velocity supervision ([CVPR 2020](#cvpr-packnet)).

We also experimented with sparse supervision from as few as 4-beam LiDAR sensors, using a novel reprojection loss that minimizes distance errors in the image plane ([CoRL 2019](#corl-ssl)). By enforcing a sparsity-inducing data augmentation policy for ego-motion learning, we were also able to effectively regularize the pose network and enable stronger generalization performance ([CoRL 2019](#corl-pose)). In a follow-up work, we propose the injection of semantic information directly into the decoder layers of the depth networks, using pixel-adaptive convolutions to create semantic-aware features and further improve performance ([ICLR 2020](#iclr-semguided)).

Depending on the application, please use the following citations when referencing our work:

<a id="cvpr-packnet"> </a>
**3D Packing for Self-Supervised Monocular Depth Estimation (CVPR 2020 oral)** \
*Vitor Guizilini, Rares Ambrus, Sudeep Pillai, Allan Raventos and Adrien Gaidon*, [**[paper]**](https://arxiv.org/abs/1905.02693), [**[video]**](https://www.youtube.com/watch?v=b62iDkLgGSI)

```
@inproceedings{packnet,
  author = {Vitor Guizilini and Rares Ambrus and Sudeep Pillai and Allan Raventos and Adrien Gaidon},
  title = {3D Packing for Self-Supervised Monocular Depth Estimation},
  booktitle = {IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
  primaryClass = {cs.CV}
  year = {2020},
}
```

<a id="iclr-semguided"> </a>
**Semantically-Guided Representation Learning for Self-Supervised Monocular Depth (ICLR 2020)** \
*Vitor Guizilini, Rui Hou, Jie Li, Rares Ambrus and Adrien Gaidon*, [**[paper]**](https://arxiv.org/abs/2002.12319)

```
@inproceedings{packnet-semguided,
  author = {Vitor Guizilini and Rui Hou and Jie Li and Rares Ambrus and Adrien Gaidon},
  title = {Semantically-Guided Representation Learning for Self-Supervised Monocular Depth},
  booktitle = {International Conference on Learning Representations (ICLR)}
  month = {April},
  year = {2020},
}
```

<a id="corl-ssl"> </a>
**Robust Semi-Supervised Monocular Depth Estimation with Reprojected Distances (CoRL 2019 spotlight)** \
*Vitor Guizilini, Jie Li, Rares Ambrus, Sudeep Pillai and Adrien Gaidon*, [**[paper]**](https://arxiv.org/abs/1910.01765),[**[video]**](https://www.youtube.com/watch?v=cSwuF-XA4sg)

```
@inproceedings{packnet-semisup,
  author = {Vitor Guizilini and Jie Li and Rares Ambrus and Sudeep Pillai and Adrien Gaidon},
  title = {Robust Semi-Supervised Monocular Depth Estimation with Reprojected Distances},
  booktitle = {Conference on Robot Learning (CoRL)}
  month = {October},
  year = {2019},
}
```

<a id="corl-pose"> </a>
**Two Stream Networks for Self-Supervised Ego-Motion Estimation (CoRL 2019 spotlight)** \
*Rares Ambrus, Vitor Guizilini, Jie Li, Sudeep Pillai and Adrien Gaidon*, [**[paper]**](https://arxiv.org/abs/1910.01764)

```
@inproceedings{packnet-twostream,
  author = {Rares Ambrus and Vitor Guizilini and Jie Li and Sudeep Pillai and Adrien Gaidon},
  title = {{Two Stream Networks for Self-Supervised Ego-Motion Estimation}},
  booktitle = {Conference on Robot Learning (CoRL)}
  month = {October},
  year = {2019},
}
```

<a id="icra-superdepth"> </a>
**SuperDepth: Self-Supervised, Super-Resolved Monocular Depth Estimation (ICRA 2019)** \
*Sudeep Pillai, Rares Ambrus and Adrien Gaidon*, [**[paper]**](https://arxiv.org/abs/1810.01849), [**[video]**](https://www.youtube.com/watch?v=jKNgBeBMx0I&t=33s)

```
@inproceedings{superdepth,
  author = {Sudeep Pillai and Rares Ambrus and Adrien Gaidon},
  title = {SuperDepth: Self-Supervised, Super-Resolved Monocular Depth Estimation},
  booktitle = {IEEE International Conference on Robotics and Automation (ICRA)}
  month = {May},
  year = {2019},
}
```
