## ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD
# ref: https://www.ros.org/reps/rep-0008.html
# ref: http://docs.ros.org/en/api/catkin/html/howto/format2/installing_python.html
'''
This is used to install python custom package to the install space of catkin workspace
'''
from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=[# 'SC_Depth', 
              # 'SC_DepthV2',
              # 'config',
              # 'config_ros',
              'datasets',
              # 'datasets.custom_transforms',
              # 'datasets.train_folders',
              # 'datasets.test_folders'
              # 'datasets.validation_folders',
              'losses',
              # 'losses.inverse_warp',
              # 'losses.loss_functions',
              'models',
              # 'models.DepthNet',
              # 'models.PoseNet',
              # 'models.RectifyNet',
              # 'models.resnet_encoder',
              # 'visualization'],
    package_dir={'': 'src'},
)
  
setup(**setup_args)


