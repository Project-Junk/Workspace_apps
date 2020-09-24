.class public Lcom/coloros/systemui/notification/power/ColorosPowerUI;
.super Lcom/android/systemui/SystemUI;
.source "ColorosPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/power/ColorosPowerUI$WarningsUI;,
        Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;,
        Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "com.oppo.ACTION_SAVEMODE_CONTROL_SYSTEMUI_TO_POWERMANAGER"

.field private static final BACK_LIGHT_OPTIMIZED:I = 0x0

.field private static BATTERY_CONNECTED_NOT_GOOD:I = 0x20

.field private static BATTERY_FULL:I = 0x0

.field private static BATTER_COLD_TEMPERATURE:I = 0x10

.field private static BATTER_OVER_TEMPERATURE:I = 0x8

.field private static BATTER_OVER_VOLTAGE:I = 0x40

.field private static CHARGER_OVER_TIME:I = 0x200

.field private static CHARGER_OVER_VOLTAGE:I = 0x2

.field private static final DARK_MODE_OPTIMIZED:I = 0x5

.field private static final EVENT_LOW_BATTERY_WARN_SOUND:I = 0xa

.field private static final FEATURE_RATE:Ljava/lang/String; = "oppo.dynamicfpsswitch.feature.support"

.field private static final FEATURE_RATE120HZ:Ljava/lang/String; = "oppo.display.screen.120hz.support"

.field private static final FEATURE_RATE90HZ:Ljava/lang/String; = "oppo.display.screen.90hz.support"

.field private static final FEATURE_RESOLUTION:Ljava/lang/String; = "oppo.resolutionswitch.feature.support"

.field private static final FIRST_BOOT_LOW_BATTERY_RESET:I = 0xc

.field private static final FIRST_BOOT_LOW_BATTERY_RESET_DELAY:J = 0x2710L

.field private static final FIRST_BOOT_LOW_BATTERY_WARN_SHOW:I = 0xb

.field private static final FIRST_BOOT_LOW_BATTERY_WARN_SHOW_DELAY:J = 0x1f40L

.field private static final IS_SMART_ENABLE:Ljava/lang/String; = "is_smart_enable"

.field private static final NEW_FILE_BATTERY_NOTIFY_CODE:Ljava/lang/String; = "/sys/class/power_supply/battery/notify_code"

.field private static NOTIFY_HIGHTEMP_BAT_FULL:I = 0x400

.field private static NOTIFY_LOWTEMP_BAT_FULL:I = 0x800

.field private static NOTIFY_NORMAL_BAT_FULL:I = 0x80

.field private static NOTIFY_THIRD_BAT_FULL:I = 0x4000

.field private static final POWER_SAVE_BACKLIGHT_SWITCH_STATE:Ljava/lang/String; = "power_save_backlight_state"

.field private static final POWER_SAVE_BACKLIGHT_SYNC_SWITCH_STATE:Ljava/lang/String; = "power_save_sync_state"

.field private static final POWER_SAVE_DARK_MODE_SWITCH_STATE:Ljava/lang/String; = "power_save_ColorDarkMode_change_night_mode"

.field private static final POWER_SAVE_REFRESH_SWITCH_STATE:Ljava/lang/String; = "power_save_coloros_screen_refresh_rate"

.field private static final POWER_SAVE_RESOLUTION_SWITCH_STATE:Ljava/lang/String; = "power_save_coloros_screen_resolution_adjust"

.field private static final POWER_SAVE_SREENOFF_TIME_SWITCH_STATE:Ljava/lang/String; = "power_save_screenoff_time_state"

.field private static final REFRESH_RATE_OPTIMIZED:I = 0x4

.field private static final RESOLUTION_OPTIMIZED:I = 0x3

.field private static final SCREEN_OFF_OPTIMIZED:I = 0x1

.field private static final SOUNDDIRECTORY:Ljava/lang/String; = "/system/media/audio/ui/"

.field private static final SYNC_OPTIMIZED:I = 0x2

.field private static final SYSTEM_BOOT_TIME:J = 0xc350L

.field private static final TAG:Ljava/lang/String; = "ColorOs_PowerUI"


# instance fields
.field private final CHARGE_ERROR_DIALOG_ALL:I

.field private final CHARGE_ERROR_DIALOG_BATTERY_TEMP_HIGH:I

.field private final CHARGE_ERROR_DIALOG_BATTERY_TEMP_LOW:I

.field private final CHARGE_ERROR_DIALOG_BATTERY_VOL_HIGH:I

.field private final CHARGE_ERROR_DIALOG_CHARGE_VOL_HIGH:I

.field private final CHARGE_ERROT_DIALOG_BATTERY_CONNECT_ERROR:I

.field private final CHARGE_ERROT_DIALOG_CHARGE_TIMEOUT:I

.field private final CHARGE_FULL_DIALOG:I

.field private final CHARGE_FULL_DIALOG_BATTERY_TEMP_HIGH:I

.field private final CHARGE_FULL_DIALOG_BATTERY_TEMP_LOW:I

.field private final CHARGE_FULL_DIALOG_BATTERY_THIRD_FULL:I

.field private bBatteryConnect:Z

.field private bBatteryConnectShow:Z

.field private bBatteryFull:Z

.field private bBatteryFullShow:Z

.field private bBatteryLowTemperature:Z

.field private bBatteryLowTmpShow:Z

