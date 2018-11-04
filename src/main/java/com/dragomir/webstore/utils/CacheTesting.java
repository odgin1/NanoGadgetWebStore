package com.dragomir.webstore.utils;

public class CacheTesting {

	public static void slowQuery(long seconds){
	    try {
                Thread.sleep(seconds);
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
	}

}
