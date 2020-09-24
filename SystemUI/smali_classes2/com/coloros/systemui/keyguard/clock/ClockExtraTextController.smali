.class public Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;
.super Ljava/lang/Object;
.source "ClockExtraTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockExtraTextController"


# instance fields
.field private final TIME_SEND_SIGNATURE_MSG_DELAY:I

.field private mBatteryConnectNotGood:Z

.field private mBatteryFullCharged:Z

.field private mBatteryIsLow:Z

.field private mBatteryLevel:I

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mCharging:Z

.field private mCockExtraTextCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

.field private mContext:Landroid/content/Context;

.field private mHasVisibleNotification:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSignatureText:Ljava/lang/String;

.field private mUpdateSignatureRunnable:Ljava/lang/Runnable;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 57
    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->TIME_SEND_SIGNATURE_MSG_DELAY:I

    .line 64
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mUpdateSignatureRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$2;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 86
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 113
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mContext:Landroid/content/Context;

    .line 114
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->hasVisibleNotification()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mHasVisibleNotification:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCockExtraTextCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mSignatureText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryConnectNotGood:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryConnectNotGood:Z

    return p1
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCharging:Z

    return p1
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryFullCharged:Z

    return p1
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryIsLow:Z

    return p1
.end method

.method static synthetic access$702(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mHasVisibleNotification:Z

    return p1
.end method

.method private getChargeInfo()Ljava/lang/String;
    .locals 4

    .line 177
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCharging:Z

    if-eqz v0, :cond_3

    .line 178
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryConnectNotGood:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1103f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryFullCharged:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1103fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mHasVisibleNotification:Z

    if-eqz v0, :cond_2

    .line 183
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryLevel:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f110403

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110416

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 188
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryIsLow:Z

    if-eqz v0, :cond_4

    .line 190
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110423

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getChargeTextMsg()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getChargeInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ClockExtraTextController"

    const-string v1, "getChargeTextMsg charge info failed"

    .line 165
    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateExtraText$2(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V
    .locals 1

    const-string v0, ""

    .line 153
    invoke-interface {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;->updateExtraTextInfo(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateExtraText$0$ClockExtraTextController(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getChargeTextMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;->updateExtraTextInfo(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateExtraText$1$ClockExtraTextController(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->getChargeTextMsg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;->updateExtraTextInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setListening(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCockExtraTextCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    .line 204
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 205
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCockExtraTextCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    .line 209
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 211
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSignatureText(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mSignatureText:Ljava/lang/String;

    return-void
.end method

.method protected updateExtraText()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 126
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 127
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCockExtraTextCallback:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    if-eqz v1, :cond_3

    .line 130
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mCharging:Z

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;

    invoke-direct {v2, p0, v1}, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$I5Jk8k92Mly-Jj37Wy4BJc6MZ58;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mSignatureText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryFullCharged:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryConnectNotGood:Z

    if-nez v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mUpdateSignatureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mUpdateSignatureRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 145
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mBatteryIsLow:Z

    if-eqz v2, :cond_1

    .line 146
    new-instance v2, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$b4lWUzcr9Va3yQPllxskpCzRbfY;

    invoke-direct {v2, p0, v1}, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$b4lWUzcr9Va3yQPllxskpCzRbfY;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mSignatureText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->mUpdateSignatureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 153
    :cond_2
    new-instance p0, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$Lpr8dx9xwUiaQl9MXTsPNUXmj2U;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$ClockExtraTextController$Lpr8dx9xwUiaQl9MXTsPNUXmj2U;-><init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method
