# JavaToCppAndBack
Call Java from C++ and C++ from Java with a variety of old and new projects like JNI, JNA, JNR, GraalVM Native-Image, etc.

This project is intended to be used as a quick reference on how to get going with Java to C++ integration, from both sides. It is a step-by-step guide, in the form of shell scripts (for Linux and MacOS) to compile and run the C++ and Java examples, so you don't have to guess anything. Just read "Hello World!" in your terminal and celebrate! :champagne: :tada: :confetti_ball:

#### Linux
```
$ uname -a
Linux cleveland 5.15.0-71-generic #78-Ubuntu SMP Tue Apr 18 09:00:08 UTC 2023 aarch64 aarch64 aarch64 GNU/Linux

$ cat /etc/issue | head -n 1
Ubuntu 22.04.2 LTS \n \l

$ java -version
openjdk version "19.0.2" 2023-01-17
OpenJDK Runtime Environment GraalVM CE 22.3.1 (build 19.0.2+7-jvmci-22.3-b12)
OpenJDK 64-Bit Server VM GraalVM CE 22.3.1 (build 19.0.2+7-jvmci-22.3-b12, mixed mode, sharing)

$ g++ --version | head -n 1
g++ (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0
```
#### MacOS
```
$ uname -a
Darwin MacBook-Air.local 22.4.0 Darwin Kernel Version 22.4.0: Mon Mar  6 21:01:02 PST 2023; root:xnu-8796.101.5~3/RELEASE_ARM64_T8112 arm64

$ java -version
openjdk version "19.0.2" 2023-01-17
OpenJDK Runtime Environment GraalVM CE 22.3.1 (build 19.0.2+7-jvmci-22.3-b12)
OpenJDK 64-Bit Server VM GraalVM CE 22.3.1 (build 19.0.2+7-jvmci-22.3-b12, mixed mode, sharing)

$ g++ --version
Apple clang version 14.0.3 (clang-1403.0.22.14.1)
Target: arm64-apple-darwin22.4.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin
```

## Java calling C++

### JNI
- Check the [Java code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/java/com/coralblocks/javatocppandback/jni/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/c/com_coralblocks_javatocppandback_jni_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jni/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jni/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jni/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jni/all.sh 2 Awesome
Hello CoralBlocks from JNI! => Awesome
Hello CoralBlocks from JNI! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jni/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jni/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jni/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jni/all.sh 2 Awesome
Hello CoralBlocks from JNI! => Awesome
Hello CoralBlocks from JNI! => Awesome
```

### [JNA](https://github.com/java-native-access/jna)
- Check the [Java code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/java/com/coralblocks/javatocppandback/jna/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/c/com_coralblocks_javatocppandback_jna_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jna/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jna/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jna/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jna/all.sh 2 Awesome
Hello CoralBlocks from JNA! => Awesome
Hello CoralBlocks from JNA! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jna/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jna/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jna/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jna/all.sh 2 Awesome
Hello CoralBlocks from JNA! => Awesome
Hello CoralBlocks from JNA! => Awesome
```

### [JNR](https://github.com/jnr/jnr-ffi)
- Check the [Java code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/java/com/coralblocks/javatocppandback/jnr/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/c/com_coralblocks_javatocppandback_jnr_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jnr/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jnr/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jnr/runJava.sh) the Java code
```
# For Mac
$ ./bin/mac/jnr/all.sh 2 Awesome
Hello CoralBlocks from JNR! => Awesome
Hello CoralBlocks from JNR! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jnr/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jnr/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jnr/runJava.sh) the Java code
```
# For Linux
$ ./bin/linux/jnr/all.sh 2 Awesome
Hello CoralBlocks from JNR! => Awesome
Hello CoralBlocks from JNR! => Awesome
```

## C++ calling Java

### JNI
- Check the [Java code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/java/com/coralblocks/javatocppandback/jni_jvm/HelloWorld.java)
- Check the [C++ code](https://github.com/coralblocks/JavaToCppAndBack/blob/main/src/main/c/com_coralblocks_javatocppandback_jni_jvm_HelloWorld.cpp)
###### MacOS
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jni_jvm/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jni_jvm/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/mac/jni_jvm/runCpp.sh) the C++ code
```
# For Mac
$ ./bin/mac/jni_jvm/all.sh 2 Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
```
###### Linux
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jni_jvm/compileJava.sh) the Java code
- [Compile](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jni_jvm/compileCpp.sh) the C++ code
- [Run](https://github.com/coralblocks/JavaToCppAndBack/blob/main/bin/linux/jni_jvm/runCpp.sh) the C++ code
```
# For Linux
$ ./bin/linux/jni_jvm/all.sh 2 Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
Hello CoralBlocks from JNI-JVM! => Awesome
```
