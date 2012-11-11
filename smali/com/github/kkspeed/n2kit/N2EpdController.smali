.class public Lcom/github/kkspeed/n2kit/N2EpdController;
.super Ljava/lang/Object;
.source "N2EpdController.java"


# static fields
.field public static final MODE_ACTIVE:I = 0x1

.field public static final MODE_ACTIVE_ALL:I = 0x4

.field public static final MODE_BLINK:I = 0x0

.field public static final MODE_CLEAR:I = 0x3

.field public static final MODE_CLEAR_ALL:I = 0x6

.field public static final MODE_ONESHOT:I = 0x2

.field public static final MODE_ONESHOT_ALL:I = 0x5

.field public static final REGION_APP_1:I = 0x0

.field public static final REGION_APP_2:I = 0x1

.field public static final REGION_APP_3:I = 0x2

.field public static final REGION_APP_4:I = 0x3

.field private static RegionParamsConstructor:Ljava/lang/reflect/Constructor; = null

.field public static final WAVE_A2:I = 0x3

.field public static final WAVE_AUTO:I = 0x5

.field public static final WAVE_DU:I = 0x2

.field public static final WAVE_GC:I = 0x0

.field public static final WAVE_GL16:I = 0x4

.field public static final WAVE_GU:I = 0x1

.field public static cnt:I

