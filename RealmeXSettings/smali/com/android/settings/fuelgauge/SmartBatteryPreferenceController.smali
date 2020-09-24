.class public Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;
.super Lcom/android/settings/core/a;
.source "SmartBatteryPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_SMART_BATTERY:Ljava/lang/String; = "smart_battery"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "smart_battery"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart_battery"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "adaptive_battery_management_enabled"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "adaptive_battery_management_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 63
    :goto_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
