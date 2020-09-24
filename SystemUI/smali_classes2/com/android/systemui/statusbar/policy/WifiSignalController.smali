.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;,
        Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final RSSI_LEVEL:Ljava/lang/String;

.field private final mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mHasMobileData:Z

.field mRssiChangeObserver:Landroid/database/ContentObserver;

.field private final mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/wifi/WifiManager;)V
    .locals 30

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    const-string v1, "WifiSignalController"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const-string v9, "rssi_level"

    .line 59
    iput-object v9, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->RSSI_LEVEL:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mRssiChangeObserver:Landroid/database/ContentObserver;

    .line 67
    const-class v0, Landroid/net/NetworkScoreManager;

    .line 68
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/NetworkScoreManager;

    .line 69
    const-class v0, Landroid/net/ConnectivityManager;

    .line 70
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 71
    new-instance v7, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/systemui/statusbar/policy/-$$Lambda$WifiSignalController$AffzGdHvQakHA4bIzi_tW1MVLCY;

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/policy/-$$Lambda$WifiSignalController$AffzGdHvQakHA4bIzi_tW1MVLCY;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V

    move-object v0, v7

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 73
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    move/from16 v0, p2

    .line 74
    iput-boolean v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    if-eqz v8, :cond_0

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Lcom/android/systemui/statusbar/policy/WifiSignalController$1;)V

    invoke-virtual {v8, v0, v2}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Landroid/net/wifi/WifiManager$TrafficStateCallback;Landroid/os/Handler;)V

    .line 79
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 85
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_WIFI_SIGNAL_STRENGTH:[[I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    :goto_0
    move-object v12, v2

    sget-object v13, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v14, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v15, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v16, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v17, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v18, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v11, "Wi-Fi Icons"

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v22, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sget-object v24, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v25, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v26, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v27, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v28, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v29, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v21, "Wi-Fi 4 Icons"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v29}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v12, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_SIGNAL_STRENGTH:[[I

    sget-object v13, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    sget-object v14, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v15, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v16, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v17, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v18, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v19, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v11, "Wi-Fi 5 Icons"

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v22, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    sget-object v24, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v25, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v26, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v27, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_NETWORK:I

    sget v28, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_NO_NETWORK:I

    sget v29, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    const-string v21, "Wi-Fi 6 Icons"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v29}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 136
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mRssiChangeObserver:Landroid/database/ContentObserver;

    .line 136
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    return-void
.end method

.method private handleStatusUpdated()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public static synthetic lambda$AffzGdHvQakHA4bIzi_tW1MVLCY(Lcom/android/systemui/statusbar/policy/WifiSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleStatusUpdated()V

    return-void
.end method

.method private updateIconGroup()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi4IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi5IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_0
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_1

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifi6IconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_1

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mDefaultWifiIconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :goto_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-result-object p0

    return-object p0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;
    .locals 0

    .line 161
    new-instance p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;-><init>()V

    return-object p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 3

    .line 229
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPlatformQcom()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;Z)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->rssi:I

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->wifiGeneration:I

    iput v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->wifiGenerationVersion:I

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->vhtMax8SpatialStreamsSupport:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->twtSupport:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isReady:Z

    .line 248
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->handleBroadcast(Landroid/content/Intent;Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi Broadcast action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " connected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ssid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rssi="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget p1, p1, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "WifiSignalController"

    .line 250
    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result p1

    if-nez p1, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateIconGroup()V

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 13

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 179
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    if-nez v0, :cond_2

    .line 182
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v3, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getIsWifiToData()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHasMobileData:Z

    if-nez v0, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    move-object v10, v3

    if-eqz v0, :cond_5

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    .line 191
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getContentDescription()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    if-nez v5, :cond_6

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    const v6, 0x7f1102c7

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    :cond_6
    new-instance v6, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getCurrentIconId()I

    move-result v5

    invoke-direct {v6, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 196
    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getQsCurrentIconId()I

    move-result v5

    invoke-direct {v7, v0, v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->doubleWifi:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiDouble(Z)V

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    if-eqz v0, :cond_8

    move v8, v1

    goto :goto_4

    :cond_8
    move v8, v2

    :goto_4
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    if-eqz v0, :cond_9

    move v9, v1

    goto :goto_5

    :cond_9
    move v9, v2

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->isTransient:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    move-object v4, p1

    invoke-interface/range {v4 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method refreshLocale()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->refreshLocale()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListenersIfNecessary()V

    return-void
.end method
