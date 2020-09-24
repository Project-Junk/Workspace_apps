.class public Lcom/coloros/systemui/aod/common/AodManager;
.super Ljava/lang/Object;
.source "AodManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodManager"

.field private static sAodManager:Lcom/coloros/systemui/aod/common/AodManager;


# instance fields
.field private mAcquireWakeLockRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentNearState:Z

.field private final mCustomizeNumberLocales:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mOnNearState:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeTime:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ar-EG"

    const-string v1, "as-IN"

    const-string v2, "bn-BD"

    const-string v3, "fa-IR"

    const-string v4, "mr-IN"

    const-string v5, "ne-NP"

    const-string v6, "my-ZG"

    const-string v7, "my-MM"

    .line 52
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mCustomizeNumberLocales:[Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/coloros/systemui/aod/common/AodManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/common/AodManager$1;-><init>(Lcom/coloros/systemui/aod/common/AodManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mAcquireWakeLockRunnable:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/coloros/systemui/aod/common/AodManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/common/AodManager;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/common/AodManager;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private checkIfShowCustomizedView()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    const-string v1, "my-MM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "my-ZG"

    .line 100
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 99
    :goto_1
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setMyMmLanguage(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;
    .locals 1

    .line 56
    sget-object v0, Lcom/coloros/systemui/aod/common/AodManager;->sAodManager:Lcom/coloros/systemui/aod/common/AodManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/coloros/systemui/aod/common/AodManager;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/common/AodManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/common/AodManager;->sAodManager:Lcom/coloros/systemui/aod/common/AodManager;

    .line 59
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/common/AodManager;->sAodManager:Lcom/coloros/systemui/aod/common/AodManager;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/aod/common/AodManager;->checkIfShowCustomizedView()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWindowManager:Landroid/view/WindowManager;

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "AodService:wakeLock"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(J)V
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodManager"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput-wide p1, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeTime:J

    .line 126
    iget-object p1, p0, Lcom/coloros/systemui/aod/common/AodManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/systemui/aod/common/AodManager;->mAcquireWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/aod/common/AodManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mAcquireWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkNotInCall()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getNextFocusPosition(I)I
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 192
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionOne()I

    move-result p0

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionFive()I

    move-result p0

    goto :goto_0

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionFour()I

    move-result p0

    goto :goto_0

    .line 183
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionThree()I

    move-result p0

    goto :goto_0

    .line 180
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionTwo()I

    move-result p0

    goto :goto_0

    .line 177
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionOne()I

    move-result p0

    goto :goto_0

    .line 174
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/focusmode/FocusAodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodData;->getAodTopRegionZero()I

    move-result p0

    .line 194
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNextFocusPosition: topPosition is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Aod"

    const-string v1, "AodManager"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getNextNormalPosition(I)I
    .locals 2

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionOne()I

    move-result p0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionFive()I

    move-result p0

    goto :goto_0

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionFour()I

    move-result p0

    goto :goto_0

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionThree()I

    move-result p0

    goto :goto_0

    .line 152
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionTwo()I

    move-result p0

    goto :goto_0

    .line 149
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionOne()I

    move-result p0

    goto :goto_0

    .line 146
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodTopRegionZero()I

    move-result p0

    .line 166
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNextNormalPosition: topPosition is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Aod"

    const-string v1, "AodManager"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getNextPosition()I
    .locals 2

    .line 138
    new-instance p0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v0, 0x6

    .line 139
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public getScreenState()I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    .line 89
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCurrentNearState()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mCurrentNearState:Z

    return p0
.end method

.method public releaseWakeLock()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mOnNearState:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeLock isHeld: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodManager"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentNearState(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/common/AodManager;->mCurrentNearState:Z

    return-void
.end method

.method public setOnNearState(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/common/AodManager;->mOnNearState:Z

    return-void
.end method
