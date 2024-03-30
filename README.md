# Tensorflow Lite Micro For ESP32C3
This project can run tflite-micro on ESP32C3. (Run micro_speech to test)

## ESP-IDF version
```shell
idf.py --version
ESP-IDF v5.2.1-76-gbf17be96b4
```

## Build
```shell
git clone https://github.com/huxiangjs/tflite-micro-for-esp32c3.git
cd tflite-micro-for-esp32c3/
git submodule update --init --recursive
idf.py set-target esp32c3
idf.py menuconfig
idf.py build
idf.py flash
```

## How to use it in your project
```shell
cd <your project>
mkdir -p components
cd components
git clone --recursive https://github.com/huxiangjs/tflite-micro-components-for-esp32c3.git tflm
```

## The impact of static libraries compiled by different compilers on speed

| Optimization level | Cross Tool | Time cost |
| ------------------ | ---------- | --------- |
| default | esp-2021r2-patch5-8.4.0 | 780ms+350ms |
| default | esp-13.2.0_20230928 | 810ms+340ms |
| -Ofast | esp-2021r2-patch5-8.4.0 | 160ms+140ms |
| -Ofast | esp-13.2.0_20230928 | 200ms+150ms |

So, esp-2021r2-patch5-8.4.0 should be used and -Ofast optimization should be enabled.
