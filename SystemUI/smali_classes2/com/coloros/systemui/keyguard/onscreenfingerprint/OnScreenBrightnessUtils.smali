.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;
.super Ljava/lang/Object;
.source "OnScreenBrightnessUtils.java"


# static fields
.field public static final ALPHA_BASE:F = 0.2f

.field public static final ALPHA_COEFFICIENT:F = 1.6f

.field private static final BRIGHTNESS_REAL:Landroid/net/Uri;

.field private static final DIM_LAYER_MAX_ALPHA:I = 0xff

.field private static final MAX_ALPHA_VALUE:I = 0xff

.field private static final MAX_BRIGHTNESS:F

.field private static final MAX_DEFAULT_BRIGHTNESS:I = 0x3ff

.field private static final MIN_ALPHA_VALUE:I = 0x96

.field private static final REAL_SCREEN_BRIGHTNESS:Ljava/lang/String; = "real_screen_brightness"

.field private static final TAG:Ljava/lang/String; = "OnScreenBrightnessUtils"

.field private static final mBrightnessAlphaDimLayerLut:[[I

.field private static sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;


# instance fields
.field private mAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDimLayerAlpha:F

.field private mFingerprintIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

.field private mLastBrightness:I

.field private mOnScreenDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    .line 42
    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_13

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessAlphaDimLayerLut:[[I

    const-string v0, "real_screen_brightness"

    .line 58
    invoke-static {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->BRIGHTNESS_REAL:Landroid/net/Uri;

    const-string v0, "sys.oppo.multibrightness"

    const/16 v1, 0x3ff

    .line 62
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->MAX_BRIGHTNESS:F

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xee
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xe8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0xe6
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xe5
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xe4
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe0
    .end array-data

    :array_7
    .array-data 4
        0x14
        0xd5
    .end array-data

    :array_8
    .array-data 4
        0x1e
        0xce
    .end array-data

    :array_9
    .array-data 4
        0x2d
        0xc6
    .end array-data

    :array_a
    .array-data 4
        0x46
        0xb7
    .end array-data

    :array_b
    .array-data 4
        0x64
        0xad
    .end array-data

    :array_c
    .array-data 4
        0x96
        0xa0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x8a
    .end array-data

    :array_e
    .array-data 4
        0x12c
        0x80
    .end array-data

    :array_f
    .array-data 4
        0x190
        0x6e
    .end array-data

    :array_10
    .array-data 4
        0x1f4
        0x5b
    .end array-data

    :array_11
    .array-data 4
        0x258
        0x50
    .end array-data

    :array_12
    .array-data 4
        0x320
        0x38
    .end array-data

    :array_13
    .array-data 4
        0x3ff
        0x18
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 69
    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mDimLayerAlpha:F

    .line 87
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mLastBrightness:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mLastBrightness:I

    return p1
.end method

.method private brightnessToAlphaForDimLayer(I)F
    .locals 12

    .line 161
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessAlphaDimLayerLut:[[I

    array-length v0, v0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 166
    sget-object v4, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessAlphaDimLayerLut:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    if-lt v4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 171
    sget-object p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessAlphaDimLayerLut:[[I

    aget-object p1, p1, v2

    aget p1, p1, v1

    goto :goto_2

    :cond_3
    if-ne v3, v0, :cond_4

    .line 173
    sget-object p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessAlphaDimLayerLut:[[I

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    aget p1, p1, v1

    goto :goto_2

    .line 175
    :cond_4
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessAlphaDimLayerLut:[[I

    add-int/lit8 v4, v3, -0x1

    aget-object v5, v0, v4

    aget v8, v5, v2

    aget-object v5, v0, v3

    aget v9, v5, v2

    aget-object v2, v0, v4

    aget v10, v2, v1

    aget-object v0, v0, v3

    aget v11, v0, v1

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->interpolate(IIIII)I

    move-result p1

    :goto_2
    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 180
    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mDimLayerAlpha:F

    .line 181
    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mDimLayerAlpha:F

    return p0

    .line 163
    :cond_5
    :goto_3
    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mDimLayerAlpha:F

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;
    .locals 1

    .line 81
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    .line 84
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;

    return-object p0
.end method

.method private interpolate(IIIII)I
    .locals 3

    sub-int p0, p5, p4

    mul-int/lit8 v0, p0, 0x2

    sub-int v1, p1, p2

    mul-int/2addr v0, v1

    sub-int v2, p3, p2

    .line 190
    div-int/2addr v0, v2

    .line 191
    div-int/lit8 v2, v0, 0x2

    .line 192
    rem-int/lit8 v0, v0, 0x2

    if-eq p2, p3, :cond_0

    if-eq p5, p4, :cond_0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, p3

    mul-int/2addr v1, p1

    .line 195
    div-int/2addr v1, p0

    sub-int/2addr p2, p3

    div-int/2addr v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p4, v2

    add-int/2addr p4, v0

    add-int/2addr p4, v1

    return p4
.end method

.method private repackAlpha(F)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0xff

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x96

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getScreenBrightness()I
    .locals 3

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "real_screen_brightness"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 136
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public registerOberver()V
    .locals 4

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mRegistered:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->BRIGHTNESS_REAL:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Keyguard"

    const-string v0, "OnScreenBrightnessUtils"

    const-string v1, "register mBrightnessObserver error!"

    .line 119
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOnScreenDimLayer(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mOnScreenDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    return-void
.end method

.method public setOnScreenFingerprintIcon(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mFingerprintIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    return-void
.end method

.method public unregisterOberver()V
    .locals 2

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Keyguard"

    const-string v0, "OnScreenBrightnessUtils"

    const-string v1, "unregister mBrightnessObserver error!"

    .line 130
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateFingerprintIconAlpha(I)V
    .locals 4

    int-to-float v0, p1

    .line 206
    sget v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->MAX_BRIGHTNESS:F

    div-float v1, v0, v1

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->repackAlpha(F)I

    move-result v1

    .line 207
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mFingerprintIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {v3, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setIconAlpha(I)V

    .line 210
    :cond_0
    sget v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->MAX_BRIGHTNESS:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->repackAlpha(F)I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->setPressedAnimAlpha(I)V

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->setAlpha(I)V

    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updata alpha: brightness="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " alpha="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Keyguard"

    const-string v0, "OnScreenBrightnessUtils"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateScreenDimLayerAlpha(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mOnScreenDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->brightnessToAlphaForDimLayer(I)F

    move-result p1

    .line 150
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPlatformMtk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isDisableAppDimLayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->getInstanace(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->updateDimLayerAlpha(F)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenBrightnessUtils;->mOnScreenDimLayer:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenDimLayer;->updateDimLayerAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
