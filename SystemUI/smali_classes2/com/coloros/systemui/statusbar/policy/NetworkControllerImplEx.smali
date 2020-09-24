.class public Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;
.super Ljava/lang/Object;
.source "NetworkControllerImplEx.java"


# static fields
.field public static final ACTION_IMS_STATE_CHANGED:Ljava/lang/String; = "com.android.ims.IMS_STATE_CHANGED"

.field private static final ACTION_INCALLUI_CU_HD_AUDIO:Ljava/lang/String; = "com.oppo.incallui.cu.hd.audio"

.field public static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field public static final ACTION_WIFI_SWITCH_TO_DATA_NETWORK:Ljava/lang/String; = "android.net.wifi.WIFI_TO_DATA"

.field private static final EXTRA_IFACE_NAME:Ljava/lang/String; = "iface_name"

.field private static final EXTRA_INCALLUI_CU_HD_AUDIO_SHOW:Ljava/lang/String; = "incallui_cu_hd_audio_show"

.field private static final EXTRA_WIFI_INVALID:Ljava/lang/String; = "wifi_network_invalid"

.field private static final EXTRA_WIFI_NAME:Ljava/lang/String; = "wlan1"

.field public static final EXTRA_WIFI_SWITCH_TO_DATA_NETWORK:Ljava/lang/String; = "wifi_to_data"

.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetworkControllerImplEx"

.field private static final WIFI_NETWORK_CHANGE:Ljava/lang/String; = "android.net.wifi2.WIFI_NETWORK_INVALID"

.field private static sInstance:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWifiToData:Z

.field private mLastSimForbidden:[Z

.field private mLastSimInserted:[Z

.field private mMainCard:I

.field private final mPrimarySlotObserver:Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimForbidden:[Z

.field private mSimInserted:[Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 67
    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    .line 68
    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    .line 69
    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimInserted:[Z

    .line 70
    new-array v0, v0, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimForbidden:[Z

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mIsWifiToData:Z

    .line 76
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$1;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mPrimarySlotObserver:Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;

    .line 122
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$2;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;)V

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mPrimarySlotObserver:Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/coloros/systemui/statusbar/observer/PrimarySlotObserver;->register(Landroid/content/Context;Z)V

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getSimInserted(Landroid/content/Context;I)Z

    move-result v1

    aput-boolean v1, p1, v0

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getSimInserted(Landroid/content/Context;I)Z

    move-result v1

    aput-boolean v1, p1, v2

    .line 100
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSlotForbidden(Landroid/content/Context;I)Z

    move-result v1

    aput-boolean v1, p1, v0

    .line 101
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSlotForbidden(Landroid/content/Context;I)Z

    move-result v0

    aput-boolean v0, p1, v2

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/utils/StatusBarSettingsValueProxy;->getPrimarySlotState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mMainCard:I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mMainCard:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;
    .locals 1

    .line 87
    sget-object v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->sInstance:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->sInstance:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 90
    :cond_0
    sget-object p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->sInstance:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    return-object p0
.end method


# virtual methods
.method public addAction(Landroid/content/IntentFilter;)V
    .locals 0

    const-string p0, "android.net.wifi.WIFI_TO_DATA"

    .line 106
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.net.wifi2.WIFI_NETWORK_INVALID"

    .line 107
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public getIsWifiToData()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mIsWifiToData:Z

    return p0
.end method

.method public getLastSimForbidden()[Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimForbidden:[Z

    return-object p0
.end method

.method public getLastSimInserted()[Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimInserted:[Z

    return-object p0
.end method

.method public getMainCard()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mMainCard:I

    return p0
.end method

.method public getSimForbiddenStatus()[Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    return-object p0
.end method

.method public getSimInsertedStatus()[Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    return-object p0
.end method

.method public handleBroadcast(Landroid/content/Intent;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)V
    .locals 7

    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBroadcast:action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkControllerImplEx"

    const-string v3, "Statusbar"

    invoke-static {v3, v2, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x2bae28a3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v4, :cond_1

    const v4, 0x67af69ad

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.net.wifi.WIFI_TO_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_1
    const-string v1, "android.net.wifi2.WIFI_NETWORK_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "iface_name"

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "wlan1"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "wifi_network_invalid"

    .line 149
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p2, :cond_6

    if-nez p1, :cond_4

    .line 151
    sget-object v1, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/statusbar/utils/WifiDualUtils;->isDualWifiConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    iput-boolean v5, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", invalid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", doubleWifi = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p2, "wifi_to_data"

    .line 144
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mIsWifiToData:Z

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_WIFI_SWITCH_TO_DATA_NETWORK, mIsWifiToData:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mIsWifiToData:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public handleSimStatusChange(Landroid/content/Intent;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "phone"

    .line 203
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0xdb21ee7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x7a525f0b

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_3

    goto :goto_2

    :cond_3
    if-le p1, v1, :cond_4

    .line 209
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->getSimInserted(Landroid/content/Context;I)Z

    move-result v3

    aput-boolean v3, v2, p1

    .line 210
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSlotForbidden(Landroid/content/Context;I)Z

    move-result v3

    aput-boolean v3, v2, p1

    :cond_4
    :goto_2
    if-le p1, v1, :cond_7

    .line 216
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimForbidden:[Z

    aget-boolean v2, v2, p1

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    aget-boolean v3, v3, p1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimInserted:[Z

    aget-boolean v2, v2, p1

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    aget-boolean v3, v3, p1

    if-eq v2, v3, :cond_7

    .line 218
    :cond_5
    :goto_3
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_7

    .line 219
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 220
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 221
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string p2, "NetworkControllerImplEx"

    const-string v2, "Statusbar"

    if-le p1, v1, :cond_8

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStatusChange,action = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",slotId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mMainCard = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mMainCard:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mSimForbidden = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mSimInserted  = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mLastSimForbidden = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimForbidden:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mLastSimInserted  = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimInserted:[Z

    aget-boolean v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimInserted:[Z

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    aget-boolean v0, v0, p1

    aput-boolean v0, p2, p1

    .line 237
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimForbidden:[Z

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    aget-boolean p0, p0, p1

    aput-boolean p0, p2, p1

    goto :goto_4

    :cond_8
    const-string p0, "handleSimStatusChange slotId <= -1"

    .line 239
    invoke-static {v2, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public isSimInserted(I)Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isSimStateChange(I)Z
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimInserted:[Z

    aget-boolean v1, v0, p1

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimInserted:[Z

    aget-boolean v3, v2, p1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    .line 189
    aget-boolean v0, v0, p1

    aput-boolean v0, v2, p1

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mSimForbidden:[Z

    aget-boolean v2, v1, p1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mLastSimForbidden:[Z

    aget-boolean v3, p0, p1

    if-eq v2, v3, :cond_1

    .line 194
    aget-boolean v0, v1, p1

    aput-boolean v0, p0, p1

    move v0, v4

    :cond_1
    return v0
.end method

.method public registerReceiver(Landroid/os/Looper;)V
    .locals 3

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.ims.IMS_STATE_CHANGED"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oppo.incallui.cu.hd.audio"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p0, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