.field private static enumsMode:[Ljava/lang/Object;

.field private static enumsRegion:[Ljava/lang/Object;

.field private static enumsWave:[Ljava/lang/Object;

.field private static mtSetRegion:Ljava/lang/reflect/Method;

.field public static strN2EpdInit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 37
    sput v6, Lcom/github/kkspeed/n2kit/N2EpdController;->cnt:I

    .line 39
    const-string v6, " N2EpdInit: "

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;

    .line 41
    sput-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->mtSetRegion:Ljava/lang/reflect/Method;

    .line 42
    sput-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->RegionParamsConstructor:Ljava/lang/reflect/Constructor;

    .line 44
    sput-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsWave:[Ljava/lang/Object;

    .line 45
    sput-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsRegion:[Ljava/lang/Object;

    .line 46
    sput-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsMode:[Ljava/lang/Object;

    .line 50
    :try_start_0
    const-string v6, "android.hardware.EpdController"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, clEpdController:Ljava/lang/Class;
    const-string v6, "android.hardware.EpdController$Wave"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 52
    .local v4, clEpdControllerWave:Ljava/lang/Class;
    const-string v6, "android.hardware.EpdController$Mode"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, clEpdControllerMode:Ljava/lang/Class;
    const-string v6, "android.hardware.EpdController$Region"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 55
    .local v2, clEpdControllerRegion:Ljava/lang/Class;
    const-string v6, "android.hardware.EpdController$RegionParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 57
    .local v3, clEpdControllerRegionParams:Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsWave:[Ljava/lang/Object;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsMode:[Ljava/lang/Object;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsRegion:[Ljava/lang/Object;

    .line 65
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object v4, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->RegionParamsConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    const-string v6, "setRegion"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->mtSetRegion:Ljava/lang/reflect/Method;

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Ok!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #clEpdControllerMode:Ljava/lang/Class;
    .end local v2           #clEpdControllerRegion:Ljava/lang/Class;
    .end local v3           #clEpdControllerRegionParams:Ljava/lang/Class;
    .end local v4           #clEpdControllerWave:Ljava/lang/Class;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v5

    .line 72
    .local v5, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Failed to init refresh EPD"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;

    .line 75
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterA2Mode()V
    .locals 14

    .prologue
    .line 97
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "APV::enterA2Mode"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :try_start_0
    const-string v10, "android.hardware.EpdController"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 101
    .local v2, epdControllerClass:Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Region"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 103
    .local v3, epdControllerRegionClass:Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$RegionParams"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 105
    .local v4, epdControllerRegionParamsClass:Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Wave"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 108
    .local v6, epdControllerWaveClass:Ljava/lang/Class;
    const/4 v9, 0x0

    .line 109
    .local v9, waveEnums:[Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 110
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 115
    :cond_0
    const/4 v8, 0x0

    .line 116
    .local v8, regionEnums:[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 117
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "EpdController Region Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    .line 122
    :cond_1
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    const/4 v11, 0x5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 127
    .local v0, RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 131
    .local v7, localRegionParams:Ljava/lang/Object;
    const-string v10, "setRegion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 135
    .local v5, epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "APV-ReadingView"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 140
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 143
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "APV-ReadingView"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #epdControllerRegionClass:Ljava/lang/Class;
    .end local v4           #epdControllerRegionParamsClass:Ljava/lang/Class;
    .end local v5           #epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    .end local v6           #epdControllerWaveClass:Ljava/lang/Class;
    .end local v7           #localRegionParams:Ljava/lang/Object;
    .end local v8           #regionEnums:[Ljava/lang/Object;
    .end local v9           #waveEnums:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static exitA2Mode()V
    .locals 14

    .prologue
    .line 161
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "NoRefreshToggle::exitA2Mode"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :try_start_0
    const-string v10, "android.hardware.EpdController"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 164
    .local v2, epdControllerClass:Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Region"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 165
    .local v3, epdControllerRegionClass:Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$RegionParams"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 166
    .local v4, epdControllerRegionParamsClass:Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Wave"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 168
    .local v6, epdControllerWaveClass:Ljava/lang/Class;
    const/4 v9, 0x0

    .line 169
    .local v9, waveEnums:[Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 171
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 174
    :cond_0
    const/4 v8, 0x0

    .line 175
    .local v8, regionEnums:[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 177
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    .line 180
    :cond_1
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    const/4 v11, 0x5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 183
    .local v0, RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 185
    .local v7, localRegionParams:Ljava/lang/Object;
    const-string v10, "setRegion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 188
    .local v5, epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "NoRefreshToggle"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0           #RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #epdControllerRegionClass:Ljava/lang/Class;
    .end local v4           #epdControllerRegionParamsClass:Ljava/lang/Class;
    .end local v5           #epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    .end local v6           #epdControllerWaveClass:Ljava/lang/Class;
    .end local v7           #localRegionParams:Ljava/lang/Object;
    .end local v8           #regionEnums:[Ljava/lang/Object;
    .end local v9           #waveEnums:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static resetGL16Mode()V
    .locals 16

    .prologue
    .line 196
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "APV::setGL16Mode"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    :try_start_0
    const-string v12, "android.hardware.EpdController"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 203
    .local v2, epdControllerClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Region"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 205
    .local v4, epdControllerRegionClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$RegionParams"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 207
    .local v5, epdControllerRegionParamsClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Wave"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 209
    .local v7, epdControllerWaveClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Mode"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 215
    .local v3, epdControllerModeClass:Ljava/lang/Class;
    const/4 v11, 0x0

    .line 216
    .local v11, waveEnums:[Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 217
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    .line 222
    :cond_0
    const/4 v10, 0x0

    .line 223
    .local v10, regionEnums:[Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 224
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "EpdController Region Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    .line 229
    :cond_1
    const/4 v9, 0x0

    .line 230
    .local v9, modeEnums:[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 231
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "EpdController Region Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 234
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 237
    :cond_2
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v7, v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 241
    .local v0, RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/16 v14, 0x258

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x320

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x1

    aget-object v14, v11, v14

    aput-object v14, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 246
    .local v8, localRegionParams:Ljava/lang/Object;
    const-string v12, "setRegion"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    const/4 v14, 0x3

    aput-object v3, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 251
    .local v6, epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "APV-ReadingView"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    aget-object v15, v10, v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x6

    aget-object v15, v9, v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0           #RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #epdControllerModeClass:Ljava/lang/Class;
    .end local v4           #epdControllerRegionClass:Ljava/lang/Class;
    .end local v5           #epdControllerRegionParamsClass:Ljava/lang/Class;
    .end local v6           #epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    .end local v7           #epdControllerWaveClass:Ljava/lang/Class;
    .end local v8           #localRegionParams:Ljava/lang/Object;
    .end local v9           #modeEnums:[Ljava/lang/Object;
    .end local v10           #regionEnums:[Ljava/lang/Object;
    .end local v11           #waveEnums:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGL16Mode()V
    .locals 16

    .prologue
    const/4 v14, 0x0

    .line 261
    sget v12, Lcom/github/kkspeed/n2kit/N2EpdController;->cnt:I

    const/16 v13, 0x1c

    if-le v12, v13, :cond_0

    .line 262
    sput v14, Lcom/github/kkspeed/n2kit/N2EpdController;->cnt:I

    .line 263
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "APV::ClearGLuMode"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/github/kkspeed/n2kit/N2EpdController;->setGLUMode()V

    .line 330
    .local v2, epdControllerClass:Ljava/lang/Class;
    :goto_0
    return-void

    .line 267
    .end local v2           #epdControllerClass:Ljava/lang/Class;
    :cond_0
    sget v12, Lcom/github/kkspeed/n2kit/N2EpdController;->cnt:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Lcom/github/kkspeed/n2kit/N2EpdController;->cnt:I

    .line 268
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "APV::setGL16Mode"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    :try_start_0
    const-string v12, "android.hardware.EpdController"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 276
    .restart local v2       #epdControllerClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Region"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 278
    .local v4, epdControllerRegionClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$RegionParams"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 280
    .local v5, epdControllerRegionParamsClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Wave"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 282
    .local v7, epdControllerWaveClass:Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Mode"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 288
    .local v3, epdControllerModeClass:Ljava/lang/Class;
    const/4 v11, 0x0

    .line 289
    .local v11, waveEnums:[Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 290
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v7}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    .line 295
    :cond_1
    const/4 v10, 0x0

    .line 296
    .local v10, regionEnums:[Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 297
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "EpdController Region Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    .line 302
    :cond_2
    const/4 v9, 0x0

    .line 303
    .local v9, modeEnums:[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 304
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "EpdController Region Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 307
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 310
    :cond_3
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v7, v12, v13

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 314
    .local v0, RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/16 v14, 0x258

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x320

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x1

    aget-object v14, v11, v14

    aput-object v14, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 319
    .local v8, localRegionParams:Ljava/lang/Object;
    const-string v12, "setRegion"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    const/4 v14, 0x3

    aput-object v3, v13, v14

    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 324
    .local v6, epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "APV-ReadingView"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    aget-object v15, v10, v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x2

    aget-object v15, v9, v15

    aput-object v15, v13, v14

    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 327
    .end local v0           #RegionParamsConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #epdControllerModeClass:Ljava/lang/Class;
    .end local v4           #epdControllerRegionClass:Ljava/lang/Class;
    .end local v5           #epdControllerRegionParamsClass:Ljava/lang/Class;
    .end local v6           #epdControllerSetRegionMethod:Ljava/lang/reflect/Method;
    .end local v7           #epdControllerWaveClass:Ljava/lang/Class;
    .end local v8           #localRegionParams:Ljava/lang/Object;
    .end local v9           #modeEnums:[Ljava/lang/Object;
    .end local v10           #regionEnums:[Ljava/lang/Object;
    .end local v11           #waveEnums:[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static setGLUMode()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/github/kkspeed/n2kit/N2EpdController;->setMode(III)V

    .line 158
    return-void
.end method

.method public static setMode(III)V
    .locals 7
    .parameter "region"
    .parameter "wave"
    .parameter "mode"

    .prologue
    .line 81
    sget-object v2, Lcom/github/kkspeed/n2kit/N2EpdController;->mtSetRegion:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 83
    :try_start_0
    sget-object v2, Lcom/github/kkspeed/n2kit/N2EpdController;->RegionParamsConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x258

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0x320

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsWave:[Ljava/lang/Object;

    aget-object v5, v5, p1

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, regionParams:Ljava/lang/Object;
    sget-object v2, Lcom/github/kkspeed/n2kit/N2EpdController;->mtSetRegion:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "CoolReader"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsRegion:[Ljava/lang/Object;

    aget-object v6, v6, p0

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/github/kkspeed/n2kit/N2EpdController;->enumsMode:[Ljava/lang/Object;

    aget-object v6, v6, p2

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #regionParams:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed: SetMode"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Failed: setMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/github/kkspeed/n2kit/N2EpdController;->strN2EpdInit:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
