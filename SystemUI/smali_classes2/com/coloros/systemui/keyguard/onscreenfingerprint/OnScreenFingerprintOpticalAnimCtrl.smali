.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;
.super Ljava/lang/Object;
.source "OnScreenFingerprintOpticalAnimCtrl.java"


# static fields
.field private static final ANIM_TYPE_FADE_IN:I = 0x2

.field private static final ANIM_TYPE_FADE_OUT:I = 0x4

.field private static final ANIM_TYPE_PRESSED:I = 0x8

.field private static final PRESSED_PREFIX:Ljava/lang/String; = "kgd_osfingerprint_element"

.field private static final SOUND_PREFIX:Ljava/lang/String; = "kgd_osfp_touch_sound_"

.field private static final TAG:Ljava/lang/String; = "OnScreenFingerprintOpticalAnimCtrl"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDcsRunnable:Ljava/lang/Runnable;

.field private mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private final mFadeInAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

.field private mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private final mFadeOutAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

.field private mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

.field private mImMobileDrawable:Landroid/graphics/drawable/Drawable;

.field private mNeedDoFadeInAnimation:Z

.field private mOnDreamingStart:Z

.field private mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

.field private mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private mPressedAnimDrawableAlpha:I

.field private mScreenTurnedOff:Z

.field private final mThemeChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mThemeStyle:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mNeedDoFadeInAnimation:Z

    .line 68
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$B6lJ3z8Bo6fiLYZLsYErnDD_mrI;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$B6lJ3z8Bo6fiLYZLsYErnDD_mrI;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mDcsRunnable:Ljava/lang/Runnable;

    .line 187
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    .line 205
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$2;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    .line 387
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl$3;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 76
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    return-object p0
.end method

.method private execInMainThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    if-eqz p0, :cond_0

    .line 227
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->execInMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;
    .locals 2

    .line 82
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    if-nez v0, :cond_1

    .line 83
    const-class v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 89
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->sInstance:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    return-object p0
.end method

