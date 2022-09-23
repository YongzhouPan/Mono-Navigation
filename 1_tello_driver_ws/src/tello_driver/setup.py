#!/usr/bin/env python2

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

setup_args = generate_distutils_setup(
     packages=['tellopy'],
     package_dir={'': 'src/TelloPy'}
)

setup(**setup_args)
