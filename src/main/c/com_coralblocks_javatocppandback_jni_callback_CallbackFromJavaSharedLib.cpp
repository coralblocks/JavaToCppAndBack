#include <iostream>
#include <jni.h>
#include "com_coralblocks_javatocppandback_jni_callback_CallbackFromJava.h"
#include "com_coralblocks_javatocppandback_jni_callback_CallbackFromJavaSharedLib.h"

static callback_func g_callback = nullptr;

void register_callback(callback_func func) {
    g_callback = func;
}

JNIEXPORT void JNICALL Java_com_coralblocks_javatocppandback_jni_1callback_CallbackFromJava_hiFromJava
  (JNIEnv *env, jobject obj, jlong l) {
    if (g_callback) {
        g_callback((long) l); // invoke the callback function
    }
}
