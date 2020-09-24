.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;
.super Lcom/android/settings/core/a;
.source "BatterySaverSchedulePreferenceController.java"


# static fields
.field public static final KEY_BATTERY_SAVER_SCHEDULE:Ljava/lang/String; = "battery_saver_schedule"


# instance fields
.field mBatterySaverSchedulePreference:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "battery_saver_schedule"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/android/settingslib/j/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "battery_saver_schedule"

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mBatterySaverSchedulePreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_saver_schedule"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "automatic_power_save_mode"

    .line 64
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "low_power_trigger_level"

    .line 68
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120304

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120306

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 73
    invoke-static {v0}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSchedulePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
