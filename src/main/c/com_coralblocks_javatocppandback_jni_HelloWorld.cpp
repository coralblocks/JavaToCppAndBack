#include <iostream>
#include <jni.h>
#include "com_coralblocks_javatocppandback_jni_HelloWorld.h"

using namespace std;

JNIEXPORT void JNICALL Java_com_coralblocks_javatocppandback_jni_HelloWorld_sayHello
  (JNIEnv * env, jobject obj, jint count, jstring msg) {
    const char* cmsg = env->GetStringUTFChars(msg, nullptr);
    for(int i = 0; i < count; i++) {
        cout << "Hello CoralBlocks from JNI! => " << cmsg << endl;
    }
    env->ReleaseStringUTFChars(msg, cmsg);
}