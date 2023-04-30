package com.coralblocks.javatocppandback.jna;

import com.sun.jna.Library;
import com.sun.jna.Native;

public class HelloWorld {

    public interface HelloWorldLib extends Library {
        HelloWorldLib INSTANCE = Native.load("HelloWorld", HelloWorldLib.class);
        void sayHello(int count, String msg);
    }
    
    public static void main(String[] args) {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        HelloWorldLib lib = HelloWorldLib.INSTANCE;
        lib.sayHello(count, msg);
    }
}