.method private getOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/4 p0, 0x0

    const/4 p1, -0x1

    goto/16 :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isFingerprintGlobalThemeEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f110493

    .line 155
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0b0049

    .line 156
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f0b004a

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f050054

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto/16 :goto_0

    :cond_1
    const-string p1, "_anim_name"

    const-string v1, "string"

    .line 160
    invoke-virtual {p0, p1, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getAnimConfigIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "integer"

    const-string v2, "_anim_frames"

    .line 161
    invoke-virtual {p0, v2, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getAnimConfigIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "_anim_rate"

    .line 162
    invoke-virtual {p0, v3, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getAnimConfigIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v3, "_oneshot"

    const-string v4, "bool"

    .line 163
    invoke-virtual {p0, v3, v4}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getAnimConfigIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    move v5, v2

    move v2, p0

    move-object p0, p1

    move p1, v5

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isFingerprintGlobalThemeEnable()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f11048f

    .line 144
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0b0047

    .line 145
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f0b0048

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    const p0, 0x7f11049d

    .line 148
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0b005d

    .line 149
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f0b005e

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    .line 132
    :cond_4
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isFingerprintGlobalThemeEnable()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f11048e

    .line 133
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0b0045

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f0b0046

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_5
    const p0, 0x7f11049c

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0b005b

    .line 138
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f0b005c

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 167
    :goto_0
    new-instance v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZ)V

    return-object v0
.end method

.method private startFadeInAnimation()V
    .locals 1

    .line 232
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$-tQJRJsKa17pWjQ8z0oixqXIKHc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$-tQJRJsKa17pWjQ8z0oixqXIKHc;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopFadeInAnimation()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$awUzt_dxY9Ry17J-GdWTPWQRAyI;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$awUzt_dxY9Ry17J-GdWTPWQRAyI;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimConfigIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kgd_osfingerprint_element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeStyle:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kgd_osfp_touch_sound_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeStyle:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFadeOutAnimTime()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->getDuration(I)I

    move-result p0

    mul-int/2addr v0, p0

    return v0

    :cond_0
    return v1
.end method

.method public getScreenTurnedOff()Z
    .locals 0

    .line 472
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    return p0
.end method

.method public hasDreamingStart()Z
    .locals 0

    .line 346
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    return p0
.end method

.method public synthetic lambda$new$0$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->updateUserDataCollectionForFp()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onScreenTurnedOff$7$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 357
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$restoreIconDrawable$9$OnScreenFingerprintOpticalAnimCtrl(Z)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopOpticalAnimation()V

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 434
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->updateFpIconColor()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$showFingerprintIconAnimation$8$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    sget-boolean v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sServiceRequest:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setVisibility(I)V

    .line 412
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->updateFpIconColor()V

    .line 413
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->startFadeInAnimation()V

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFingerprintIconAnimation, service request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sServiceRequest:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , needFadeIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mNeedDoFadeInAnimation:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    .line 418
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    .line 415
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$startFadeInAnimation$1$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    const-string v1, "OnScreenFingerprintOpticalAnimCtrl"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mNeedDoFadeInAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    if-nez v0, :cond_0

    const-string p0, "unnecessary to start fade in animation"

    .line 236
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "startFadeInAnimation"

    .line 239
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    .line 242
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mNeedDoFadeInAnimation:Z

    goto :goto_0

    :cond_1
    const-string v0, "show last frame in FadeInAnimation "

    .line 246
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    if-eqz v0, :cond_3

    .line 251
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "fingerprint_total_screen_off_show_counts"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$startFadeOutAnimation$3$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "startFadeOutAnimation"

    .line 281
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$startPressedAnimation$2$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "startPressedAnimation"

    .line 266
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$stopFadeInAnimation$4$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "stopFadeInAnimation"

    .line 296
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    return-void
.end method

.method public synthetic lambda$stopFadeOutAnimation$5$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "stopFadeOutAnimation"

    .line 305
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    return-void
.end method

.method public synthetic lambda$stopPressedAnimation$6$OnScreenFingerprintOpticalAnimCtrl()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "stopPressedAnimation"

    .line 314
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    .line 316
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public loadAnimDrawables(I)V
    .locals 2

    .line 171
    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mThemeStyle:I

    .line 172
    new-instance p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 173
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 174
    new-instance p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 175
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimationDrawableListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 176
    new-instance p1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getOptions(I)Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 177
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawableAlpha:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setAlpha(I)V

    .line 179
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 180
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isFingerprintGlobalThemeEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f080bc0

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const v0, 0x7f080be0

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mImMobileDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public onDreamingStart()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "onDreamingStart()"

    .line 323
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    .line 325
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->showFingerprintIconAnimation()V

    .line 328
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mDcsRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    :goto_0
    return-void
.end method

.method public onDreamingStop()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "onDreamingStop()"

    .line 336
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "onScreenTurnedOff()"

    .line 350
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    .line 352
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopOpticalAnimation()V

    .line 355
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$-j33O3mkNTNPB3r8VWJm4lPrht8;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$-j33O3mkNTNPB3r8VWJm4lPrht8;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "onScreenTurnedOn()"

    .line 370
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mNeedDoFadeInAnimation:Z

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->isTouchDownNow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->showFingerprintIconAnimation()V

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mDcsRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    const-string v0, "OnScreenFingerprintOpticalAnimCtrl"

    const-string v1, "onScreenTurningOn()"

    .line 363
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mNeedDoFadeInAnimation:Z

    :cond_0
    return-void
.end method

.method public restoreIconDrawable(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->requestDraw(I)V

    .line 427
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$5ygiceXLOXjMam3dTABuZCMtLgo;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;Z)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDreamingStart()V
    .locals 1

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnDreamingStart:Z

    return-void
.end method

.method public setInteractive(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 383
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mScreenTurnedOff:Z

    return-void
.end method

.method public setOnScreenFingerprintControl(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    return-void
.end method

.method public setOnScreenFingerprintIcon(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    return-void
.end method

.method public setPressedAnimAlpha(I)V
    .locals 0

    .line 465
    iput p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawableAlpha:I

    .line 466
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public showFingerprintIconAnimation()V
    .locals 2

    .line 404
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    if-eqz v0, :cond_1

    const/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    const/16 v0, 0x9c4

    :goto_1
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->requestDraw(I)V

    .line 406
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$J8b5QOdK8xELdK5r2eOy2LKLtZA;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$J8b5QOdK8xELdK5r2eOy2LKLtZA;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startFadeOutAnimation()V
    .locals 1

    .line 275
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->requestDraw()V

    .line 279
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$MLSIZnvRhaIcbDypoa75vrsUtps;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$MLSIZnvRhaIcbDypoa75vrsUtps;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPressedAnimation()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/helper/KeyguardTipsController;->displayKeyguardTips(I)V

    .line 262
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopOpticalAnimation()V

    .line 263
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mOnScreenFingerprintControl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->requestDraw()V

    .line 264
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$RUK7MGWbC09s8WrUQJKKgm-JZxQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$RUK7MGWbC09s8WrUQJKKgm-JZxQ;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopFadeOutAnimation()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$b4WOjUR0BCz4VcGWNZPSuLf4bRE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$b4WOjUR0BCz4VcGWNZPSuLf4bRE;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopOpticalAnimation()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopFadeInAnimation()V

    .line 290
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->stopFadeOutAnimation()V

    return-void
.end method

.method public stopPressedAnimation()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mPressedAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$kfQce9Gp28PSUXWLWLocJGyN7w4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/-$$Lambda$OnScreenFingerprintOpticalAnimCtrl$kfQce9Gp28PSUXWLWLocJGyN7w4;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateFpIconColor()V
    .locals 6

    .line 444
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isClockGlobalThemeEnable()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    .line 445
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthDetecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    .line 446
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    .line 447
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x7f0405d2

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 451
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFpIcon:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->updateColor(I)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeInAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->updateColor(I)V

    .line 459
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->mFadeOutAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz p0, :cond_3

    .line 460
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->updateColor(I)V

    :cond_3
    return-void
.end method
