#include <jni.h>
#include "gamma.h"
#include "android/log.h"
#include "android/bitmap.h"

#define LOG_GAMMA_TAG "GAMMA======: "

JNIEXPORT void JNICALL
Java_de_shandschuh_sparserss_Gamma_changeGammaArray(JNIEnv *env,
                                                   jobject jthis,
                                                   jintArray color,
                                                   int gamma_level) {
    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "gamma_array");

    jsize len = (*env)->GetArrayLength(env, color);
    jint *body = (*env)->GetIntArrayElements(env, color, 0);

    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "length: %d\n", len);

    int i;
    unsigned char r, g, b, a; 
    uint32_t c;

    for(i=0; i<len; i++) {
        b = body[i] & 0xff;
        g = (body[i] >> 8) & 0xff;
        r = (body[i] >> 16) & 0xff;
        a = (body[i] >> 24) && 0xff;

        b = gamma_map[3][b];
        g = gamma_map[3][g];
        r = gamma_map[3][r];

        c = a;
        c = (c << 8) | r;
        c = (c << 8) | g;
        c = (c << 8) | b;

        body[i] = c;
    }

    (*env)->ReleaseIntArrayElements(env, color, body, 0);
}

JNIEXPORT void JNICALL
Java_de_shandschuh_sparserss_Gamma_changeGammaARGB8888(JNIEnv *env,
                                                       jobject jthis,
                                                       jobject jbitmap,
                                                       int gamma_level) {

    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "gamma");
    uint32_t *pixels;
    AndroidBitmapInfo info;
    AndroidBitmap_getInfo(env, jbitmap, &info);

    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "format: %d\n", info.format);
    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "level: %d\n", gamma_level);
    
    AndroidBitmap_lockPixels(env, jbitmap, (void **)&pixels);

    int length = info.height * info.width;
    int i;
    unsigned char r, g, b, a; 
    uint32_t c;
    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "length: %d\n",
            length);

    for (i=0; i<length; i++) {
        b = pixels[i] & 0xff;
        g = (pixels[i] >> 8) & 0xff;
        r = (pixels[i] >> 16) & 0xff;
        a = (pixels[i] >> 24) && 0xff;

        b = gamma_map[3][b];
        g = gamma_map[3][g];
        r = gamma_map[3][r];

        c = a;
        c = (c << 8) | r;
        c = (c << 8) | g;
        c = (c << 8) | b;

        pixels[i] = c;
    }
    AndroidBitmap_unlockPixels(env, jbitmap);
}


JNIEXPORT void JNICALL
Java_de_shandschuh_sparserss_Gamma_changeGamma(JNIEnv *env,
                                               jobject jthis,
                                               jobject jbitmap,
                                               int gamma_level) {

    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "gamma");
    uint16_t *pixels;
    AndroidBitmapInfo info;
    AndroidBitmap_getInfo(env, jbitmap, &info);

    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "format: %d\n", info.format);
    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "level: %d\n", gamma_level);
    
    AndroidBitmap_lockPixels(env, jbitmap, (void **)&pixels);

    int length = info.height * info.width;
    int i;
    unsigned char r, g, b; 
    uint16_t color;
    __android_log_print(ANDROID_LOG_DEBUG, LOG_GAMMA_TAG, "length: %d\n",
            length);

    for (i=0; i<length; i++) {
        if (pixels[i] == 65535) {
            continue;
        } 

        r = (pixels[i] & 31) << 3;
        g = ((pixels[i] >> 5) & 63) << 2;
        b = ((pixels[i] >> 11) & 31) << 3;


        r = gamma_map[3][r];
        g = gamma_map[3][g];
        b = gamma_map[3][b];

        color = 0;
        color = (color << 5) | (b >> 3);
        color = (color << 6) | (g >> 2);
        color = (color << 5) | (r >> 3);

        pixels[i] = color;
    }
    AndroidBitmap_unlockPixels(env, jbitmap);
}
