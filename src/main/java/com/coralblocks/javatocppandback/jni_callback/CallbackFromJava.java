package com.coralblocks.javatocppandback.jni_callback;

public class CallbackFromJava {

    private final int periodInMillis;
    private final Thread thread;
    private volatile boolean isRunning = true;

    public CallbackFromJava(int periodInMillis) {
        this.periodInMillis = periodInMillis;
        this.thread = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    int count = 0;
                    while(isRunning) {
                        Thread.sleep(periodInMillis);
                        //hiFromJava(System.currentTimeMillis());
                        System.out.println(count);
                        if (++count == 5) break;
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

    //public native void hiFromJava(long l);
}
