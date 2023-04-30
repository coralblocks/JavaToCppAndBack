package com.coralblocks.javatocppandback.jni;

public class HelloWorld {

    static {
        System.loadLibrary("HelloWorld"); // load libHelloWorld.so
    }

    private native void sayHello(int count, String msg);

    public static void main(String[] args) {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        HelloWorld helloWorld = new HelloWorld();
        helloWorld.sayHello(count, msg);
    }
}

