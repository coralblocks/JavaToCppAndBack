package com.coralblocks.javatocppandback.ffm;

import java.lang.foreign.Arena;
import java.lang.foreign.FunctionDescriptor;
import java.lang.foreign.Linker;
import java.lang.foreign.SymbolLookup;
import java.lang.foreign.ValueLayout;
import java.lang.foreign.MemorySegment;
import java.lang.invoke.MethodHandle;

public class HelloWorld {

    public static void main(String[] args) throws Throwable {

        int count = Integer.parseInt(args[0]);
        String msg = args[1];

        Arena arena = Arena.ofConfined();
        Linker linker = Linker.nativeLinker();

        System.loadLibrary("HelloWorld");
        SymbolLookup lookup = SymbolLookup.loaderLookup();

        MemorySegment sayHello = lookup.find("sayHello").get();
        FunctionDescriptor sayHello_sig = FunctionDescriptor.ofVoid(ValueLayout.JAVA_INT, ValueLayout.ADDRESS);
        MethodHandle sayHello_method = linker.downcallHandle(sayHello, sayHello_sig);

        sayHello_method.invokeExact(count, arena.allocateUtf8String(msg));
        
    }
}