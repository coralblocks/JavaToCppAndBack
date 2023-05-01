package com.coralblocks.javatocppandback.jni_jvm;

public class HelloWorld {

    public static void sayHello(int count, String msg) {
	    for(int i = 0; i < count; i++) {
            System.out.println("Hello CoralBlocks from JNI-JVM! => " + msg);    
        }
    }
}
