.class public Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;
.super Ljava/lang/Object;
.source "CarrierChargingTextController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;
    }
.end annotation


# static fields
.field private static final BATTERY_TEMPERATURE_HIGH:I = 0x400

.field private static final BATTERY_TEMPERATURE_LOW:I = 0x800

.field private static final BATTERY_TEMPERATURE_TOO_HIGH:I = 0x8

.field private static final BATTERY_TEMPERATURE_TOO_LOW:I = 0x10

.field private static final TAG:Ljava/lang/String; = "CarrierChargingTxtCtr"


# instance fields
.field private mBatteryConnectNotGood:Z

.field private mBatteryFullCharged:Z

.field private mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mCarrierTextCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mHasVisibleNotification:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mNotifyCode:I

.field private mShowingBatteryInfo:Z

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$1;-><init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 74
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;-><init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 111
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mContext:Landroid/content/Context;

    .line 112
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->hasVisibleNotification()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mHasVisibleNotification:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCarrierTextCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryConnectNotGood:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mHasVisibleNotification:Z

    return p1
.end method

.method static synthetic access$102(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryConnectNotGood:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mNotifyCode:I

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mNotifyCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCharging:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryLevel:I

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$502(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryFullCharged:Z

    return p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryFullCharged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryIsLow:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryIsLow:Z

    return p1
.end method

.method static synthetic access$802(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->showChargingErrorNotice(I)Z

    move-result p0

    return p0
.end method

.method private getChargeInfo()Ljava/lang/String;
    .locals 4

    .line 144
    iget v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mNotifyCode:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->showChargingErrorNotice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mNotifyCode:I

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getChargingMessageId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCharging:Z

    if-eqz v0, :cond_4

    .line 147
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryConnectNotGood:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1103f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryFullCharged:Z

    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1103fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->hasKeyguardNotifications()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryLevel:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getContext()Landroid/content/Context;

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

    .line 155
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110416

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryIsLow:Z

    if-eqz v0, :cond_5

    .line 159
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110423

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getChargingMessageId(I)I
    .locals 1

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const p0, 0x7f110400

    return p0

    :cond_0
    and-int/lit16 p0, p1, 0x800

    const/16 v0, 0x800

    if-ne p0, v0, :cond_1

    const p0, 0x7f1103fe

    return p0

    :cond_1
    and-int/lit16 p0, p1, 0x400

    const/16 v0, 0x400

    if-ne p0, v0, :cond_2

    const p0, 0x7f1103fd

    return p0

    :cond_2
    const/16 p0, 0x8

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_3

    const p0, 0x7f1103ff

    return p0

    :cond_3
    const p0, 0x7f1103fc

    return p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private hasKeyguardNotifications()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mHasVisibleNotification:Z

    return p0
.end method

.method static synthetic lambda$postToCallback$0(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;Ljava/lang/String;)V
    .locals 0

    .line 209
    invoke-interface {p0, p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;->updateCarrierInfo(Ljava/lang/String;)V

    return-void
.end method

.method private showChargingErrorNotice(I)Z
    .locals 2

    .line 118
    iget p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mBatteryStatus:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    and-int/lit16 p0, p1, 0x400

    const/16 v1, 0x400

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    and-int/lit16 p0, p1, 0xc18

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method protected postToCallback(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 206
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 207
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCarrierTextCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    if-eqz p0, :cond_0

    .line 209
    new-instance v1, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/clock/-$$Lambda$CarrierChargingTextController$nF0cJKAQATBLdxEuaAo4Ov5E5aQ;-><init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setListening(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCarrierTextCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    .line 192
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 193
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCarrierTextCallback:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$CarrierChargingTextCallback;

    .line 197
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 199
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateChargingText()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->getChargeInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CarrierChargingTxtCtr"

    const-string v1, "get charge info failed!"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->postToCallback(Ljava/lang/String;)V

    return-void
.end method
