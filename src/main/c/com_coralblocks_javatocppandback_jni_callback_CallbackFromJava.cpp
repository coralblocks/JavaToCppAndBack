#include <iostream>
#include <jni.h>

using namespace std;

int main(int argc, char **argv) {

    int x = std::stoi(argv[1]);

    JavaVM *jvm;                       // Pointer to the JVM (Java Virtual Machine)
    JNIEnv *env;                       // Pointer to native interface
    JavaVMInitArgs vm_args;            // JVM initialization arguments
    JavaVMOption options[1];           // JVM options

    options[0].optionString = "-Djava.class.path=classes";  // Set the path to the bytecode file
    vm_args.version = JNI_VERSION_1_6;                      // Set the JNI version
    vm_args.nOptions = 1;                                   // Set the number of options
    vm_args.options = options;                              // Set the options to the JVM
    
    // Load and initialize the JVM
    JNI_CreateJavaVM(&jvm, (void**)&env, &vm_args);

    // Instantiate the CallbackFromJava object
    jclass callbackFromJavaClass = env->FindClass("com/coralblocks/javatocppandback/jni_callback/CallbackFromJava");
    jmethodID callbackFromJavaConstructor = env->GetMethodID(callbackFromJavaClass, "<init>", "(I)V");
    jobject callbackFromJavaObject = env->NewObject(callbackFromJavaClass, callbackFromJavaConstructor, (jint) x);
    
    // Call start() on it
    jmethodID startMethod = env->GetMethodID(callbackFromJavaClass, "start", "()V");
    env->CallVoidMethod(callbackFromJavaObject, startMethod);

    // Thread started, now join on this thread...
    jfieldID callbackFromJavaThreadField = env->GetFieldID(callbackFromJavaClass, "thread", "Ljava/lang/Thread;");
    jobject callbackFromJavaThreadObject = env->GetObjectField(callbackFromJavaObject, callbackFromJavaThreadField);
    jclass threadClass = env->GetObjectClass(callbackFromJavaThreadObject);
    jmethodID joinMethod = env->GetMethodID(threadClass, "join", "()V");
    env->CallVoidMethod(callbackFromJavaThreadObject, joinMethod);

    cout << "Join returned, exiting C++ code..." << endl;

    // Release the JVM
    jvm->DestroyJavaVM();

    return 0;
}

