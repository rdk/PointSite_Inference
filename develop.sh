#!/bin/bash

rm -rf build/ dist/ sparseconvnet.egg-info sparseconvnet_SCN*.so
python setup.py develop
python setup_test.py
