.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BatterySaverStickyPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "low_power_sticky_auto_disable_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 5

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_sticky_auto_disable_level"

    const/16 v2, 0x5a

    .line 41
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    .line 44
    invoke-static {}, Landroid/icu/text/NumberFormat;->getPercentInstance()Landroid/icu/text/NumberFormat;

    move-result-object v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v3

    .line 45
    invoke-virtual {v2, v0, v1}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f120314

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_sticky_auto_disable_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "low_power_sticky_auto_disable_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 55
    move-object v2, p1

    check-cast v2, Landroidx/preference/TwoStatePreference;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverStickyPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method
