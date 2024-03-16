# Tensorflow Lite Micro For ESP32C3
This project can run tflite-micro on ESP32C3

## ESP-IDF version
```shell
idf.py --version
ESP-IDF v5.2.1-76-gbf17be96b4
```

## Build
```shell
git clone git@github.com:huxiangjs/tflite-micro-for-esp32c3.git
cd tflite-micro-for-esp32c3/
idf.py set-target esp32c3
idf.py menuconfig
idf.py build
idf.py flash
```

## Steps to generate and build tflm
Note: Make sure that the following operations are run in a real Linux environment!
```shell
cd tflite-micro-for-esp32c3/
git submodule update --init --recursive
./generate_tflm.sh
```

## Build static library
Note: Make sure that the following operations are run in a real Linux environment!
```shell
cd tflm-src/
make -j4 CROSS_TOOLS_PATH=<your path>
```
output: gen/libtflm.a

