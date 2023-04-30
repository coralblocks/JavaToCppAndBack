package com.coralblocks.javatocppandback.graal;

import org.graalvm.nativeimage.IsolateThread;
import org.graalvm.nativeimage.c.function.CEntryPoint;
import org.graalvm.nativeimage.c.type.CCharPointer;
import org.graalvm.nativeimage.c.type.CTypeConversion;

public class HelloWorld {

    @CEntryPoint(name = "say_hello")
    public static void sayHello(IsolateThread thread, int count, CCharPointer cmsg) {
	String msg = CTypeConversion.toJavaString(cmsg);
	for(int i = 0; i < count; i++) {
            System.out.println("Hello CoralBlocks from GraalVM Native-Image! => " + msg);    
        }
    }
}
