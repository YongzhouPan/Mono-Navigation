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
    packages=['packnet_sfm', 
              'packnet_sfm.datasets',
              'packnet_sfm.geometry',
              'packnet_sfm.loggers',
              'packnet_sfm.losses',
              'packnet_sfm.models',
              'packnet_sfm.networks.depth',
              'packnet_sfm.networks.layers.packnet',
              'packnet_sfm.networks.layers.resnet',
              'packnet_sfm.networks.pose',
              'packnet_sfm.trainers',
              'packnet_sfm.utils',
              'trt_packnet',
              'configs'],
    package_dir={'': 'src'},
)
  
setup(**setup_args)