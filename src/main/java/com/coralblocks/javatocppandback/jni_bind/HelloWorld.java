package com.coralblocks.javatocppandback.jni_bind;

public class HelloWorld {

    static {
        System.loadLibrary("HelloWorld");
    }

    public void sayHello(int count, String msg) {
        for(int i = 0; i < count; i++) {
            System.out.println("Hello CoralBlocks from JNI-Bind! => " + msg);
        }
    }

    private static native void goToNativeSide(int count, String msg);

    private static native void tearDownJvm();

    public static void main(String[] args) throws Exception {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        goToNativeSide(count, msg);
        tearDownJvm();
    }
}