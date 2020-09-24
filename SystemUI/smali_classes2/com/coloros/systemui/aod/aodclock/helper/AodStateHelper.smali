.class public Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;
.super Ljava/lang/Object;
.source "AodStateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodStateHelper"

.field private static sAodStateHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;


# instance fields
.field private mAodAlignTypeObserver:Landroid/database/ContentObserver;

.field private mAodBlackListObserver:Landroid/database/ContentObserver;

.field private mAodClockModeObserver:Landroid/database/ContentObserver;

.field private mAodClockOnlyObserver:Landroid/database/ContentObserver;

.field private mAodColorObserver:Landroid/database/ContentObserver;

.field private mAodCurvedDisplayNotificationObserver:Landroid/database/ContentObserver;

.field private mAodDateModeObserver:Landroid/database/ContentObserver;

.field private mAodFontSizeObserver:Landroid/database/ContentObserver;

.field private mAodFontTypeObserver:Landroid/database/ContentObserver;

.field private mAodImmediateObserver:Landroid/database/ContentObserver;

.field private mAodRealmeBatteryObserver:Landroid/database/ContentObserver;

.field private mAodRealmeClockObserver:Landroid/database/ContentObserver;

.field private mAodRealmeDateObserver:Landroid/database/ContentObserver;

.field private mAodRealmeDateWayObserver:Landroid/database/ContentObserver;

.field private mAodRealmeNotificationObserver:Landroid/database/ContentObserver;

.field private mAodSignatureObserver:Landroid/database/ContentObserver;

.field private mAodSignatureTextObserver:Landroid/database/ContentObserver;

.field private mAodTimeSetBeginHourObserver:Landroid/database/ContentObserver;

.field private mAodTimeSetBeginMinObserver:Landroid/database/ContentObserver;

.field private mAodTimeSetEndHourObserver:Landroid/database/ContentObserver;

.field private mAodTimeSetEndMinObserver:Landroid/database/ContentObserver;

.field private mAodTimeSetObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFocusSetObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$1;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetBeginHourObserver:Landroid/database/ContentObserver;

    .line 136
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$2;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetBeginMinObserver:Landroid/database/ContentObserver;

    .line 146
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$3;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetEndHourObserver:Landroid/database/ContentObserver;

    .line 156
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetEndMinObserver:Landroid/database/ContentObserver;

    .line 166
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$6;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mFocusSetObserver:Landroid/database/ContentObserver;

    .line 186
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$7;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodImmediateObserver:Landroid/database/ContentObserver;

    .line 199
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$8;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodClockModeObserver:Landroid/database/ContentObserver;

    .line 209
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$9;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodClockOnlyObserver:Landroid/database/ContentObserver;

    .line 220
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$10;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodDateModeObserver:Landroid/database/ContentObserver;

    .line 230
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodCurvedDisplayNotificationObserver:Landroid/database/ContentObserver;

    .line 302
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$12;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeClockObserver:Landroid/database/ContentObserver;

    .line 311
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$13;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeDateObserver:Landroid/database/ContentObserver;

    .line 320
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$14;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeDateWayObserver:Landroid/database/ContentObserver;

    .line 329
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$15;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeNotificationObserver:Landroid/database/ContentObserver;

    .line 338
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$16;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$16;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeBatteryObserver:Landroid/database/ContentObserver;

    .line 348
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$17;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$17;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodSignatureTextObserver:Landroid/database/ContentObserver;

    .line 357
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$18;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$18;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodBlackListObserver:Landroid/database/ContentObserver;

    .line 383
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$19;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$19;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodSignatureObserver:Landroid/database/ContentObserver;

    .line 392
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$20;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$20;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodColorObserver:Landroid/database/ContentObserver;

    .line 401
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$21;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$21;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodAlignTypeObserver:Landroid/database/ContentObserver;

    .line 410
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$22;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$22;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodFontSizeObserver:Landroid/database/ContentObserver;

    .line 419
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$23;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$23;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodFontTypeObserver:Landroid/database/ContentObserver;

    .line 56
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Lcom/coloros/systemui/aod/aodclock/helper/-$$Lambda$AodStateHelper$EwEsgwCIrg_NC7z_Gls8FYt6v9w;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/aod/aodclock/helper/-$$Lambda$AodStateHelper$EwEsgwCIrg_NC7z_Gls8FYt6v9w;-><init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)V

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->uploadAodTimeSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->setAodEnableState()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;
    .locals 1

    .line 49
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->sAodStateHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->sAodStateHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    .line 52
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->sAodStateHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    return-object p0
.end method

