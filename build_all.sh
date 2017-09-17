#!/bin/bash
# Build TGPKernel for MM
git checkout tw601
./build.sh 7
./build.sh 0

# Build TGPKernel for N
git checkout tw70
./build.sh 7
./build.sh 0

