.class public Lcom/android/internal/telephony/DeviceStateMonitor;
.super Landroid/os/Handler;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;
    }
.end annotation


# static fields
.field static final CELL_INFO_INTERVAL_LONG_MS:I = 0x2710
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CELL_INFO_INTERVAL_SHORT_MS:I = 0x7d0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected static final DBG:Z = false

.field static final EVENT_CHARGING_STATE_CHANGED:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EVENT_POWER_SAVE_MODE_CHANGED:I = 0x3

.field static final EVENT_RADIO_AVAILABLE:I = 0x6

.field static final EVENT_RIL_CONNECTED:I = 0x0

.field static final EVENT_SCREEN_STATE_CHANGED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EVENT_TETHERING_STATE_CHANGED:I = 0x5

.field static final EVENT_UPDATE_MODE_CHANGED:I = 0x1

.field static final EVENT_WIFI_CONNECTION_CHANGED:I = 0x7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final HYSTERESIS_KBPS:I = 0x32

.field private static final LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

.field private static final LINK_CAPACITY_UPLINK_THRESHOLDS:[I

.field protected static final TAG:Ljava/lang/String; = "DeviceStateMonitor"

.field private static final WIFI_AVAILABLE:I = 0x1

.field private static final WIFI_UNAVAILABLE:I


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCellInfoMinInterval:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mIsCharging:Z

.field private mIsLowDataExpected:Z

.field private mIsPowerSaveOn:Z

.field private mIsScreenOn:Z

.field private mIsTetheringOn:Z

.field private mIsWifiConnected:Z

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mUnsolicitedResponseFilter:I

.field private mUpdateModes:Landroid/util/SparseIntArray;

.field private final mWifiNetworkRequest:Landroid/net/NetworkRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    .line 764
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    .line 773
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    return-void

    :array_0
    .array-data 4
        0x1f4
        0x3e8
        0x1388
        0x2710
        0x4e20
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x1f4
        0x3e8
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 246
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 89
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 92
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 93
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mWifiNetworkRequest:Landroid/net/NetworkRequest;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$1;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v0, 0x7d0

    .line 171
    iput v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    .line 174
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 180
    iput v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    .line 182
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$2;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 202
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DeviceStateMonitor$3;-><init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 250
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isDeviceCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 254
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    .line 257
    iput-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DeviceStateMonitor mIsPowerSaveOn="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsScreenOn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsCharging="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 262
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 263
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.os.action.CHARGING"

    .line 264
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.os.action.DISCHARGING"

    .line 265
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    .line 266
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mWifiNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DeviceStateMonitor;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isPowerSaveModeOn()Z

    move-result p0

    return p0
.end method

.method private deviceTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    return-object p1

    :cond_0
    const-string p1, "LOW_DATA_EXPECTED"

    return-object p1

    :cond_1
    const-string p1, "CHARGING_STATE"

    return-object p1

    :cond_2
    const-string p1, "POWER_SAVE_MODE"

    return-object p1
.end method

.method private isDeviceCharging()Z
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 634
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    return v0
.end method

.method private isLowDataExpected()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isPowerSaveModeOn()Z
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 622
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method private isScreenOn()Z
    .locals 8

    .line 645
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 647
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 650
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 653
    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Screens all off"

    .line 658
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1

    :cond_2
    const-string v0, "No displays found"

    .line 662
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    return v1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 673
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onReset()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "onReset."

    .line 539
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 540
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 541
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 542
    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 543
    iget v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    .line 544
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setSignalStrengthReportingCriteria()V

    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setLinkCapacityReportingCriteria()V

    .line 546
    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setCellInfoMinInterval(I)V

    return-void
.end method

.method private onSetIndicationUpdateMode(II)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    .line 426
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    return-void
.end method

.method private onUpdateDeviceState(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_8

    const/4 v3, 0x3

    if-eq p1, v3, :cond_6

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_0

    return-void

    .line 487
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 488
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    goto :goto_0

    .line 478
    :cond_2
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-ne p1, p2, :cond_3

    return-void

    .line 479
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    goto :goto_0

    .line 473
    :cond_4
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-ne p1, p2, :cond_5

    return-void

    .line 474
    :cond_5
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    .line 475
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_0

    .line 482
    :cond_6
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    if-ne p1, p2, :cond_7

    return-void

    .line 483
    :cond_7
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    .line 484
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    goto :goto_0

    .line 469
    :cond_8
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-ne p1, p2, :cond_9

    return-void

    .line 470
    :cond_9
    iput-boolean p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    .line 495
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->computeCellInfoMinInterval()I

    move-result p1

    .line 496
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    if-eq p2, p1, :cond_a

    .line 497
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    .line 498
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mCellInfoMinInterval:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->setCellInfoMinInterval(I)V

    .line 499
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CellInfo Min Interval Updated to "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 502
    :cond_a
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->isLowDataExpected()Z

    move-result p2

    if-eq p1, p2, :cond_b

    .line 503
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    .line 504
    iget-boolean p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendDeviceState(IZ)V

    .line 508
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffSignalStrength()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 512
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffFullNetworkUpdate()Z

    move-result p2

    if-nez p2, :cond_c

    or-int/lit8 p1, p1, 0x2

    .line 516
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffDormancyUpdate()Z

    move-result p2

    if-nez p2, :cond_d

    or-int/lit8 p1, p1, 0x4

    .line 520
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffLinkCapacityEstimate()Z

    move-result p2

    if-nez p2, :cond_e

    or-int/lit8 p1, p1, 0x8

    .line 524
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->shouldTurnOffPhysicalChannelConfig()Z

    move-result p2

    if-nez p2, :cond_f

    or-int/lit8 p1, p1, 0x10

    .line 528
    :cond_f
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->setUnsolResponseFilter(IZ)V

    return-void
.end method

.method private sendDeviceState(IZ)V
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->deviceTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDeviceState(IZLandroid/os/Message;)V

    return-void
.end method

.method private setCellInfoMinInterval(I)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoMinInterval(I)V

    return-void
.end method

.method private setLinkCapacityReportingCriteria()V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_DOWNLINK_THRESHOLDS:[I

    sget-object v2, Lcom/android/internal/telephony/DeviceStateMonitor;->LINK_CAPACITY_UPLINK_THRESHOLDS:[I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setLinkCapacityReportingCriteria([I[II)V

    return-void
.end method

.method private setSignalStrengthReportingCriteria()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->GERAN:[I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->UTRAN:[I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->EUTRAN:[I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/internal/telephony/DeviceStateMonitor$AccessNetworkThresholds;->CDMA2000:[I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSignalStrengthReportingCriteria([II)V

    return-void
.end method

.method private setUnsolResponseFilter(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 582
    iget p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    if-eq p1, p2, :cond_1

    .line 583
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "old filter: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new filter: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 584
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setUnsolResponseFilter(ILandroid/os/Message;)V

    .line 585
    iput p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    :cond_1
    return-void
.end method

.method private shouldTurnOffDormancyUpdate()Z
    .locals 2

    .line 354
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    .line 355
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffFullNetworkUpdate()Z
    .locals 2

    .line 335
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    .line 336
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffLinkCapacityEstimate()Z
    .locals 2

    .line 373
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    .line 374
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffPhysicalChannelConfig()Z
    .locals 2

    .line 392
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    .line 393
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTurnOffSignalStrength()Z
    .locals 3

    .line 315
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUpdateModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public computeCellInfoMinInterval()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 291
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    const/16 v1, 0x7d0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    if-nez v0, :cond_0

    return v1

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x2710

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 685
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 687
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsTetheringOn="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsTetheringOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsScreenOn="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsScreenOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 689
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsCharging="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsCharging:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsPowerSaveOn="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsPowerSaveOn:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsLowDataExpected="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsLowDataExpected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mUnsolicitedResponseFilter="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mUnsolicitedResponseFilter:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mIsWifiConnected="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mIsWifiConnected:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 694
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 696
    iget-object p2, p0, Lcom/android/internal/telephony/DeviceStateMonitor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 698
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 699
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 437
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage msg="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->log(Ljava/lang/String;Z)V

    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected message arrives. msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    return-void

    .line 450
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onUpdateDeviceState(IZ)V

    return-void

    .line 444
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->onSetIndicationUpdateMode(II)V

    return-void

    .line 441
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/DeviceStateMonitor;->onReset()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setIndicationUpdateMode(II)V
    .locals 1

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
