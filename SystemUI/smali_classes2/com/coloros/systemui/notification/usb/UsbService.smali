.class public Lcom/coloros/systemui/notification/usb/UsbService;
.super Landroid/app/Service;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_FILE_TRANSMIT:Ljava/lang/String; = "com.oppo.test.file.transmit"

.field public static final ACTION_IMAGE_TRANSMIT:Ljava/lang/String; = "com.oppo.test.image.transmit"

.field public static final ACTION_ONLY_CHARGE:Ljava/lang/String; = "com.oppo.test.only.charge"

.field public static final ACTION_SHOW_USBSELECTOR_DIALOG:Ljava/lang/String; = "com.oppo.test.show.usbselector.dialog"

.field private static final ADB_NO_REMINDER_STATUS_KEY:Ljava/lang/String; = "adb_no_reminder_status"

.field private static final BigFontScale:F = 1.3f

.field private static final DBG:Z

.field private static final DEVELOPMENT_SETTING_CLASSNAME:Ljava/lang/String; = "com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

.field private static final DEVELOPMENT_SETTING_CLASSNAME_OLD:Ljava/lang/String; = "com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

.field public static final FILE_TRANSFER:I = 0x1

.field private static final GRANT_PERMISSION_DIALOG:Ljava/lang/String; = "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

.field public static final IMAGE_TRANSFER:I = 0x2

.field private static final MTK_ONLY_CHARGE_FUNCTION:Ljava/lang/String; = "none"

.field public static final ONLY_CHARGE:I = 0x0

.field private static final OPPO_BUSINESS_CUSTOM_SUPPORT_STRING:Ljava/lang/String; = "oppo.business.custom"

.field private static final PERMISSION_OPPO_COMPONENT_SAFE:Ljava/lang/String; = "oppo.permission.OPPO_COMPONENT_SAFE"

.field private static final QCOM_ONLY_CHARGE_FUNCTION:Ljava/lang/String; = "mass_storage"

.field private static final SETTING_MTP_TRANSFER_ENABLED:Ljava/lang/String; = "MTP_TRANSFER_ENABLED"

.field private static final SETTING_PACKAGENAME:Ljava/lang/String; = "com.android.settings"

.field private static final SETTING_ZQ_ADB_ENABLED:Ljava/lang/String; = "ZQ_ADB_ENABLED"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "UsbService"

.field private static final UPDATAE_ADB_NOTIFY_WHAT:I = 0x1

.field private static final UPDATAE_USB_STATE_TRANSMIT:I = 0x2

.field private static final USB_DIALOG_DELAY_DISMISS_TIME:I = 0x96

.field public static final USB_SELECTION_PREFS:Ljava/lang/String; = "com.oppo.usbselection_shared_prefs"

.field public static final USB_SELECT_CANCEL:I = 0x3

.field public static sNeedShowUsbDialog:Z = true


# instance fields
.field private final mAdbObserver:Landroid/database/ContentObserver;

.field private mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUiMode:I

.field private mDelayHandler:Landroid/os/Handler;

.field private mHasShow:Z

.field private mIsBigFontScale:Z

.field private mIsGovernmentVersion:Z

.field private mMyHandler:Landroid/os/Handler;

.field private mNoTransmitting:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnlyChargeFunction:Ljava/lang/String;

