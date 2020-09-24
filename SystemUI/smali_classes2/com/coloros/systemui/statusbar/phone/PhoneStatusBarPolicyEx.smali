.class public Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.source "PhoneStatusBarPolicyEx.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# static fields
.field private static final ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

.field private static final ACTION_BLUETOOTH_TRANSFER_STATE:Ljava/lang/String; = "com.android.bluetooth.opp.action.TRANSFER_STATE"

.field private static final BT_BATTERY_BLACK:[I

.field private static final BT_BATTERY_PERCENT_10:I = 0xa

.field private static final BT_BATTERY_PERCENT_2:I = 0x2

.field private static final EXTRA_STATE_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth.opp.extra.STATE"

.field private static final LOGGING_STATUS_KEY:Ljava/lang/String; = "log_switch_type"

.field private static final STATE_DOWNLOADED:I = 0x4

.field private static final STATE_DOWNLOADING:I = 0x3

.field private static final STATE_UPLOADED:I = 0x2

.field private static final STATE_UPLOADING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarPolicyEx"

.field private static final TEN:D = 10.0

.field private static final THOUSAND:I = 0x3e8


# instance fields
.field private mBlueToothDownTimes:I

.field private mBlueToothUpTimes:I

.field private mBluetoothBatteryLevel:I

.field private mBluetoothConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothTransfer:Z

.field private mHeadSetMic:I

.field private mHeadSetState:I

.field private mHeadsetStartRealTime:J

.field private mHeadsetStartTime:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mSlotLogging:Ljava/lang/String;

.field private final mSlotNfc:Ljava/lang/String;

.field private final mSlotSOS:Ljava/lang/String;

.field private final mSlotVPN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 68
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->BT_BATTERY_BLACK:[I

    return-void

    :array_0
    .array-data 4
        0x7f080ec6
        0x7f080ec7
        0x7f080ec8
        0x7f080ec9
        0x7f080eca
        0x7f080ecb
        0x7f080ecc
        0x7f080ecd
        0x7f080ece
        0x7f080ecf
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 6

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    const-string p2, "logging"

    .line 81
    iput-object p2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotLogging:Ljava/lang/String;

    const-string v0, "sos"

    .line 82
    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotSOS:Ljava/lang/String;

    const/4 v1, -0x1

    .line 88
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    const-wide/16 v2, -0x1

    .line 90
    iput-wide v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    .line 91
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetState:I

    .line 92
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetMic:I

    const/4 v1, 0x0

    .line 93
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    .line 94
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    .line 95
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    .line 97
    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothConnected:Z

    const/4 v2, 0x0

    .line 99
    iput-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 100
    iput-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 102
    new-instance v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;)V

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 188
    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_vpn:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotVPN:Ljava/lang/String;

    .line 189
    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_string_status_bar_nfc:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    .line 191
    const-class p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 192
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 193
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 194
    new-instance v2, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$zivDGV4SKHy9FoimyryCCzEstOs;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$zivDGV4SKHy9FoimyryCCzEstOs;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;)V

    .line 196
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    .line 197
    new-instance p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$2;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v2}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$2;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Landroid/os/Handler;)V

    .line 203
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "persist.sys.assert.panic"

    .line 205
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v2, "log_switch_type"

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    .line 207
    :goto_1
    new-instance v4, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$3;

    iget-object v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$3;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Landroid/os/Handler;)V

    .line 215
    iget-object v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 216
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 215
    invoke-virtual {v5, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const v3, 0x7f080f75

    iget-object v4, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v5, 0x7f110078

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateLogIcon(Z)V

    .line 220
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotVPN:Ljava/lang/String;

    const v2, 0x7f080ee0

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v4, 0x7f110101

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotVPN:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 222
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    const v2, 0x7f080f78

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v4, 0x7f110084

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->getNfcEnable()Z

    move-result v2

    invoke-interface {p1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 224
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const p2, 0x7f081147

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v3, 0x7f1100f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 225
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateHolidayIcon()V

    .line 227
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->getBluetoothHeadset()Z

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBtBatteryDesc(I)Ljava/lang/String;
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v1, 0x7f110049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_0

    .line 503
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    if-eqz v1, :cond_0

    .line 504
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const p1, 0x7f110048

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 505
    sget-object p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->BT_BATTERY_BLACK:[I

    array-length p0, p0

    if-ge p1, p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getBtBatteryLevel(I)I
    .locals 4

    const/4 p0, 0x1

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    .line 493
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 494
    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->BT_BATTERY_BLACK:[I

    array-length v1, v0

    if-lt p1, v1, :cond_3

    array-length p1, v0

    sub-int/2addr p1, p0

    :cond_3
    move p0, p1

    :goto_0
    return p0
.end method

.method private getBtBatteryPercent(Landroid/content/Intent;)I
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 472
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "android.bluetooth.device.extra.DEVICE"

    .line 475
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_1

    .line 477
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getBtBatteryRes(I)I
    .locals 3

    const v0, 0x7f080f40

    if-lez p1, :cond_0

    .line 515
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 517
    sget-object v1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->BT_BATTERY_BLACK:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 518
    aget v0, v1, p1

    goto :goto_0

    .line 520
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 522
    :cond_2
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothConnected:Z

    if-eqz p0, :cond_3

    const v0, 0x7f080f46

    goto :goto_0

    :cond_3
    const v0, 0x7f080f44

    :goto_0
    return v0
.end method

.method private shouldShowNetworkName()Z
    .locals 4

    const-string p0, "volte"

    const-string v0, "gsm.ims.type0"

    .line 361
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vowifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "gsm.ims.type1"

    .line 362
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vowifi1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " vowifi2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "PhoneStatusBarPolicyEx"

    .line 363
    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateSOS(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 462
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getCurRegion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->shouldShowNetworkName()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 463
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v0, "sos"

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addActionAndRegister(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V
    .locals 7

    const-string v0, "android.intent.action.ALARM_CHANGED"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 164
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.bluetooth.opp.action.TRANSFER_STATE"

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public getBluetoothHeadset()Z
    .locals 3

    .line 178
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNfcEnable()Z
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PhoneStatusBarPolicyEx"

    const-string v3, "Statusbar"

    if-nez v0, :cond_0

    const-string p0, "getNfcEnable...nfc disable "

    .line 263
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string v4, "mNfcAdapter == null"

    if-nez v0, :cond_1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 271
    invoke-static {v3, v2, v4}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 275
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p0, :cond_2

    .line 276
    invoke-static {v3, v2, v4}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 279
    :cond_2
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNfcEnable_nfcState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 9

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v6, "com.android.bluetooth.opp.action.TRANSFER_STATE"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v7

    goto :goto_0

    :sswitch_2
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v8

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 154
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateBluetoothBattery(Landroid/content/Intent;)V

    goto :goto_2

    .line 151
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateBluetoothBattery(Landroid/content/Intent;)V

    goto :goto_2

    .line 148
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateNFC(Landroid/content/Intent;)V

    goto :goto_2

    .line 131
    :pswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.android.bluetooth.opp.extra.STATE"

    .line 132
    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 134
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_3

    .line 136
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    goto :goto_1

    :cond_3
    if-ne v7, v3, :cond_4

    .line 137
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    if-lez p1, :cond_4

    sub-int/2addr p1, v8

    .line 138
    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    goto :goto_1

    :cond_4
    if-ne v7, v4, :cond_5

    .line 139
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    if-lez p1, :cond_5

    sub-int/2addr p1, v8

    .line 140
    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    .line 143
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_BLUETOOTH_STATE_CHANGED state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "PhoneStatusBarPolicyEx"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateBluetoothEx()V

    goto :goto_2

    .line 125
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateAlarm(Landroid/content/Intent;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae25056 -> :sswitch_6
        -0x5b36f014 -> :sswitch_5
        0x10531fc -> :sswitch_4
        0x2287d448 -> :sswitch_3
        0x42f3be3f -> :sswitch_2
        0x5a87f5e1 -> :sswitch_1
        0x73d08300 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isColorOS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isManagedProfile(ILandroid/os/UserManager;)Z
    .locals 0

    const/16 p0, 0x3e7

    if-eq p1, p0, :cond_0

    .line 532
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$1$PhoneStatusBarPolicyEx(Z)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$zDxeWD9lZpOV_PKHK0380rDuc80;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$zDxeWD9lZpOV_PKHK0380rDuc80;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$0$PhoneStatusBarPolicyEx(Z)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateSOS(Z)V

    return-void
.end method

.method public synthetic lambda$onStateChanged$2$PhoneStatusBarPolicyEx(Z)V
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateVPN(Z)V

    return-void
.end method

.method public onStateChanged()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;

    invoke-direct {v2, p0, v0}, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateAlarm(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "alarmSet"

    .line 354
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    .line 355
    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v2, "VISIBLE"

    goto :goto_0

    :cond_0
    const-string v2, "GONE"

    :goto_0
    aput-object v2, v1, v0

    const-string v0, "AlarmClock: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "PhoneStatusBarPolicyEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotAlarmClock:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotAlarmClock:Ljava/lang/String;

    const-string v1, "1"

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_1

    :cond_1
    const-string p1, "0"

    :goto_1
    invoke-static {v0, p0, v1, p1}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarIconStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAlarmEx()V
    .locals 7

    .line 343
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 345
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "google\'s alarm updateAlarmEx() , alarmSet="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "mCurrentUserSetup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mCurrentUserSetup:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Statusbar"

    const-string v5, "PhoneStatusBarPolicyEx"

    invoke-static {v4, v5, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotAlarmClock:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mCurrentUserSetup:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {v3, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateBluetoothBattery(Landroid/content/Intent;)V
    .locals 2

    .line 372
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->getBtBatteryPercent(Landroid/content/Intent;)I

    move-result p1

    .line 373
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->getBtBatteryLevel(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBluetoothBattery  btBatteryPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mBluetoothBatteryLevel = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mBluetoothConnected = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothConnected:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "PhoneStatusBarPolicyEx"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateBluetoothBatteryIcon(I)V

    return-void
.end method

.method public updateBluetoothBatteryIcon(I)V
    .locals 4

    .line 401
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->getBtBatteryRes(I)I

    move-result v0

    .line 402
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->getBtBatteryDesc(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    if-gez p1, :cond_1

    .line 405
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothEnabled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 406
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateBluetoothEx()V
    .locals 11

    .line 412
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v1, 0x7f110049

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v2, " mBluetoothBatteryLevel = "

    const-string v3, "PhoneStatusBarPolicyEx"

    const-string v4, "Statusbar"

    const/4 v5, 0x0

    const v6, 0x7f080f44

    if-eqz v1, :cond_3

    .line 416
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v8, 0xc

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v5

    .line 417
    :goto_0
    iput-boolean v7, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothEnabled:Z

    .line 418
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateBluetoothEx bluetoothEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " adapter.getConnectionState()="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mBlueToothDownTimes="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mBlueToothUpTimes="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-static {v4, v3, v8}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    const v6, 0x7f080f46

    .line 426
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const v1, 0x7f110048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    iput-boolean v9, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothConnected:Z

    goto :goto_1

    .line 429
    :cond_1
    iput-boolean v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothConnected:Z

    :goto_1
    if-eqz v7, :cond_2

    .line 432
    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    iget v8, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    add-int/2addr v1, v8

    if-lez v1, :cond_2

    const v6, 0x7f080f40

    .line 434
    iput-boolean v9, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    goto :goto_2

    .line 436
    :cond_2
    iput v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    .line 437
    iput v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    .line 438
    iput-boolean v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    goto :goto_2

    .line 442
    :cond_3
    iput-boolean v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothEnabled:Z

    .line 443
    iput-boolean v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    .line 444
    iput v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothDownTimes:I

    .line 445
    iput v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBlueToothUpTimes:I

    move v7, v5

    .line 447
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBluetoothEx mBluetoothConnected="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothConnected:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", bluetoothEnabled="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mBluetoothTransfer = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothTransfer:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v1, v2, v6, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    if-eqz v7, :cond_4

    .line 456
    iget v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mBluetoothBatteryLevel:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateBluetoothBatteryIcon(I)V

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotBluetooth:Ljava/lang/String;

    const-string v1, "1"

    if-eqz v7, :cond_5

    move-object v2, v1

    goto :goto_3

    :cond_5
    const-string v2, "0"

    :goto_3
    invoke-static {v0, p0, v1, v2}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarIconStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateHeadSet(Landroid/content/Intent;)V
    .locals 10

    const/4 v0, -0x1

    const-string v1, "state"

    .line 305
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "microphone"

    .line 306
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeadSet, headSetState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", headSetMic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    const-string v4, "PhoneStatusBarPolicyEx"

    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v0, :cond_4

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetMic:I

    if-eq v0, p1, :cond_1

    .line 313
    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetMic:I

    .line 315
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetState:I

    if-eq p1, v1, :cond_4

    .line 316
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetState:I

    .line 317
    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 318
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrTimeAsStr()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartTime:Ljava/lang/String;

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 322
    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadSetMic:I

    if-ne v1, v0, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, p1

    .line 325
    :goto_0
    iget-wide v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    const-wide/16 v8, -0x1

    cmp-long p1, v0, v8

    if-eqz p1, :cond_4

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    .line 327
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartTime:Ljava/lang/String;

    iget-wide v5, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    const-string v3, "user_mode_headset_plugged_in"

    invoke-static/range {v2 .. v7}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectHeadSetPluggedInEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 330
    iput-wide v8, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mHeadsetStartRealTime:J

    :cond_4
    :goto_1
    return-void
.end method

.method public updateHolidayIcon()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State of holidy_mode is :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", we refresh HolidayIcon now!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Statusbar"

    const-string v3, "PhoneStatusBarPolicyEx"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotZen:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateLogIcon(Z)V
    .locals 3

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLogIcon status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "PhoneStatusBarPolicyEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v1, "logging"

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 246
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    const-string v0, "1"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-static {p0, v1, v0, p1}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarIconStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNFC(Landroid/content/Intent;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PhoneStatusBarPolicyEx"

    const-string v2, "Statusbar"

    if-nez v0, :cond_0

    const-string p0, "updateNFC...nfc disable "

    .line 252
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    .line 255
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNFCIcon...mNFCState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateNFCIcon(I)V

    return-void
.end method

.method public updateNFCIcon(I)V
    .locals 6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateNFCIcon() \uff0cmNFCState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Statusbar"

    const-string v5, "PhoneStatusBarPolicyEx"

    invoke-static {v4, v5, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_1

    .line 296
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 299
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotNfc:Ljava/lang/String;

    const-string v1, "1"

    if-ne p1, v3, :cond_3

    move-object p1, v1

    goto :goto_2

    :cond_3
    const-string p1, "0"

    :goto_2
    invoke-static {v0, p0, v1, p1}, Lcom/coloros/systemui/statusbar/phone/StatusBarStatistic;->collectStatusBarIconStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVPN(Z)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->mSlotVPN:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    .line 396
    new-array p0, p0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "VISIBLE"

    goto :goto_0

    :cond_0
    const-string p1, "GONE"

    :goto_0
    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "vpn: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string v0, "PhoneStatusBarPolicyEx"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
