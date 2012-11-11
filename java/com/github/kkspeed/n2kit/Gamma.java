package com.github.kkspeed.n2kit;

import android.graphics.Bitmap;

public class Gamma {
	
	private final static String TAG = "de.shandschuh.sparserss.Gamma";
	
	static {
        System.loadLibrary("gamma");
	}
	
	synchronized public static native void changeGamma(Bitmap bitmap, int gamma_level);
	synchronized public static native void changeGammaARGB8888(Bitmap bitmap, int gamma_level);
	synchronized public static native void changeGammaArray(int[] color, int gamma_level);
}

