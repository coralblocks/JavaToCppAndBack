package com.coralblocks.javatocppandback.jnr;

import jnr.ffi.LibraryLoader;

public class HelloWorld {

    public interface HelloWorldLib {
        void sayHello(int count, String msg);
    }

    public static void main(String[] args) {
        int count = Integer.parseInt(args[0]);
        String msg = args[1];
        HelloWorldLib lib = LibraryLoader.create(HelloWorldLib.class).load("HelloWorld");
        lib.sayHello(count, msg);
    }
}

