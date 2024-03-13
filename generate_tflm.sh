#!/bin/sh -e

cd tflite-micro/
python3 tensorflow/lite/micro/tools/project_generation/create_tflm_tree.py --print_src_files --print_dest_files --examples micro_speech ../tflm-src
cp tensorflow/lite/micro/tools/project_generation/Makefile ../tflm-src
cd ../tflm-src
# make
# make micro_speech

echo "Done."

