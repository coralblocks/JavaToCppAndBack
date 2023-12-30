package com.coralblocks.javatocppandback.ffm;

import java.lang.foreign.Arena;
import java.lang.foreign.FunctionDescriptor;
import java.lang.foreign.Linker;
import java.lang.foreign.SymbolLookup;
import java.lang.foreign.ValueLayout;

public class HelloWorld {

    public static void main(String[] args) throws Throwable {

        var count = Integer.parseInt(args[0]);
        var msg = args[1];
        var os = args[2];

        try (var arena = Arena.ofConfined()) {

            var linker = Linker.nativeLinker();

            var lookup = switch (os){
                case "mac" -> SymbolLookup.libraryLookup("lib/ffm/libHelloWorld.dylib", arena);
                case "linux" -> SymbolLookup.libraryLookup("lib/ffm/libHelloWorld.so", arena);
                default -> throw new IllegalStateException(STR."os not found\{os}");
            };


            var helloWorld = lookup.find("sayHello").get();
            var helloWorld_sig = FunctionDescriptor.ofVoid(ValueLayout.JAVA_INT, ValueLayout.ADDRESS);
            var helloWorldFn = linker.downcallHandle(helloWorld, helloWorld_sig);

            helloWorldFn.invokeExact(count, arena.allocateUtf8String(msg));

        }
    }
}