.field mOpm:Landroid/content/pm/OppoPackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUsbConnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbTypeAdapter:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x1

    .line 100
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 133
    new-instance v0, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/usb/UsbService$AdbEnableObserver;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mAdbObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsBigFontScale:Z

    .line 145
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbConnected:Z

    const/4 v1, 0x1

    .line 148
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNoTransmitting:Z

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    .line 152
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mHasShow:Z

    .line 156
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsGovernmentVersion:Z

    const-string v1, "midi"

    .line 165
    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOnlyChargeFunction:Ljava/lang/String;

    .line 167
    iput v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mCurrentUiMode:I

    .line 174
    new-instance v0, Lcom/coloros/systemui/notification/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/usb/UsbService$1;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mMyHandler:Landroid/os/Handler;

    .line 347
    new-instance v0, Lcom/coloros/systemui/notification/usb/UsbService$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/usb/UsbService$3;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/usb/UsbService;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbConnected:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mMyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/notification/usb/UsbService;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isUsbConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/notification/usb/UsbService;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsBigFontScale:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/coloros/systemui/notification/usb/UsbService;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsBigFontScale:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/notification/usb/UsbService;)Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbTypeAdapter:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/notification/usb/UsbService;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsGovernmentVersion:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/app/NotificationManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/usb/UsbService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/usb/UsbService;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/usb/UsbService;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNoTransmitting:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/notification/usb/UsbService;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNoTransmitting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/usb/UsbService;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/usb/UsbService;Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->onServiceUpdated(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/notification/usb/UsbService;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isUsbTransferAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/notification/usb/UsbService;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->showUsbDialog(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/notification/usb/UsbService;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->showCtsConfirmDialog()V

    return-void
.end method

.method private activeAdb(Landroid/content/Context;)V
    .locals 3

    const-string v0, "persist.sys.oppo.usbactive"

    const-string v1, "true"

    .line 690
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.test.file.transmit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 693
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const v1, 0x7f110117

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 694
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimAuto()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimManual()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Common"

    const-string v1, "UsbService"

    const-string v2, "OPEN_ADB"

    .line 695
    invoke-static {p0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adb_enabled"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private destroyUsbService()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 595
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 596
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->stopSelf()V

    .line 597
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->unRegisterAdbStateObservers(Landroid/content/Context;)V

    return-void
.end method

.method private hasInsertSimCard()Z
    .locals 7

    .line 1133
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->getMtkGeminiSupport()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UsbService"

    const-string v3, "Common"

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->getQcomGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SingleCard"

    .line 1144
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p0, "phone"

    .line 1146
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    .line 1147
    invoke-interface {p0}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "RemoteException2"

    .line 1149
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1136
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->isSimInserted(I)Z

    move-result v0

    const/4 v4, 0x1

    .line 1137
    invoke-direct {p0, v4}, Lcom/coloros/systemui/notification/usb/UsbService;->isSimInserted(I)Z

    move-result p0

    .line 1138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dulcard, and isSIM1Active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSIM2Active = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v4

    .line 1152
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSIM1Insert = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private intOnlyChargeFunction()V
    .locals 1

    .line 1169
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "none"

    goto :goto_0

    :cond_0
    const-string v0, "mass_storage"

    .line 1170
    :goto_0
    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOnlyChargeFunction:Ljava/lang/String;

    return-void
.end method

.method public static isAdbDebugEnable(Landroid/content/Context;)Z
    .locals 2

    .line 981
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSimInserted(I)Z
    .locals 2

    .line 1158
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    if-nez v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    .line 1161
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mColorPhone:Landroid/telephony/ColorOSTelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/ColorOSTelephonyManager;->hasIccCardGemini(I)Z

    move-result p0

    .line 1162
    sget-boolean v0, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimInserted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), SimInserted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common"

    const-string v1, "UsbService"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method private isUsbConnected()Z
    .locals 3

    .line 583
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 584
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "plugged"

    const/4 v1, -0x1

    .line 585
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 587
    :goto_0
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v0, :cond_1

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUsbConnected() returned: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "UsbService"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0
.end method

.method private isUsbTransferAllowed()Z
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const-string v0, "user"

    .line 820
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 824
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_3

    .line 825
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUsbTransferAllowed = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Common"

    const-string v2, "UsbService"

    invoke-static {v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method private needReset()Z
    .locals 3

    const-string p0, "persist.sys.allcommode"

    const-string v0, "false"

    .line 877
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    .line 878
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 880
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v0, :cond_0

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needReset_isAllcommode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "UsbService"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private onServiceUpdated(Landroid/content/Context;)V
    .locals 2

    .line 545
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isUsbConnected()Z

    move-result v0

    .line 546
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbConnected:Z

    if-eq v0, v1, :cond_0

    .line 547
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbConnected:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->onUsbConnected(Landroid/content/Context;)V

    :cond_0
    if-nez v0, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->destroyUsbService()V

    :cond_1
    return-void
.end method

.method private onUsbConnected(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ro.oppo.factory_mode"

    const-string v1, "0"

    .line 560
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 567
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCtaSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_remeber_selection"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->updateAdbNotification(Landroid/content/Context;)V

    .line 573
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->updateUsbNotification(Landroid/content/Context;I)V

    .line 576
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->needReset()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOpm:Landroid/content/pm/OppoPackageManager;

    invoke-virtual {v1}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->changeUsbConfig(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private registerAdbStateObservers(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Common"

    const-string v1, "UsbService"

    const-string v2, "registerAdbContentObservers"

    .line 986
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    .line 988
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mAdbObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 987
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 991
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsGovernmentVersion:Z

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "MTP_TRANSFER_ENABLED"

    .line 993
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mAdbObserver:Landroid/database/ContentObserver;

    .line 992
    invoke-virtual {p1, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private setAdbReminderStatus(Landroid/content/Context;Z)V
    .locals 1

    const-string p0, "com.oppo.usbselection_shared_prefs"

    const/4 v0, 0x0

    .line 1084
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1086
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "adb_no_reminder_status"

    .line 1087
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1088
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showCtsConfirmDialog()V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    .line 536
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "no_usb_file_transfer"

    .line 534
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    .line 538
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 537
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method private showInsertSimCardHintDialog()V
    .locals 3

    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mHasShow:Z

    .line 703
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hasShow"

    .line 704
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.INSERT_SIMCARD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 708
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showUsbDialog(Z)V
    .locals 7

    if-nez p1, :cond_3

    .line 715
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->needReset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCtaSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimAuto()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOpm:Landroid/content/pm/OppoPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 731
    :cond_3
    invoke-static {p0}, Lcom/coloros/systemui/notification/usb/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 736
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 741
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/usb/Utils;->getCurrentTopActivityNameInActivityStack(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "UsbService"

    const-string v2, "Common"

    if-eqz v0, :cond_6

    const-string p0, "don\'t show usb diaolog, for permission dialog showing"

    .line 742
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 746
    :cond_6
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "showUsbDialog_UsbDialogActivity.showSelecttypeDialog"

    .line 747
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "usb_remeber_selection"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 755
    new-instance v2, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    .line 756
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03015e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    const v5, 0x7f081228

    .line 757
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f081229

    .line 758
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const v5, 0x7f08122a

    .line 759
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 757
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, p0, v3, v1}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbTypeAdapter:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    .line 762
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1202b0

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 763
    invoke-virtual {v1, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f11086d

    .line 764
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbTypeAdapter:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    new-instance v3, Lcom/coloros/systemui/notification/usb/UsbService$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/coloros/systemui/notification/usb/UsbService$4;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;ZI)V

    .line 765
    invoke-virtual {v1, v2, v6, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 786
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    .line 788
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbTypeAdapter:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    new-instance v1, Lcom/coloros/systemui/notification/usb/UsbService$5;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/usb/UsbService$5;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;)V

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->setRadioClickListener(Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter$RadioButtonClickListener;)V

    .line 801
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbTypeAdapter:Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/usb/UsbTypeSelectAdapter;->setChecked(I)V

    .line 806
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 807
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 808
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 809
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v0

    .line 810
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07032b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    .line 811
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    .line 812
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    .line 811
    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method private unRegisterAdbStateObservers(Landroid/content/Context;)V
    .locals 3

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterAdbStateObservers, mAdbObserver = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mAdbObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "UsbService"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mAdbObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1002
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mAdbObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelZQVersionAdbNotify()V
    .locals 1

    .line 1067
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const/16 v0, 0x2714

    .line 1068
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public cancelZQVersionUsbNotify()V
    .locals 2

    .line 1073
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const/16 v1, 0x2715

    .line 1074
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOnlyChargeFunction:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1077
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "Common"

    const-string v0, "UsbService"

    const-string v1, "cancelZQVersionUsbNotify"

    .line 1078
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public changeUsbConfig(Landroid/content/Context;I)V
    .locals 4

    .line 831
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    const-string v1, "Common"

    const-string v2, "UsbService"

    if-eqz v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeUsbConfig_select_type = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_1

    const-string v0, "usb"

    .line 837
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 840
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isZQVersionUsbEnable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 841
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOnlyChargeFunction:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 842
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_2

    const-string p0, "isUsbTransferAllowed = setCurrentFunction only charge in ZQ version."

    .line 843
    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x1

    if-nez p2, :cond_4

    .line 850
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOnlyChargeFunction:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 851
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "setCurrentFunction when only charge"

    .line 852
    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne p2, p1, :cond_5

    .line 858
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isMtkPlatform()Z

    .line 861
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string p2, "mtp"

    invoke-virtual {p0, p2, p1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 862
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "setCurrentFunction mtp when file"

    .line 863
    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne v0, p2, :cond_6

    .line 868
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string p2, "ptp"

    invoke-virtual {p0, p2, p1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 869
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_6

    const-string p0, "setCurrentFunction_ptp when image"

    .line 870
    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public delayDismiss()V
    .locals 4

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mDelayHandler:Landroid/os/Handler;

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/notification/usb/UsbService$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/usb/UsbService$2;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isCTSVersion()Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "persist.oppo.ctsversion"

    .line 1092
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public isZQVersionAdbEnable()Z
    .locals 2

    .line 1057
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsGovernmentVersion:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ZQ_ADB_ENABLED"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isZQVersionUsbEnable()Z
    .locals 2

    .line 1062
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsGovernmentVersion:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "MTP_TRANSFER_ENABLED"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 519
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 520
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    .line 521
    iget v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mCurrentUiMode:I

    if-eq p1, v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isUsbConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    .line 524
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->showUsbDialog(Z)V

    .line 526
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mCurrentUiMode:I

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 7

    const-string v0, "usb_remeber_selection"

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    iput-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    .line 217
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1202b1

    .line 220
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->setTheme(I)V

    .line 222
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "usb"

    .line 224
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 228
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsBigFontScale:Z

    .line 229
    sget-boolean v1, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    const-string v4, "UsbService"

    const-string v5, "Common"

    if-eqz v1, :cond_1

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oncreate() isbigFrontScale = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsBigFontScale:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v6, "oppo.business.custom"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mIsGovernmentVersion:Z

    const-string v1, "user"

    .line 239
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 242
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->registerUsbStateReceiver()V

    .line 243
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/usb/UsbService;->registerAdbStateObservers(Landroid/content/Context;)V

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 245
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 248
    sget-boolean v2, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v2, :cond_2

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate_select_type = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isUsbTransferAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 260
    sget-boolean v1, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v1, :cond_3

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get USB_REMEBER_SELECTION  error e1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "com.oppo.usbselection_shared_prefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hasShow"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mHasShow:Z

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate_mHasShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mHasShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/content/pm/OppoPackageManager;

    iget-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/pm/OppoPackageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mOpm:Landroid/content/pm/OppoPackageManager;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 1102
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->stopForeground(Z)V

    .line 1103
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mMyHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 1108
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1110
    :cond_1
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v0, :cond_2

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy_mNotificationManager = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", and mUsbStateReceiver = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Common"

    const-string v3, "UsbService"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1115
    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1116
    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_4

    const/16 v2, 0x2714

    .line 1119
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1120
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x2715

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1121
    iput-object v1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1124
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1125
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbSelectDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 1127
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->unRegisterAdbStateObservers(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->onServiceUpdated(Landroid/content/Context;)V

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onUsbSelect(I)V
    .locals 4

    .line 302
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    const-string v1, "UsbService"

    const-string v2, "Common"

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbSelect = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return-void

    .line 314
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.test.image.transmit"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.test.file.transmit"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oppo.test.only.charge"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    :goto_0
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v0, :cond_4

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbSelect_usbIntent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v0, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public registerUsbStateReceiver()V
    .locals 4

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 334
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.oppo.test.show.usbselector.dialog"

    .line 337
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oppo.test.file.transmit"

    .line 338
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oppo.test.image.transmit"

    .line 339
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oppo.test.only.charge"

    .line 340
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public updateAdbNotification(Landroid/content/Context;)V
    .locals 13

    .line 891
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    .line 892
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_remeber_selection"

    const/4 v2, 0x1

    .line 891
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 894
    iget-boolean v3, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mUsbConnected:Z

    if-nez v3, :cond_0

    return-void

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isCTSVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 898
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/notification/usb/UsbService;->updateUsbNotification(Landroid/content/Context;I)V

    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    const-string v0, "notification"

    .line 904
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 907
    :cond_2
    invoke-static {p1}, Lcom/coloros/systemui/notification/usb/UsbService;->isAdbDebugEnable(Landroid/content/Context;)Z

    move-result v0

    .line 908
    sget-boolean v3, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    const-string v4, "Common"

    const-string v5, "UsbService"

    if-eqz v3, :cond_3

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdbEnable is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v3, 0x2714

    if-nez v0, :cond_4

    .line 912
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_4
    const v0, 0x7f110119

    const v6, 0x7f110118

    .line 919
    iget-object v7, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 920
    iget-object v7, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 921
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAdbNotification_title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", messge = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f08046f

    .line 925
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v8, 0x0

    .line 926
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 927
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 928
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 929
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 931
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v6, 0x22

    .line 932
    iput v6, v0, Landroid/app/Notification;->flags:I

    .line 935
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.settings.Settings$DevelopmentSettingsDashboardActivity"

    const-string v8, "com.android.settings"

    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 937
    invoke-static {p1, v6}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isSpecificIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v6, "com.android.settings.OppoAdbSettingsActivity is not exist, so we need use com.android.settings.DevelopmentSettings to start!"

    .line 938
    invoke-static {v4, v5, v6}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    :cond_5
    move-object v9, v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 945
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 947
    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 950
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 953
    sget-boolean v1, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v1, :cond_6

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get USB_REMEBER_SELECTION  error e6 ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    if-nez v2, :cond_7

    .line 957
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    .line 958
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "oppo.cta.support"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 960
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 962
    :cond_7
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/systemui/notification/usb/UsbService$6;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/notification/usb/UsbService$6;-><init>(Lcom/coloros/systemui/notification/usb/UsbService;Landroid/app/Notification;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 976
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method public updateUsbNotification(Landroid/content/Context;I)V
    .locals 10

    .line 603
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    const-string v1, "UsbService"

    const-string v2, "Common"

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsbNotification_mNotificationManager = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "selectType is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isUsbTransferAllowed()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    move p2, v3

    .line 613
    :cond_1
    sget-boolean v0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz v0, :cond_2

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUsbNotification,and selectType ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    .line 618
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 621
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->isZQVersionUsbEnable()Z

    move-result v0

    const/16 v4, 0x2715

    if-eqz v0, :cond_4

    .line 622
    iget-object p0, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 632
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.oppo.test.show.usbselector.dialog"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p2, :cond_7

    if-eq p2, v6, :cond_6

    if-eq p2, v5, :cond_5

    const-string p2, ""

    goto :goto_0

    .line 643
    :cond_5
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const v7, 0x7f110868

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 640
    :cond_6
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const v7, 0x7f110866

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 637
    :cond_7
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const v7, 0x7f110858

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 648
    :goto_0
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 650
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f081227

    .line 651
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 652
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    const/16 v9, 0x22

    .line 653
    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 655
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 656
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 657
    invoke-virtual {v7, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 658
    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 659
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const v0, 0x7f110867

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, "persist.sys.oppo.usbactive"

    .line 661
    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUsbActive = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",and FeatureOption.IS_ADB_NEED_SIM_AUTO is :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimAuto()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", IS_ADB_NEED_SIM_MANUAL = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimManual()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimAuto()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isAdbNeedSimManual()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_b

    .line 666
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->hasInsertSimCard()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 667
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/usb/UsbService;->activeAdb(Landroid/content/Context;)V

    goto :goto_1

    .line 669
    :cond_9
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mHasShow:Z

    if-nez p1, :cond_a

    .line 670
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.test.only.charge"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    iget-object p2, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v0, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "when usb is not active in cmcc version,send ACTION_ONLY_CHARGE"

    .line 672
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/coloros/systemui/notification/usb/UsbService;->showInsertSimCardHintDialog()V

    :cond_a
    return-void

    .line 678
    :cond_b
    :goto_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/usb/UsbService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 679
    sget-boolean p1, Lcom/coloros/systemui/notification/usb/UsbService;->sNeedShowUsbDialog:Z

    if-eqz p1, :cond_c

    .line 680
    invoke-direct {p0, v3}, Lcom/coloros/systemui/notification/usb/UsbService;->showUsbDialog(Z)V

    goto :goto_2

    .line 682
    :cond_c
    sput-boolean v6, Lcom/coloros/systemui/notification/usb/UsbService;->sNeedShowUsbDialog:Z

    .line 684
    :goto_2
    sget-boolean p0, Lcom/coloros/systemui/notification/usb/UsbService;->DBG:Z

    if-eqz p0, :cond_d

    const-string p0, "one:display usb storage notify!"

    .line 685
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method
