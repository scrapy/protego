#!/usr/bin/env python
from setuptools import setup, find_packages

setup(name='Protego',
      version='0.1dev',
      description='Pure-Python robots.txt parser with support for modern conventions',
      author='Anubhav Patel',
      author_email='anubhavp28@gmail.com',
      package_dir={'': 'src'},
      packages=find_packages('src'),
      py_modules=['protego'],
      python_requires='>=2.7, !=3.0.*, !=3.1.*, !=3.2.*, !=3.3.*',
      install_requires=['six'],
      tests_require=['pytest'],
      )
