.class public Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "SwitchCellularDataTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;,
        Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SwitchCellularDataTile"

.field private static final OPPO_MULTI_SIM_NETWORK_PRIMARY_SLOT:Ljava/lang/String; = "oppo_multi_sim_network_primary_slot"

.field private static final SIM1_MODE:I = 0x1

.field private static final SIM2_MODE:I = 0x2

.field private static final SIM_MODE_ALL:I = 0x3

.field private static final SIM_MODE_NONE:I = 0x0

.field private static final SLOT_1:I = 0x0

.field private static final SLOT_2:I = 0x1


# instance fields
.field private mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

.field private mDataPrimaryObserver:Landroid/database/ContentObserver;

.field private mIsDataObserverRegistered:Z

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mSignalCallback:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;

.field private mSimState:I

.field private mSoltId:I

.field private mSwitchDataPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnavailable:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mUnavailable:Z

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSimState:I

    .line 45
    iput v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    .line 49
    new-instance v0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;-><init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSignalCallback:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;

    .line 270
    new-instance v0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$1;-><init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mDataPrimaryObserver:Landroid/database/ContentObserver;

    .line 295
    new-instance v0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$2;-><init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSwitchDataPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 55
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->getPrimarySlotId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    const-string v0, "oppo_multi_sim_network_primary_slot"

    .line 58
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mDataPrimaryObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, v0, v2, v1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->registerObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mIsDataObserverRegistered:Z

    .line 60
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSwitchDataPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 62
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Landroid/content/Context;)I
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->getPrimarySlotId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getPrimarySlotId(Landroid/content/Context;)I
    .locals 1

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "oppo_multi_sim_network_primary_slot"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getSimState()I
    .locals 9

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result v2

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v1

    .line 174
    :goto_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "has SIM1="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "   has SIM2="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    const/4 v1, 0x3

    :cond_5
    :goto_3
    return v1
.end method

.method private getSwitchDataSettingIntent()Landroid/content/Intent;
    .locals 4

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.intent.action.MOBILE_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 238
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    const-string v3, "SwitchCellularDataTile"

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 239
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    const-string v2, "slot_id"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using vendor network settings for sub: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string p0, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p0, -0x1

    if-eq v1, p0, :cond_1

    .line 245
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    const-string v2, "android.provider.extra.SUB_ID"

    .line 244
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using default network settings for sub: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private isSimEnabled()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSimInserted(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 155
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSimInserted(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mColorOSTelephonyManager:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    move p0, v1

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    goto :goto_1

    :catch_1
    move-exception v2

    move v3, v1

    .line 159
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get sim state error e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    move v2, v3

    :goto_2
    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    return v0
.end method

.method private registerObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setPrimarySlotId(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_multi_sim_network_primary_slot"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->refreshState()V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimarySlotId error slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    const p0, 0x7f0808bd

    .line 218
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->getSwitchDataSettingIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 209
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    const v0, 0x7f110701

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mUnavailable:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 85
    iput v1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    .line 90
    :cond_2
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    invoke-direct {p0, v0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->setPrimarySlotId(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 68
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mIsDataObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mDataPrimaryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mIsDataObserverRegistered:Z

    :cond_0
    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSignalCallback:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSignalCallback:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .locals 11

    .line 95
    check-cast p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    if-nez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSignalCallback:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;

    invoke-static {p2}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;->access$100(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CellSignalCallback;)Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;

    move-result-object p2

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110701

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->label:Ljava/lang/CharSequence;

    .line 100
    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSoltId:I

    const v1, 0x7f0808c2

    const v2, 0x7f0808c0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 101
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-ne v0, v3, :cond_1

    const v0, 0x7f0808bf

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_2
    if-ne v0, v4, :cond_4

    .line 104
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    if-ne v0, v3, :cond_3

    const v0, 0x7f0808c1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 107
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSimState:I

    .line 108
    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSimState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v5, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v6

    .line 110
    :goto_3
    invoke-direct {p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->isSimEnabled()Z

    move-result v7

    .line 111
    iget-object v8, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSimState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSimState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  isEnabledSwitch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "  isEnabledSim="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "   cb.noSim="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->noSim:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "   airplaneModeEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->airplaneModeEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v8, p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->airplaneModeEnabled:Z

    iget-boolean v9, p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->noSim:Z

    or-int/2addr v8, v9

    if-nez v8, :cond_7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {v7}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ColorOSTelephonyManager;->isColorHasSoftSimCard()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 117
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v4

    :goto_5
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mUnavailable:Z

    .line 120
    iget v0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mSimState:I

    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v5, :cond_8

    goto :goto_6

    .line 134
    :cond_8
    iget-boolean p2, p2, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz p2, :cond_9

    .line 135
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    goto :goto_6

    .line 137
    :cond_9
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    goto :goto_6

    .line 130
    :cond_a
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 131
    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_6

    .line 126
    :cond_b
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 127
    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_6

    :cond_c
    const p2, 0x7f0808be

    .line 122
    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 123
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    .line 143
    :goto_6
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mUnavailable:Z

    if-eqz p0, :cond_d

    .line 144
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->state:I

    :cond_d
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .locals 0

    .line 76
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method
