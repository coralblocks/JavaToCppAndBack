package com.coralblocks.javatocppandback.ffm_jextract;

import com.coralblocks.javatocppandback.ffm_jextract.generated.Hello;

import java.lang.foreign.Arena;

public class HelloWorld {

    public static void main(String[] args) {
        
        System.loadLibrary("HelloWorld");

        int count = Integer.parseInt(args[0]);
        String msg = args[1];

        Hello.sayHello(count, Arena.ofConfined().allocateUtf8String(msg));
    }
}