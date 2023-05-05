package com.coralblocks.javatocppandback.jni_callback;

public class CallbackFromJava {

    static {
        System.loadLibrary("CallbackFromJavaSharedLib");
    }

    private final int count;
    private final Thread thread;
    private volatile boolean isRunning = true;

    public CallbackFromJava(int count) {
        this.count = count;
        this.thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    int count = 0;
                    while(isRunning) {
                        Thread.sleep(100);
                        hiFromJava(System.currentTimeMillis());
                        if (++count == CallbackFromJava.this.count) break;
                    }
                } catch(InterruptedException e) {
                    // wants to exit...
                }
            }
        });
    }

    public void start() {
        thread.start();
    }

    public void stopMe() {
        isRunning = false;
    }

    public native void hiFromJava(long l);
}
