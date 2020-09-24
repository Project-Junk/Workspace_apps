.class public Lcom/android/settings/fuelgauge/BatterySaverController;
.super Lcom/android/settings/core/a;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/f$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final KEY_BATTERY_SAVER:Ljava/lang/String; = "battery_saver_summary"


# instance fields
.field private mBatterySaverPref:Landroidx/preference/Preference;

.field private final mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/f;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "battery_saver_summary"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySaverController$1;

    new-instance v1, Landroid/os/Handler;

    .line 113
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverController$1;-><init>(Lcom/android/settings/fuelgauge/BatterySaverController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 49
    new-instance v0, Lcom/android/settings/fuelgauge/f;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/f;

    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/f;

    .line 1069
    iput-object p0, v0, Lcom/android/settings/fuelgauge/f;->a:Lcom/android/settings/fuelgauge/f$a;

    .line 51
    invoke-static {p1}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatterySaverController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_saver_summary"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatterySaverPref:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_saver_summary"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "low_power_trigger_level"

    .line 90
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "automatic_power_save_mode"

    .line 92
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x7f120310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x7f12030e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {v3}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 98
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x7f12030f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x7f120307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBatteryChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_trigger_level"

    .line 73
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 72
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/f;

    invoke-virtual {v0, v3}, Lcom/android/settings/fuelgauge/f;->a(Z)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySaverController;->updateSummary()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverController;->mBatteryStateChangeReceiver:Lcom/android/settings/fuelgauge/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/f;->a(Z)V

    return-void
.end method
