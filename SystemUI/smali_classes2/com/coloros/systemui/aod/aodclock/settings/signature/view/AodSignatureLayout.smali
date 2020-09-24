.class public Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;
.super Landroid/widget/FrameLayout;
.source "AodSignatureLayout.java"

# interfaces
.implements Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;


# static fields
.field private static final TAG:Ljava/lang/String; = "AodSignatureLayout"


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

.field private mContext:Landroid/content/Context;

.field private mFirstShowFromSleep:Z

.field private mFirstSuspendDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mHasRegisterAodBroadcast:Z

.field private mHasRegisterReceiver:Z

.field private mLastPosition:I

.field private mSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;

.field private mSuspendDelay:I

.field private final mSuspendSetRunnable:Ljava/lang/Runnable;

.field private mTopOffset:I

.field private mUpdateCount:I

.field private final mWakeAodReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 74
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x2

    .line 51
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mLastPosition:I

    const/4 p2, -0x1

    .line 52
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstShowFromSleep:Z

    const/4 p3, 0x0

    .line 63
    iput p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mTopOffset:I

    .line 208
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$1;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    .line 232
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$2;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$2;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeAodReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$3;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout$3;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    .line 76
    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d0045

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a052f

    .line 77
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;

    .line 78
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result p2

    const-string p3, "AodSignatureLayout"

    const-string v0, "Aod"

    if-nez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0703fc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 81
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, p2, v1

    .line 82
    iput v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mTopOffset:I

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLockIconHeight-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  mStatusBarHeight-->"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  mTopOffset-->"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mTopOffset:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p3, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->initAodClockHelper(Lcom/coloros/systemui/aod/aodclock/policy/IAodClockPolicy;)V

    .line 91
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "AOD switch: ON "

    .line 92
    invoke-static {v0, p3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->initAodData()V

    .line 94
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->registerAodBroadcast()V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->registerAlarmBroadcast()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelAlarmIntent()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private initAodData()V
    .locals 2

    .line 100
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 101
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstSuspendDelay:I

    .line 102
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendDelay:I

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static synthetic lambda$24jj9x9xtq6P_WDO3FHHRKFEUe0(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->updateContentAndPosition()V

    return-void
.end method

.method private registerAodBroadcast()V
    .locals 6

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.aod.WAKEUP_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeAodReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHasRegisterAodBroadcast:Z

    const-string p0, "Aod"

    const-string v0, "AodSignatureLayout"

    const-string v1, "registerAodBroadcast: with oppo safe permissions"

    .line 249
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterAodBroadcast()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHasRegisterAodBroadcast:Z

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeAodReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHasRegisterAodBroadcast:Z

    :cond_1
    return-void
.end method

.method private updateContentAndPosition()V
    .locals 6

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateContentAndPosition: mUpdateCount is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSignatureLayout"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    const/4 v3, 0x2

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getNextPosition()I

    move-result v0

    .line 178
    :goto_0
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mLastPosition:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getNextPosition()I

    move-result v0

    goto :goto_0

    .line 181
    :cond_0
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mLastPosition:I

    .line 182
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/coloros/systemui/aod/common/AodManager;->getNextNormalPosition(I)I

    move-result v3

    .line 183
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mTopOffset:I

    if-ge v3, v4, :cond_1

    move v3, v4

    .line 184
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContentAndPosition: mTopOffset-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mTopOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   topMargin-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->updateNextPosition(I)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContentAndPosition: position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    .line 190
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getNextRtcTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setExactTimeForAlarm(J)V

    .line 191
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setAodSuspendState()V

    return-void
.end method

.method private updateLayout()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/SignatureLayout;->updateSignature()V

    return-void
.end method


# virtual methods
.method public hideClock()V
    .locals 3

    const-string v0, "Aod"

    const-string v1, "AodSignatureLayout"

    const-string v2, "hideClock"

    .line 281
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/16 v0, 0x8

    .line 286
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->updateAodDozeStateAndStart(I)V

    return-void
.end method

.method public onAodClockLayoutDestroy()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->unregisterAodBroadcast()V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHasRegisterReceiver:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onAodDreamingStarted()V
    .locals 0

    return-void
.end method

.method public onAodDreamingStopped()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    return-void
.end method

.method public performTimeUpdate()V
    .locals 9

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    const-string v1, "AodSignatureLayout"

    const-string v2, "Aod"

    if-eqz v0, :cond_0

    const-string p0, "performTimeUpdate : return because aod is closed"

    .line 131
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnableTimeOpen()Z

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->checkInDuration(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getMillisToBeginTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "performTimeUpdate: suspend and make a alarm to wake up. timeToStartInMillis is "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mWakeIntent:Landroid/app/PendingIntent;

    .line 141
    invoke-virtual {v0, v1, v7, v8, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->updateAodDozeStateAndStart(I)V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstShowFromSleep:Z

    const/16 v0, 0x8

    .line 146
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setAodSuspendState()V

    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->updateInfo()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performTimeUpdate-Battery Status: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isLowBattery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->hideClock()V

    return-void

    .line 160
    :cond_2
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setVisibility(I)V

    .line 161
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstShowFromSleep:Z

    if-eqz v0, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->updateLayout()V

    .line 163
    iput-boolean v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstShowFromSleep:Z

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->updateAodDozeStateAndStart(I)V

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$AodSignatureLayout$24jj9x9xtq6P_WDO3FHHRKFEUe0;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/-$$Lambda$AodSignatureLayout$24jj9x9xtq6P_WDO3FHHRKFEUe0;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public registerAlarmBroadcast()V
    .locals 4

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.aod.UPDATE_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 324
    iput-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHasRegisterReceiver:Z

    .line 325
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setAodDozeScreenState(I)V
    .locals 2

    .line 303
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAodDozeScreenState: state is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodSignatureLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->setAodDozeScreenState(I)V

    return-void
.end method

.method public setAodSuspendState()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstSuspendDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mBatteryStatus:Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    .line 202
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendDelay:I

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendSetRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mSuspendDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setExactTimeForAlarm(J)V
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExactTimeForAlarm: timeToAlarm is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "AodSignatureLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mAlarmIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public showClock()V
    .locals 4

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mFirstShowFromSleep:Z

    .line 272
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mUpdateCount:I

    .line 273
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    const/4 v1, 0x0

    .line 274
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->performTimeUpdate()V

    .line 276
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    return-void
.end method

.method public startShowAod()V
    .locals 3

    const-string v0, "Aod"

    const-string v1, "AodSignatureLayout"

    const-string v2, "startShowAod"

    .line 117
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodIsInShow(Z)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setFirstTimeInAod(Z)V

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodDelayState(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->performTimeUpdate()V

    return-void
.end method

.method public updateAodDozeStateAndStart(I)V
    .locals 2

    .line 292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAodDozeStateAndStart: state is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodSignatureLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->setAodDozeScreenState(I)V

    .line 294
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->onStartDozing()V

    return-void
.end method

.method public updateNextPosition(I)V
    .locals 2

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNextPosition: position is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Aod"

    const-string v1, "AodSignatureLayout"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/common/DreamHelper;->updateNextPosition(I)V

    return-void
.end method
