.class public Lcom/github/kkspeed/n2kit/Gamma;
.super Ljava/lang/Object;
.source "Gamma.java"

# static fields
.field private static final TAG:Ljava/lang/String; = "com.github.kkspeed.n2kit.Gamma"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "gamma"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized changeGamma(Landroid/graphics/Bitmap;I)V
.end method

.method public static synchronized native declared-synchronized changeGammaArray([II)V
.end method
