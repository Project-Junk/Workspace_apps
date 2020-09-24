.class public final Lcom/android/settings/fuelgauge/e;
.super Lcom/android/settingslib/core/a;
.source "BatteryOptimizationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private a:Lcom/android/settingslib/j/c;

.field private b:Lcom/android/settings/dashboard/DashboardFragment;

.field private c:Lcom/android/settings/SettingsActivity;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/fuelgauge/e;->b:Lcom/android/settings/dashboard/DashboardFragment;

    .line 50
    iput-object p1, p0, Lcom/android/settings/fuelgauge/e;->c:Lcom/android/settings/SettingsActivity;

    .line 51
    iput-object p3, p0, Lcom/android/settings/fuelgauge/e;->d:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/android/settings/fuelgauge/e;->c:Lcom/android/settings/SettingsActivity;

    invoke-static {p1}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/e;->a:Lcom/android/settingslib/j/c;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_optimization"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "battery_optimization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-class v0, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classname"

    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/e;->c:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f120ae0

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/android/settings/fuelgauge/e;->b:Lcom/android/settings/dashboard/DashboardFragment;

    .line 94
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/fuelgauge/e;->a:Lcom/android/settingslib/j/c;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120ae4

    goto :goto_0

    :cond_0
    const v0, 0x7f120ae3

    .line 73
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
