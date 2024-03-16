idf_component_register(
	SRCS
		"main.cpp"
		"../tflm-src/examples/micro_speech/micro_speech_test.cc"
		"../tflm-src/examples/micro_speech/models/audio_preprocessor_int8_model_data.cc"
		"../tflm-src/examples/micro_speech/models/micro_speech_quantized_model_data.cc"
		"../tflm-src/examples/micro_speech/testdata/no_1000ms_audio_data.cc"
		"../tflm-src/examples/micro_speech/testdata/no_30ms_audio_data.cc"
		"../tflm-src/examples/micro_speech/testdata/noise_1000ms_audio_data.cc"
		"../tflm-src/examples/micro_speech/testdata/silence_1000ms_audio_data.cc"
		"../tflm-src/examples/micro_speech/testdata/yes_1000ms_audio_data.cc"
		"../tflm-src/examples/micro_speech/testdata/yes_30ms_audio_data.cc"

	INCLUDE_DIRS
		"."
		"../tflm-src"
		"../tflm-src/third_party/gemmlowp"
		"../tflm-src/third_party/flatbuffers/include"
		"../tflm-src/third_party/kissfft"
		"../tflm-src/third_party/kissfft/tools"
		"../tflm-src/third_party/ruy"
		"../tflm-src/examples/micro_speech"
)

add_definitions(
	-std=c++11
	-fno-rtti
	-fno-exceptions
	-fno-threadsafe-statics
	-DTF_LITE_STATIC_MEMORY
	-fno-unwind-tables
	-ffunction-sections
	-fdata-sections
	-fmessage-length=0
)

target_link_libraries(
	${COMPONENT_LIB}
	INTERFACE "${CMAKE_CURRENT_LIST_DIR}/../tflm-src/gen/libtflm.a"
)
