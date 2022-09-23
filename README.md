# Monocular Navigation
Our work has been accepted by [ICAUS2022](https://icaus2022.scimeeting.cn/cn/web/index/12954_990754__) and our paper is available [here](https://github.com/YongzhouPan/Mono-Navigation).

## Introduction
The repository includes the source code of the autonomous obstacle avoidance system proposed in our paper. The 6-DoF pose estimation and trajectory planning are implemented with [ORB-SLAM2](https://github.com/raulmur/ORB_SLAM2) and [Fast-Planner](https://github.com/HKUST-Aerial-Robotics/Fast-Planner), respectively. Several monocular depth estimation algorithms with distinctive characteristics are applied and evaluated. The experimental results show that both depth accuracy and scale consistency play significant roles in real-world micro-aerial vehicle navigation.

## How to Run
The program includes 5 ROS packages (1, 3, 4, 5, 6) and a ROS package collection (2). The labels of items show the running order. Please click the label to learn more specific details on setup and operation.

## Experimental Configuration
We have tested all the packages on `ROS Melodic` for `Ubuntu 18.04` with a Razer laptop. The CPU of the laptop is *Intel i7-10875H* and the GPU is *NVIDIA GeForce RTX 2070 Super Max-Q*.  The GPU driver version is `450.51.06` and the CUDA version is `11.0`.

## Experimental Video
Please check our experimental video [here](https://space.bilibili.com/1622930364).

## Update
The `README` is an initial version and we will improve it with more details in the coming months.
