#include "jni_bind_release.h"
#include "com_coralblocks_javatocppandback_jni_bind_HelloWorld.h"

// 1: Setup JNI Bind in your OnLoad call (needed only once).
std::unique_ptr < jni::JvmRef < jni::kDefaultJvm >> jvm;

static constexpr jni::Class kClass {
    "com/coralblocks/javatocppandback/jni_bind/HelloWorld",
    jni::Method {
        "sayHello",
        jni::Return < void > {},
        jni::Params < jint , jstring> {}
    }
};

extern "C" {
    JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM * pjvm, void * ) {
        jvm.reset(new jni::JvmRef < jni::kDefaultJvm > (pjvm));
        return JNI_VERSION_1_6;
    }
}

JNIEXPORT void JNICALL Java_com_coralblocks_javatocppandback_jni_1bind_HelloWorld_goToNativeSide
  (JNIEnv *env, jclass klass, jint x, jstring msg) {

    jni::LocalObject < kClass > helloWorld {}; // Constructs new instance.
    helloWorld("sayHello", x, msg);
}

JNIEXPORT void JNICALL Java_com_coralblocks_javatocppandback_jni_1bind_HelloWorld_tearDownJvm
  (JNIEnv *, jclass) {
	jvm = nullptr; // release before exiting the JVM on the Java side...
}