.method private init()V
    .locals 5

    const-wide/16 v0, 0x8

    const-string v2, "AodStateHelper init "

    .line 61
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->initAodData()V

    .line 63
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->registerAodState()V

    .line 67
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->initAodData()V

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->registerAodSignatureState()V

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "Setting_AodEnableImmediate"

    invoke-static {v2, v4, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodEnableImmediate(I)V

    .line 76
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->setAodEnableState()V

    .line 77
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static synthetic lambda$EwEsgwCIrg_NC7z_Gls8FYt6v9w(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->init()V

    return-void
.end method

.method private registerAodSignatureState()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "key_realme_aod_clock_mode"

    .line 265
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeClockObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 264
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "key_aod_clock_date"

    .line 268
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeDateObserver:Landroid/database/ContentObserver;

    .line 267
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "key_aod_clock_date_select"

    .line 271
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeDateWayObserver:Landroid/database/ContentObserver;

    .line 270
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "key_realme_aod_notification_icon"

    .line 274
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeNotificationObserver:Landroid/database/ContentObserver;

    .line 273
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 276
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "key_realme_aod_battery"

    .line 277
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodRealmeBatteryObserver:Landroid/database/ContentObserver;

    .line 276
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_text"

    .line 280
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodSignatureTextObserver:Landroid/database/ContentObserver;

    .line 279
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 282
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_notification_black_pkg"

    .line 283
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodBlackListObserver:Landroid/database/ContentObserver;

    .line 282
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "key_realme_aod_signature"

    .line 286
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodSignatureObserver:Landroid/database/ContentObserver;

    .line 285
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 288
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_color_index"

    .line 289
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodColorObserver:Landroid/database/ContentObserver;

    .line 288
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 291
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_aligntype_index"

    .line 292
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodAlignTypeObserver:Landroid/database/ContentObserver;

    .line 291
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 294
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_fontsize_index"

    .line 295
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodFontSizeObserver:Landroid/database/ContentObserver;

    .line 294
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 297
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "realme_aod_signature_face_type_index"

    .line 298
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodFontTypeObserver:Landroid/database/ContentObserver;

    .line 297
    invoke-static {v0, v1, v4, p0, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private registerAodState()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodEnableImmediate"

    .line 82
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodImmediateObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 81
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodUserSetTime"

    .line 85
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetObserver:Landroid/database/ContentObserver;

    .line 84
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "focusmode_screen_off_clock"

    .line 88
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mFocusSetObserver:Landroid/database/ContentObserver;

    .line 87
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodClockMode"

    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodClockModeObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodEnableClockOnly"

    .line 93
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodClockOnlyObserver:Landroid/database/ContentObserver;

    .line 92
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodEnableDateMode"

    .line 96
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodDateModeObserver:Landroid/database/ContentObserver;

    .line 95
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodSetTimeBeginHour"

    .line 100
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetBeginHourObserver:Landroid/database/ContentObserver;

    .line 99
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodSetTimeBeginMin"

    .line 103
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetBeginMinObserver:Landroid/database/ContentObserver;

    .line 102
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodSetTimeEndHour"

    .line 106
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetEndHourObserver:Landroid/database/ContentObserver;

    .line 105
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodSetTimeEndMin"

    .line 109
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodTimeSetEndMinObserver:Landroid/database/ContentObserver;

    .line 108
    invoke-static {v0, v1, v4, v2, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "oppo_aod_curved_display_notification_switch"

    .line 113
    invoke-static {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mAodCurvedDisplayNotificationObserver:Landroid/database/ContentObserver;

    .line 112
    invoke-static {v0, v1, v4, p0, v3}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method private setAodEnableState()V
    .locals 6

    .line 245
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v3, "oppo_aod_curved_display_notification_switch"

    .line 246
    invoke-static {v0, v3, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 248
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->isShowFocusClock(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "Setting_AodEnable"

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v5, "Setting_AodEnableImmediate"

    .line 249
    invoke-static {v3, v5, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v1, "OFF"

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodEnable(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodEnable(I)V

    .line 257
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 251
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v2, "ON"

    invoke-static {v0, v2}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodEnable(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodEnable(I)V

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v4, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method private uploadAodTimeSettings()V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Setting_AodSetTimeBeginHour"

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 120
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v3, "Setting_AodSetTimeBeginMin"

    invoke-static {v2, v3, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 121
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v4, "Setting_AodSetTimeEndHour"

    invoke-static {v3, v4, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 122
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    const-string v5, "Setting_AodSetTimeEndMin"

    invoke-static {v4, v5, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 123
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3, v1}, Lcom/coloros/systemui/aod/aodclock/util/CalendarUtils;->getUserSetTime(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodTimeSettings(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
