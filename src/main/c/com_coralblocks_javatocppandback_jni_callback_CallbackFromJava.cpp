#include <iostream>
#include <jni.h>
#include "com_coralblocks_javatocppandback_jni_callback_CallbackFromJavaSharedLib.h"

using namespace std;

void hi_from_java(long l) {
    cout << "Received callback from Java: " << l << endl;
}

int main(int argc, char **argv) {

    int x = std::stoi(argv[1]);

    JavaVM *jvm;                       // Pointer to the JVM (Java Virtual Machine)
    JNIEnv *env;                       // Pointer to native interface
    JavaVMInitArgs vm_args;            // JVM initialization arguments
    JavaVMOption options[2];           // JVM options

    options[0].optionString = "-Djava.class.path=classes";  // Set the path to the bytecode file
    options[1].optionString = "-Djava.library.path=lib/jni";  // Set the path to the bytecode file
    vm_args.version = JNI_VERSION_1_6;                      // Set the JNI version
    vm_args.nOptions = 2;                                   // Set the number of options
    vm_args.options = options;                              // Set the options to the JVM
    
    // Load and initialize the JVM
    JNI_CreateJavaVM(&jvm, (void**)&env, &vm_args);

    // Instantiate the CallbackFromJava object
    jclass callbackFromJavaClass = env->FindClass("com/coralblocks/javatocppandback/jni_callback/CallbackFromJava");
    jmethodID callbackFromJavaConstructor = env->GetMethodID(callbackFromJavaClass, "<init>", "(I)V");
    jobject callbackFromJavaObject = env->NewObject(callbackFromJavaClass, callbackFromJavaConstructor, (jint) x);

    // Register C callback
    register_callback(hi_from_java);

    // Call start() on it
    jmethodID startMethod = env->GetMethodID(callbackFromJavaClass, "start", "()V");
    env->CallVoidMethod(callbackFromJavaObject, startMethod);

    // NOTE: That is actually not needed as the DestroyJavaVM method will wait for the thread to die... (unless it is a daemon thread)
    //
    // Thread started, now join on this thread...
    // jfieldID callbackFromJavaThreadField = env->GetFieldID(callbackFromJavaClass, "thread", "Ljava/lang/Thread;");
    // jobject callbackFromJavaThreadObject = env->GetObjectField(callbackFromJavaObject, callbackFromJavaThreadField);
    // jclass threadClass = env->GetObjectClass(callbackFromJavaThreadObject);
    // jmethodID joinMethod = env->GetMethodID(threadClass, "join", "()V");
    // env->CallVoidMethod(callbackFromJavaThreadObject, joinMethod);
    //
    // cout << "Join returned, exiting C++ code..." << endl;

    // Release the JVM
    jvm->DestroyJavaVM(); // this will wait for Java threads to die...

    return 0;
}

