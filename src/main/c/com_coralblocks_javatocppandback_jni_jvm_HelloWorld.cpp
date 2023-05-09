#include <iostream>
#include <jni.h>

int main(int argc, char **argv) {

    int x = std::stoi(argv[1]);
    std::string str = argv[2];

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

    jclass helloWorldClass = env->FindClass("com/coralblocks/javatocppandback/jni_jvm/HelloWorld");
    jmethodID sayHelloMethod = env->GetStaticMethodID(helloWorldClass, "sayHello", "(ILjava/lang/String;)V");
    jstring cmsg = env->NewStringUTF(str.c_str());
    env->CallStaticVoidMethod(helloWorldClass, sayHelloMethod, (jint) x, cmsg);

    // Dealocate everything to avoid leaks
    env->DeleteLocalRef(cmsg);

    // Release the JVM
    jvm->DestroyJavaVM();

    return 0;
}