.field private bBatteryOverCVShow:Z

.field private bBatteryOverTemperature:Z

.field private bBatteryOverTmpShow:Z

.field private bBatteryOverVol:Z

.field private bBatteryOverVoltShow:Z

.field private bBatteryTimeout:Z

.field private bBatteryTimeoutShow:Z

.field private bChargeOverVol:Z

.field private bLastBatteryConnect:Z

.field private bLastBatteryFull:Z

.field private bLastBatteryLowTemperature:Z

.field private bLastBatteryOverTemperature:Z

.field private bLastBatteryOverVol:Z

.field private bLastBatteryTimeout:Z

.field private bLastChargeOverVol:Z

.field private mBatteryChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryLowTitleId:I

.field private mBatteryPlugged:Z

.field mBatteryStatus:I

.field private mBatteryVolStatus:I

.field private mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

.field private mChargeErrorDialogType:I

.field private mChargeTimeout:Z

.field private mChargingNotifySoundPath:Ljava/lang/String;

.field private mDlgActions:[Landroid/app/Notification$Action;

.field private mDlgNotificationContent:Ljava/lang/String;

.field private mDlgNotificationContentIntnet:Landroid/app/PendingIntent;

.field private mDlgNotificationTitle:Ljava/lang/String;

.field private mEvent:I

.field mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field mHandler:Landroid/os/Handler;

.field private mHasDisableDialogFeature:Z

.field private mHideLowBDialog:Z

.field private mInBatteryLow:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Lcolor/support/v7/app/AlertDialog;

.field private mIsLowBatteryFistBoot:Z

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field private mMediaPlayerInUse:Z

.field private mNP:Lcom/android/systemui/media/NotificationPlayer;

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mNotifyCode:I

.field private mOldBatteryPlugged:Z

.field private mOldBatteryVolStatus:I

.field private mOldChargeTimeout:Z

.field private mOldChargeVolStatus:I

.field mOppoPlugType:I

.field mPlugType:I

.field private mPlugged:I

.field mProvisionedObserver:Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;

.field private mStringNotifyCode:Ljava/lang/String;

.field private mUsedSound:Z

.field private showBatteryVoltageDialog:Z

.field private showChargeTimeoutDialog:Z

.field private showChargerVoltageDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 906
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_NORMAL_BAT_FULL:I

    sget v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_LOWTEMP_BAT_FULL:I

    or-int/2addr v0, v1

    sget v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_HIGHTEMP_BAT_FULL:I

    or-int/2addr v0, v1

    sget v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_THIRD_BAT_FULL:I

    or-int/2addr v0, v1

    sput v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->BATTERY_FULL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 86
    new-instance v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$BatteryHandler;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 110
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    const/4 v0, 0x1

    .line 111
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    const/4 v2, 0x0

    .line 112
    iput v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    .line 115
    iput v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    .line 118
    iput v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    const/4 v3, 0x3

    .line 121
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    .line 127
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mUsedSound:Z

    .line 136
    new-instance v4, Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$1;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    iput-object v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 215
    new-instance v4, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$2;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    iput-object v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 509
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHideLowBDialog:Z

    .line 521
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNP:Lcom/android/systemui/media/NotificationPlayer;

    .line 523
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInBatteryLow:Z

    .line 524
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mMediaPlayerInUse:Z

    .line 526
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mIsLowBatteryFistBoot:Z

    const/4 v4, -0x1

    .line 553
    iput v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryVolStatus:I

    .line 554
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryPlugged:Z

    .line 555
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeTimeout:Z

    .line 556
    iput v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeVolStatus:I

    .line 557
    iput v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryVolStatus:I

    .line 559
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryPlugged:Z

    .line 560
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeTimeout:Z

    .line 561
    iput-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    .line 563
    iput v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROR_DIALOG_ALL:I

    .line 564
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROR_DIALOG_CHARGE_VOL_HIGH:I

    const/4 v0, 0x2

    .line 565
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROR_DIALOG_BATTERY_VOL_HIGH:I

    .line 566
    iput v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROR_DIALOG_BATTERY_TEMP_LOW:I

    const/4 v0, 0x4

    .line 567
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROR_DIALOG_BATTERY_TEMP_HIGH:I

    const/4 v0, 0x5

    .line 568
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROT_DIALOG_BATTERY_CONNECT_ERROR:I

    const/4 v0, 0x6

    .line 569
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_ERROT_DIALOG_CHARGE_TIMEOUT:I

    const/4 v0, 0x7

    .line 570
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_FULL_DIALOG:I

    const/16 v0, 0x8

    .line 571
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_FULL_DIALOG_BATTERY_TEMP_HIGH:I

    const/16 v0, 0x9

    .line 572
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_FULL_DIALOG_BATTERY_TEMP_LOW:I

    const/16 v0, 0xa

    .line 573
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGE_FULL_DIALOG_BATTERY_THIRD_FULL:I

    .line 575
    iput v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    .line 577
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargerVoltageDialog:Z

    .line 610
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showBatteryVoltageDialog:Z

    .line 636
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeTimeoutDialog:Z

    .line 753
    iput-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 877
    iput v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    .line 878
    iput v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugged:I

    .line 880
    iput v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotifyCode:I

    .line 882
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFullShow:Z

    .line 883
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    .line 884
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTmpShow:Z

    .line 885
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTmpShow:Z

    .line 886
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverCVShow:Z

    .line 888
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVoltShow:Z

    .line 889
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeoutShow:Z

    .line 1012
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVol:Z

    .line 1013
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryOverVol:Z

    .line 1033
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTemperature:Z

    .line 1034
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryLowTemperature:Z

    .line 1055
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTemperature:Z

    .line 1056
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryOverTemperature:Z

    .line 1076
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryConnect:Z

    .line 1077
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnect:Z

    .line 1103
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bChargeOverVol:Z

    .line 1104
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastChargeOverVol:Z

    .line 1125
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFull:Z

    .line 1126
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryFull:Z

    .line 1165
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeout:Z

    .line 1166
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryTimeout:Z

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHideLowBDialog:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->creatNotificationManagerIfNeed()V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHideLowBDialog:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->tearDown()V

    return-void
.end method

.method static synthetic access$1202(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeVolStatus:I

    return p1
.end method

.method static synthetic access$1302(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeTimeout:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryPlugged:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryPlugged:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateChargerVoltage(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryVoltage1(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryPlugged:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateChargeTimeout(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)I
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->findBatteryLevelBucket(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2002(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mMediaPlayerInUse:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->playPowerUISound(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mIsLowBatteryFistBoot:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showLowBatteryDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isSavePowerOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLowTitleId:I

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/power/ColorosPowerUI;IZI)Z
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showLowBatteryWarning(IZI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/power/ColorosPowerUI;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bootRegHandle(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$802(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Z)Z
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInBatteryLow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->notifyCharging(Landroid/content/Context;)V

    return-void
.end method

.method private bootRegHandle(I)V
    .locals 3

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bootRegHandle: warningLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mProvisionedObserver:Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;

    if-nez v0, :cond_0

    .line 1401
    new-instance v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mProvisionedObserver:Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;

    goto :goto_0

    .line 1403
    :cond_0
    iput p1, v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->mWarningLevel:I

    :goto_0
    return-void
.end method

.method private creatNotificationManagerIfNeed()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_0
    return-void
.end method

.method private createBatteryLowDialog(IZI)Lcolor/support/v7/app/AlertDialog;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_0

    .line 1193
    invoke-direct {p0, p3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createCritcalLowDialog(I)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "createBatteryLowDialog: warnningLevel is 2, and plug is in. do nothing."

    .line 1195
    invoke-static {v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v3, 0x14

    if-eq p1, v3, :cond_3

    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    goto :goto_0

    .line 1221
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createBatteryLowDialog: warnningLevel("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is ivalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUi--"

    invoke-static {p1, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1200
    :cond_3
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isDisablePowerSave()Z

    move-result p1

    const-string v3, "createBatteryLowDialog: save power is on, and plug is in. do nothing."

    if-nez p1, :cond_6

    .line 1201
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isSavePowerOn()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1202
    invoke-direct {p0, p3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createSavePowerDialog(I)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p2, :cond_5

    .line 1205
    invoke-direct {p0, p3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createPlugChargerDialog(I)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 1207
    :cond_5
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const-string p1, "createBatteryLowDialog: FEATURE_DISABLE_POWER_SAVE is true."

    .line 1212
    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_7

    .line 1214
    invoke-direct {p0, p3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createPlugChargerDialog(I)Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 1216
    :cond_7
    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createCritcalLowDialog(I)Lcolor/support/v7/app/AlertDialog;
    .locals 5

    const-string v0, "Common"

    const-string v1, "ColorOs_PowerUI"

    const-string v2, "createCritcalLowDialog"

    .line 1362
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1102af

    .line 1363
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLowTitleId:I

    .line 1364
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v3, 0x7f1202b0

    invoke-direct {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 1365
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1366
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x0

    const v0, 0x7f110200

    .line 1367
    invoke-virtual {v1, v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1369
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1370
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7d3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 1373
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1375
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1378
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationTitle:Ljava/lang/String;

    .line 1379
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContent:Ljava/lang/String;

    .line 1380
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContentIntnet:Landroid/app/PendingIntent;

    .line 1381
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgActions:[Landroid/app/Notification$Action;

    return-object v0
.end method

.method private createPlugChargerDialog(I)Lcolor/support/v7/app/AlertDialog;
    .locals 5

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPlugChargerDialog: percent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1104fb

    .line 1319
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLowTitleId:I

    .line 1320
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v3, 0x7f1202b0

    invoke-direct {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 1321
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1322
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x0

    const v0, 0x7f110200

    .line 1323
    invoke-virtual {v1, v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1325
    new-instance v0, Landroid/content/Intent;

    const-string v3, "oppo.intent.action.powermanager.PowerConsumptionRankings"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x14000000

    .line 1326
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "source"

    const-string v4, "Dialog"

    .line 1327
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    new-instance v3, Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;

    invoke-direct {v3, p0, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$6;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V

    const v4, 0x7f110202

    invoke-virtual {v1, v4, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1343
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1344
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1347
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1349
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1352
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f110500

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationTitle:Ljava/lang/String;

    .line 1353
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f1104fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContent:Ljava/lang/String;

    .line 1354
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContentIntnet:Landroid/app/PendingIntent;

    .line 1355
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgActions:[Landroid/app/Notification$Action;

    return-object v1
.end method

.method private createSavePowerDialog(I)Lcolor/support/v7/app/AlertDialog;
    .locals 14

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSavePowerDialog: percent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f110501

    .line 1228
    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLowTitleId:I

    .line 1229
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v3, 0x7f1202b0

    invoke-direct {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 1230
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1231
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1233
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v3, 0x7f0d006e

    .line 1234
    invoke-virtual {p1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a042d

    .line 1235
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1236
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v5, 0x7f0a05f5

    .line 1237
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1239
    iget-object v6, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    iget-object v9, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getPowerSaveBacklightSwitchState(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v4, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    move v9, v2

    .line 1243
    :goto_0
    iget-object v10, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getPowerSaveScreenoffTimeSwitchState(Landroid/content/Context;)I

    move-result v10

    if-ne v10, v4, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v2

    .line 1244
    :goto_1
    iget-object v11, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getPowerSaveSyncSwitchState(Landroid/content/Context;)I

    move-result v11

    if-ne v11, v4, :cond_2

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v2

    .line 1245
    :goto_2
    iget-object v12, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->hasResolutionSupport(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    .line 1246
    invoke-static {v12}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getPowerSaveResolutionSwitchState(Landroid/content/Context;)I

    move-result v12

    .line 1247
    :cond_3
    iget-object v12, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->hasDynamicFPSSupport(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    .line 1248
    invoke-static {v12}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getPowerSaveRefreshSwitchState(Landroid/content/Context;)I

    move-result v12

    if-ne v12, v4, :cond_4

    move v12, v4

    goto :goto_3

    :cond_4
    move v12, v2

    .line 1249
    :goto_3
    iget-object v13, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getPowerSaveDarkModeSwitchState(Landroid/content/Context;)I

    move-result v13

    if-eqz v9, :cond_5

    .line 1252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v10, :cond_6

    .line 1255
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v11, :cond_7

    const/4 v9, 0x2

    .line 1258
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v12, :cond_8

    const/4 v9, 0x4

    .line 1261
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move v9, v2

    .line 1264
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, "\n"

    if-ge v9, v10, :cond_9

    .line 1265
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v6, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1267
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 1268
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f110684

    .line 1269
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_a
    const v6, 0x7f110685

    .line 1271
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1273
    :goto_5
    iget-object v5, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110688

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1277
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.oppo.ACTION_SAVEMODE_CONTROL_SYSTEMUI_TO_POWERMANAGER"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "state"

    .line 1278
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Dialog"

    const-string v5, "source"

    .line 1279
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.coloros.oppoguardelf"

    .line 1280
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x7f11079e

    .line 1281
    new-instance v7, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;

    invoke-direct {v7, p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$5;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/content/Intent;)V

    invoke-virtual {v1, v6, v7}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v6, 0x7f1101ff

    .line 1292
    invoke-virtual {v1, v6, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1294
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1295
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1298
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1300
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 1303
    new-instance v6, Landroid/content/Intent;

    const-string v7, "oppo.intent.action.powermanager.PowerConsumptionRankings"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x14000000

    .line 1304
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1305
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v5, 0x7f110500

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationTitle:Ljava/lang/String;

    .line 1308
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v5, 0x7f1104ff

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContent:Ljava/lang/String;

    .line 1309
    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v3, v2, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContentIntnet:Landroid/app/PendingIntent;

    .line 1310
    new-array v3, v4, [Landroid/app/Notification$Action;

    new-instance v4, Landroid/app/Notification$Action$Builder;

    iget-object v6, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v7, 0x7f11079d

    .line 1311
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v2, p1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v4, v0, v6, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1312
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    aput-object p1, v3, v2

    iput-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgActions:[Landroid/app/Notification$Action;

    return-object v1
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4

    .line 199
    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryAlertCloseLevel:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    return v1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    if-le p1, v3, :cond_1

    return v2

    .line 206
    :cond_1
    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 208
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_2

    rsub-int/lit8 p0, v0, -0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getPowerSaveBacklightSwitchState(Landroid/content/Context;)I
    .locals 3

    .line 1509
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_save_backlight_state"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getPowerSaveDarkModeSwitchState(Landroid/content/Context;)I
    .locals 2

    .line 1534
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "power_save_ColorDarkMode_change_night_mode"

    invoke-static {p0, v1, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getPowerSaveRefreshSwitchState(Landroid/content/Context;)I
    .locals 3

    .line 1524
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_save_coloros_screen_refresh_rate"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getPowerSaveResolutionSwitchState(Landroid/content/Context;)I
    .locals 3

    .line 1529
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_save_coloros_screen_resolution_adjust"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getPowerSaveScreenoffTimeSwitchState(Landroid/content/Context;)I
    .locals 3

    .line 1514
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_save_screenoff_time_state"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getPowerSaveSyncSwitchState(Landroid/content/Context;)I
    .locals 3

    .line 1519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_save_sync_state"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private hasDynamicFPSSupport(Landroid/content/Context;)Z
    .locals 1

    .line 1539
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.dynamicfpsswitch.feature.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1540
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.display.screen.120hz.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1541
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "oppo.display.screen.90hz.support"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

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

.method private hasResolutionSupport(Landroid/content/Context;)Z
    .locals 0

    .line 1545
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "oppo.resolutionswitch.feature.support"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isATOVersion()Z
    .locals 3

    const-string p0, "ro.oppo.factory_mode"

    const-string v0, "0"

    .line 1498
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is ATO version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private isAgingProperties()Z
    .locals 1

    const-string p0, "sys.oppo.eng.full.aging"

    const/4 v0, 0x0

    .line 1505
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isDeviceProvisioned()Z
    .locals 2

    .line 1394
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    .line 1395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    .line 1394
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSavePowerOn()Z
    .locals 2

    .line 1388
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "is_smart_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private notifyCharging(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "Common"

    const-string p1, "ColorOs_PowerUI"

    const-string v0, "notifyCharging: context is null"

    .line 1446
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "audio"

    .line 1450
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1451
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1453
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mUsedSound:Z

    .line 1454
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->playSound(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    .line 1457
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/gesture/VibrationHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v1, v2}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateCustomized(Landroid/content/Context;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private playPowerUISound(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 1485
    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x0

    .line 1486
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1487
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1488
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1490
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNP:Lcom/android/systemui/media/NotificationPlayer;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MediaPlayer Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Common"

    const-string p2, "ColorOs_PowerUI"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private playSound(Landroid/content/Context;)V
    .locals 2

    const-string v0, "/system/media/audio/ui/Usb.ogg"

    .line 1469
    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargingNotifySoundPath:Ljava/lang/String;

    .line 1470
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargingNotifySoundPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargingNotifySoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1472
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->playPowerUISound(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0xaa

    .line 1475
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isLinearVibratorSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/notification/power/-$$Lambda$ColorosPowerUI$t8j3WvXf0zxSGkFwOUE_sfArB_A;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/power/-$$Lambda$ColorosPowerUI$t8j3WvXf0zxSGkFwOUE_sfArB_A;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private showChargeErrorDialog(I)V
    .locals 7

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showChargeErrorDialog type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isAgingProperties()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f11017f

    const v1, 0x7f110182

    const v2, 0x7f1105cd

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v3

    move v2, v0

    goto :goto_2

    :pswitch_0
    const v0, 0x7f11057b

    const v1, 0x7f11057a

    goto :goto_0

    :pswitch_1
    const v0, 0x7f1105cc

    goto :goto_2

    :pswitch_2
    const v0, 0x7f1105cb

    goto :goto_2

    :pswitch_3
    const v0, 0x7f1105ca

    goto :goto_2

    :pswitch_4
    const v0, 0x7f1105c9

    const v1, 0x7f1105c8

    goto :goto_0

    :pswitch_5
    const v0, 0x7f110165

    const v1, 0x7f110166

    goto :goto_0

    :pswitch_6
    const v1, 0x7f110180

    goto :goto_0

    :pswitch_7
    const v1, 0x7f110181

    :goto_0
    move v2, v0

    move v0, v1

    goto :goto_2

    :pswitch_8
    const v0, 0x7f110183

    goto :goto_1

    :pswitch_9
    const v0, 0x7f110215

    :goto_1
    move v2, v1

    :goto_2
    if-nez v0, :cond_1

    return-void

    .line 709
    :cond_1
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v5, 0x7f1202b0

    invoke-direct {v1, v4, v5}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 710
    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 712
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f110200

    new-instance v6, Lcom/coloros/systemui/notification/power/ColorosPowerUI$4;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$4;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    .line 713
    invoke-virtual {v4, v5, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 722
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 724
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isChargingErrorNoAlert()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCtsSupport()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "sys.batterylow.hidetips"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x7

    if-ne p1, v4, :cond_3

    .line 727
    invoke-virtual {p0, p1, v2, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createNotification(III)V

    .line 728
    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    .line 730
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 732
    iput-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    .line 734
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "ColorosPowerUI : dialog"

    .line 735
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 738
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 739
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 741
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 743
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 744
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 745
    sget v3, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v2, v3}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 746
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 747
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 748
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 749
    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showLowBatteryDialog()V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 866
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isSavePowerOn()Z

    .line 869
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/16 v0, 0x11

    .line 871
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    return-void
.end method

.method private showLowBatteryWarning(IZI)Z
    .locals 4

    const-string v0, "ColorOs_PowerUI"

    const-string v1, "Common"

    const-string v2, "showLowBatteryWarning*************"

    .line 825
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissLowBatteryWarning()V

    .line 828
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createBatteryLowDialog(IZI)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    .line 830
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isAgingProperties()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 833
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isChargingErrorNoAlert()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCtsSupport()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 837
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 838
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 839
    sget v2, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {p3, v2}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 840
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 841
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p1

    const-class p3, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    .line 842
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mFullScreenBannerHelper:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->isSimpleBannerEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationTitle:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 843
    iget-object p3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgNotificationContentIntnet:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mDlgActions:[Landroid/app/Notification$Action;

    invoke-virtual {p0, p1, p3, v2, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->createNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/app/Notification$Action;)V

    goto :goto_1

    .line 846
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mIsLowBatteryFistBoot:Z

    if-eqz p1, :cond_3

    .line 847
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 850
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showLowBatteryDialog()V

    :goto_0
    const/4 p2, 0x1

    :goto_1
    const-string p0, "showLowBatteryWarning:  show"

    .line 855
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 834
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    :goto_3
    return p2
.end method

.method private tearDown()V
    .locals 0

    .line 1463
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNP:Lcom/android/systemui/media/NotificationPlayer;

    if-eqz p0, :cond_0

    .line 1464
    invoke-virtual {p0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    :cond_0
    return-void
.end method

.method private updateBattery(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "/sys/class/power_supply/battery/notify_code"

    .line 912
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateNotifyCode(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    const/4 v0, 0x0

    const-string v1, "plugged"

    .line 915
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugged:I

    .line 917
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBattery : event code is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryConnected()V

    .line 921
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryLowTemp()V

    .line 922
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryOverTemp()V

    .line 923
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryTimeout()V

    .line 924
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryFull()V

    .line 925
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateBatteryVoltage()V

    .line 926
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->updateChargeOverVol()V

    .line 929
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugged:I

    if-nez p1, :cond_0

    .line 930
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeoutShow:Z

    .line 931
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVoltShow:Z

    .line 936
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    .line 938
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverCVShow:Z

    .line 939
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    .line 940
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTmpShow:Z

    :cond_0
    return-void
.end method

.method private updateBatteryConnected()V
    .locals 5

    .line 1079
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->BATTERY_CONNECTED_NOT_GOOD:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnect:Z

    .line 1082
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnect:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryConnect:Z

    if-eq v0, v4, :cond_2

    .line 1086
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isATOVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1087
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1090
    :cond_1
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    .line 1093
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnect:Z

    if-nez v0, :cond_3

    .line 1094
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1095
    iput-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnectShow:Z

    .line 1098
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryConnect:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryConnect:Z

    return-void
.end method

.method private updateBatteryFull()V
    .locals 8

    .line 1129
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->BATTERY_FULL:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFull:Z

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bBatteryFull = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFull:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bBatteryFullShow = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFullShow:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bLastBatteryFull = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryFull:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mEvent = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Common"

    const-string v4, "ColorOs_PowerUI"

    invoke-static {v3, v4, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFullShow:Z

    const/16 v3, 0x8

    const/16 v4, 0x9

    const/4 v5, 0x7

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFull:Z

    if-eqz v0, :cond_5

    iget-boolean v6, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryFull:Z

    if-eq v0, v6, :cond_5

    .line 1138
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_NORMAL_BAT_FULL:I

    iget v6, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int v7, v0, v6

    if-ne v0, v7, :cond_1

    .line 1139
    invoke-direct {p0, v5}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    goto :goto_1

    .line 1140
    :cond_1
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_LOWTEMP_BAT_FULL:I

    and-int v7, v0, v6

    if-ne v0, v7, :cond_2

    .line 1141
    invoke-direct {p0, v4}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    goto :goto_1

    .line 1142
    :cond_2
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_HIGHTEMP_BAT_FULL:I

    and-int v7, v0, v6

    if-ne v0, v7, :cond_3

    .line 1143
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHasDisableDialogFeature:Z

    if-nez v0, :cond_4

    .line 1144
    invoke-direct {p0, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    goto :goto_1

    .line 1146
    :cond_3
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->NOTIFY_THIRD_BAT_FULL:I

    and-int/2addr v6, v0

    if-ne v0, v6, :cond_4

    const/16 v0, 0xa

    .line 1147
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1150
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFullShow:Z

    .line 1153
    :cond_5
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFullShow:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFull:Z

    if-nez v0, :cond_7

    .line 1154
    invoke-virtual {p0, v5}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1155
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHasDisableDialogFeature:Z

    if-nez v0, :cond_6

    .line 1156
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1158
    :cond_6
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1159
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFullShow:Z

    .line 1162
    :cond_7
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryFull:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryFull:Z

    return-void
.end method

.method private updateBatteryLowTemp()V
    .locals 5

    .line 1036
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->BATTER_COLD_TEMPERATURE:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTemperature:Z

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bBatteryLowTemperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTemperature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v4, "ColorOs_PowerUI"

    invoke-static {v1, v4, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTmpShow:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTemperature:Z

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryLowTemperature:Z

    if-eq v0, v4, :cond_1

    .line 1042
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1043
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTmpShow:Z

    .line 1047
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTmpShow:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTemperature:Z

    if-nez v0, :cond_2

    .line 1048
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1049
    iput-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTmpShow:Z

    .line 1052
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryLowTemperature:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryLowTemperature:Z

    return-void
.end method

.method private updateBatteryOverTemp()V
    .locals 5

    .line 1058
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->BATTER_OVER_TEMPERATURE:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTemperature:Z

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bBatteryOverTemperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTemperature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v4, "ColorOs_PowerUI"

    invoke-static {v1, v4, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTmpShow:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTemperature:Z

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryOverTemperature:Z

    if-eq v0, v4, :cond_1

    .line 1064
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1065
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTmpShow:Z

    .line 1068
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTmpShow:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTemperature:Z

    if-nez v0, :cond_2

    .line 1069
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1070
    iput-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTmpShow:Z

    .line 1073
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverTemperature:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryOverTemperature:Z

    return-void
.end method

.method private updateBatteryTimeout()V
    .locals 5

    .line 1168
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGER_OVER_TIME:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeout:Z

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bBatteryTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v4, "ColorOs_PowerUI"

    invoke-static {v1, v4, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeoutShow:Z

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeout:Z

    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryTimeout:Z

    if-eq v0, v4, :cond_1

    .line 1174
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1175
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeoutShow:Z

    .line 1178
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeoutShow:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeout:Z

    if-nez v0, :cond_2

    .line 1179
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1180
    iput-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeoutShow:Z

    .line 1183
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryTimeout:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryTimeout:Z

    return-void
.end method

.method private updateBatteryVoltage()V
    .locals 4

    .line 1015
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->BATTER_OVER_VOLTAGE:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVol:Z

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", bBatteryOverVol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVol:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v3, "ColorOs_PowerUI"

    invoke-static {v1, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVoltShow:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVol:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryOverVol:Z

    if-eq v0, v3, :cond_1

    .line 1021
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1025
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVoltShow:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVol:Z

    if-nez v0, :cond_2

    .line 1026
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1027
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVoltShow:Z

    .line 1030
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverVol:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastBatteryOverVol:Z

    return-void
.end method

.method private updateBatteryVoltage1(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "batteryvolstatus"

    .line 612
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryVolStatus:I

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBatteryVoltage:mBatteryVolStatus = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryVolStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOldBatteryVolStatus = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryVolStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryVolStatus:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryVolStatus:I

    if-ne v0, p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryPlugged:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryPlugged:Z

    if-nez p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    .line 626
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showBatteryVoltageDialog:Z

    .line 627
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    goto :goto_0

    .line 617
    :cond_2
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryVolStatus:I

    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryVolStatus:I

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showBatteryVoltageDialog:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 618
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showBatteryVoltageDialog:Z

    .line 619
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 632
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryPlugged:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryPlugged:Z

    .line 633
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryVolStatus:I

    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldBatteryVolStatus:I

    return-void
.end method

.method private updateChargeOverVol()V
    .locals 5

    .line 1106
    sget v0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->CHARGER_OVER_VOLTAGE:I

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mEvent:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bChargeOverVol:Z

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bChargeOverVol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bChargeOverVol:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v4, "ColorOs_PowerUI"

    invoke-static {v1, v4, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverCVShow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bChargeOverVol:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastChargeOverVol:Z

    if-eq v0, v1, :cond_1

    .line 1113
    invoke-direct {p0, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 1114
    iput-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverCVShow:Z

    .line 1117
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverCVShow:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bChargeOverVol:Z

    if-nez v0, :cond_2

    .line 1118
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 1119
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bBatteryOverCVShow:Z

    .line 1122
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bChargeOverVol:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->bLastChargeOverVol:Z

    return-void
.end method

.method private updateChargeTimeout(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "chargetimeout"

    .line 638
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeTimeout:Z

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChargeTimeout mChargeTimeout = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeTimeout:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOldChargeTimeout = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeTimeout:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v1, v2, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeTimeout:Z

    const/4 v1, 0x6

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeTimeout:Z

    if-eq v2, p1, :cond_0

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeTimeoutDialog:Z

    .line 642
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    goto :goto_0

    .line 644
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeTimeout:Z

    iget-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeTimeout:Z

    if-eq p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeTimeoutDialog:Z

    if-eqz p1, :cond_1

    .line 645
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeTimeoutDialog:Z

    .line 646
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 649
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeTimeout:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeTimeout:Z

    return-void
.end method

.method private updateChargerVoltage(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "chargervolstatus"

    const/4 v1, -0x1

    .line 580
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateChargerVoltage: mpluged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", charger voltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v4, "ColorOs_PowerUI"

    invoke-static {v1, v4, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 594
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOppoPlugType:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeVolStatus:I

    if-eq v0, p1, :cond_3

    .line 599
    iput-boolean v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargerVoltageDialog:Z

    .line 600
    invoke-direct {p0, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    goto :goto_1

    .line 586
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeVolStatus:I

    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargerVoltageDialog:Z

    if-eqz v0, :cond_3

    .line 587
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargerVoltageDialog:Z

    .line 588
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissChargeErrorWarring(I)V

    .line 606
    :cond_3
    :goto_1
    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mOldChargeVolStatus:I

    return-void
.end method


# virtual methods
.method public convertNotifyCode(Ljava/lang/String;)I
    .locals 4

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorOs_PowerUI"

    const-string v2, "Common"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v3, ""

    .line 956
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 960
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    iput p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotifyCode:I

    .line 967
    iget p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotifyCode:I

    return p0

    .line 962
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t parse "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "to integer!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public createNotification(III)V
    .locals 2

    .line 755
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez p1, :cond_0

    .line 756
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 759
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isAgingProperties()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 762
    :cond_1
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f0806b2

    .line 763
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 766
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 767
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string p3, "sys"

    .line 768
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 769
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 770
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p2, 0x0

    const/16 p3, 0x2716

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public createNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;[Landroid/app/Notification$Action;)V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isAgingProperties()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 784
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "force_show"

    .line 785
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 787
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0806b2

    .line 788
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 789
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 790
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 791
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 792
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 793
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 794
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p4, :cond_2

    .line 796
    array-length v0, p4

    :goto_0
    if-ge p2, v0, :cond_3

    aget-object v1, p4, p2

    .line 797
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 800
    :cond_2
    new-instance p4, Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v1, 0x7f110200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "oppo.intent.action.CANCEL_NOTIFICAITON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 801
    invoke-static {v1, p2, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {p4, p3, v0, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 802
    invoke-virtual {p4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    .line 800
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 804
    :cond_3
    iget-object p2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v0, 0x2717

    invoke-virtual {p2, p3, v0, p4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 805
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public dismissChargeErrorWarring(I)V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    if-eq v0, p1, :cond_0

    if-eq v1, p1, :cond_0

    if-ne v0, v1, :cond_1

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissChargeErrorWarring type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mChargeErrorDialogType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common"

    const-string v2, "ColorOs_PowerUI"

    invoke-static {v0, v2, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 812
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialog:Lcolor/support/v7/app/AlertDialog;

    .line 816
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x2716

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :catch_0
    iput v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mChargeErrorDialogType:I

    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidChargerDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Common"

    const-string v3, "ColorOs_PowerUI"

    invoke-static {v2, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 393
    iput-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_1

    const/16 v0, 0x2717

    .line 398
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 473
    array-length p1, p3

    if-eqz p1, :cond_3

    array-length p1, p3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    aget-object p1, p3, v0

    const-string v1, "ShowChargeErrorDialg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, p3

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 496
    aget-object p1, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 497
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showChargeErrorDialog(I)V

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "show charge error dialog type "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 499
    :cond_1
    aget-object p1, p3, v0

    const-string p3, "showInvalidChargerDialog"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->showInvalidChargerDialog()V

    const-string p0, "show charge invalid dialog!"

    .line 501
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string p0, "show charge error dialog argument error"

    .line 503
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    :goto_0
    const-string p1, "mLowBatteryAlertCloseLevel="

    .line 475
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 476
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "mLowBatteryReminderLevels="

    .line 477
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mInvalidChargerDialog="

    .line 479
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidChargerDialog:Lcolor/support/v7/app/AlertDialog;

    const-string p3, "null"

    if-nez p1, :cond_4

    move-object p1, p3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mLowBatteryDialog="

    .line 481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryDialog:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mBatteryLevel="

    .line 483
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mBatteryStatus="

    .line 485
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryStatus:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mPlugType="

    .line 487
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mInvalidCharger="

    .line 489
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 490
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidCharger:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "bucket: "

    .line 491
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    iget p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->findBatteryLevelBucket(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public getNotifyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 974
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 976
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 978
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 979
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 982
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Common"

    const-string v5, "ColorOs_PowerUI"

    .line 983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "line content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 988
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mStringNotifyCode:Ljava/lang/String;

    .line 989
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mStringNotifyCode:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 998
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1004
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-object v1, v0

    goto :goto_2

    :cond_1
    move-object p1, v0

    move-object v1, p1

    :cond_2
    if-eqz p1, :cond_3

    .line 998
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    if-eqz v1, :cond_4

    .line 1004
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_4
    return-object v0

    :catchall_2
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    :goto_1
    if-eqz p1, :cond_5

    .line 998
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_5
    if-eqz v1, :cond_6

    .line 1004
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1008
    :catch_6
    :cond_6
    throw p0

    :catch_7
    move-object p1, v0

    move-object v1, p1

    :catch_8
    :goto_2
    if-eqz p1, :cond_7

    .line 998
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_7
    if-eqz v1, :cond_8

    .line 1004
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_8
    return-object v0
.end method

.method public synthetic lambda$playSound$0$ColorosPowerUI()V
    .locals 3

    .line 1478
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/gesture/VibrationHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/gesture/VibrationHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/coloros/systemui/gesture/VibrationHelper;->vibrateCustomized(Landroid/content/Context;IZ)V

    return-void
.end method

.method playLowBatterySound()V
    .locals 6

    const-string v0, "ColorOs_PowerUI"

    const-string v1, "Common"

    const-string v2, "playing low battery sound. WOMP-WOMP!"

    .line 403
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isLowBatteryNoSound()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCtsSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCmccCustomizedVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xc350

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system bootup. no playing low battery sound. time="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "playLowBatterySound"

    .line 414
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 416
    iput v1, v0, Landroid/os/Message;->what:I

    .line 417
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method showInvalidChargerDialog()V
    .locals 4

    const-string v0, "Common"

    const-string v1, "ColorOs_PowerUI"

    const-string v2, "showing invalid charger dialog"

    .line 433
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->isAgingProperties()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->dismissLowBatteryWarning()V

    .line 440
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const v2, 0x7f1202b0

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 441
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1103b7

    .line 443
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x1010355

    .line 444
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIconAttribute(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110200

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 447
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 448
    new-instance v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI$3;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI$3;-><init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 455
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 458
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 461
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 462
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 463
    sget v3, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v2, v3}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 464
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 465
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isChargingErrorNoAlert()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isCtsSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 468
    :cond_1
    iput-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mInvalidChargerDialog:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method public start()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryAlertCloseLevel:I

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mLowBatteryReminderLevels:[I

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 159
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mIsLowBatteryFistBoot:Z

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->loadFeatureOption(Landroid/content/Context;)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oppo.intent.action.CANCEL_NOTIFICAITON"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 180
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHideLowBDialog:Z

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mHideLowBDialog :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHideLowBDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorOs_PowerUI"

    const-string v3, "SystemUi--"

    invoke-static {v3, v2, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHandler:Landroid/os/Handler;

    const-string v5, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v1, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryChangeCallback:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.disable.warm_tbatt.warning.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHasDisableDialogFeature:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasDisableDialogFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mHasDisableDialogFeature:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Notification"

    invoke-static {v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNotifyCode(Ljava/lang/String;)I
    .locals 0

    .line 947
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->getNotifyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mStringNotifyCode:Ljava/lang/String;

    .line 948
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mStringNotifyCode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->convertNotifyCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
