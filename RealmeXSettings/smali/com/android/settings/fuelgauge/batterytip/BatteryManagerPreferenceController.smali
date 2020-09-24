.class public Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;
.super Lcom/android/settings/core/a;
.source "BatteryManagerPreferenceController.java"


# static fields
.field private static final KEY_BATTERY_MANAGER:Ljava/lang/String; = "smart_battery_manager"

.field private static final ON:I = 0x1


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "smart_battery_manager"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    .line 46
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 47
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/f;->a(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/i;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adaptive_battery_management_enabled"

    goto :goto_0

    :cond_0
    const-string v1, "app_auto_restriction_enabled"

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 65
    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->updateSummary(Landroidx/preference/Preference;ZI)V

    return-void
.end method

.method updateSummary(Landroidx/preference/Preference;ZI)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-lez p3, :cond_0

    .line 71
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryManagerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10000a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    invoke-virtual {p2, v0, p3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const p2, 0x7f1202f7

    .line 74
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_1
    const p2, 0x7f1202f6

    .line 76
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
