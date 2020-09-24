.class public Lcom/coloros/systemui/gesture/VibrationHelper;
.super Ljava/lang/Object;
.source "VibrationHelper.java"


# static fields
.field private static final PATTERN_KEYBOARD_TOUCH:[J

.field private static final TAG:Ljava/lang/String; = "VibrationHelper"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sInstance:Lcom/coloros/systemui/gesture/VibrationHelper;


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 35
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 36
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/gesture/VibrationHelper;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/gesture/VibrationHelper;->PATTERN_KEYBOARD_TOUCH:[J

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/coloros/systemui/gesture/VibrationHelper;->sInstance:Lcom/coloros/systemui/gesture/VibrationHelper;

    return-void

    :array_0
    .array-data 8
        0x0
        0x23
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/gesture/VibrationHelper;
    .locals 2

    const-class v0, Lcom/coloros/systemui/gesture/VibrationHelper;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/gesture/VibrationHelper;->sInstance:Lcom/coloros/systemui/gesture/VibrationHelper;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/coloros/systemui/gesture/VibrationHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/gesture/VibrationHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/gesture/VibrationHelper;->sInstance:Lcom/coloros/systemui/gesture/VibrationHelper;

    .line 57
    :cond_0
    sget-object p0, Lcom/coloros/systemui/gesture/VibrationHelper;->sInstance:Lcom/coloros/systemui/gesture/VibrationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$vibrateCustomized$0$VibrationHelper(ZLandroid/content/Context;I)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "VibrationHelper"

    const-string v2, "NavBar"

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const-string p0, "vibrateCustomized hapticsDisabled!"

    .line 69
    invoke-static {v2, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "vibrateForGesture no vibrator!"

    .line 74
    invoke-static {v2, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateByLinearmotorVibrator(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateLinearOneShot()Z

    move-result p1

    if-nez p1, :cond_3

    .line 79
    iget-object p0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    return-void
.end method

.method public performHapticFeedback(Z)Z
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    return v1

    .line 111
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearMotorSupport()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateLinearOneShot()Z

    move-result p0

    goto :goto_1

    .line 112
    :cond_3
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateByEffect(Landroid/os/VibrationEffect;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public performKeyboardTouchFeedback()Z
    .locals 4

    const-string v0, "NavBar"

    const-string v1, "VibrationHelper"

    const-string v2, "performKeyboardTouchFeedback: "

    .line 122
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    .line 132
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearMotorSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateLinearOneShot()Z

    move-result p0

    return p0

    .line 135
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Lcom/coloros/systemui/gesture/VibrationHelper;->PATTERN_KEYBOARD_TOUCH:[J

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return v2
.end method

.method public vibrateByEffect(Landroid/os/VibrationEffect;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public vibrateByLinearmotorVibrator(Landroid/content/Context;I)Z
    .locals 0

    :try_start_0
    const-string p0, "linearmotor"

    .line 87
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/LinearmotorVibrator;

    if-eqz p0, :cond_0

    .line 89
    new-instance p1, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {p1}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    .line 90
    invoke-virtual {p1, p2}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/oppo/os/LinearmotorVibrator;->vibrate(Lcom/oppo/os/WaveformEffect;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "vibrateByLinearmotorVibrator t:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string p2, "VibrationHelper"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public vibrateCustomized(Landroid/content/Context;IZ)V
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrateCustomized type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "VibrationHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/coloros/systemui/gesture/-$$Lambda$VibrationHelper$9Mru90n5xBnyok0I5FwOfwrbsVk;-><init>(Lcom/coloros/systemui/gesture/VibrationHelper;ZLandroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public vibrateLinearOneShot()Z
    .locals 4

    .line 152
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearMotorSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 153
    sget-wide v2, Lcom/color/compat/os/VibratorNative;->RAPID_MIDDLE_ONESHOT_TIME:J

    sget v0, Lcom/color/compat/os/VibratorNative;->MIDDLE_AMPLITUDE:I

    invoke-static {v2, v3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/gesture/VibrationHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p0, v0}, Lcom/color/compat/os/VibratorNative;->linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
