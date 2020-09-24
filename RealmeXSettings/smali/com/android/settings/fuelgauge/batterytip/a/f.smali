.class public final Lcom/android/settings/fuelgauge/batterytip/a/f;
.super Lcom/android/settings/fuelgauge/batterytip/a/b;
.source "SmartBatteryAction.java"


# instance fields
.field private c:Lcom/android/settings/SettingsActivity;

.field private d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/a/b;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/a/f;->c:Lcom/android/settings/SettingsActivity;

    .line 36
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/a/f;->d:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/f;->b:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/a/f;->a:Landroid/content/Context;

    const/16 v2, 0x554

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 46
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/f;->c:Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/a/f;->d:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settingslib/core/instrumentation/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/b;

    .line 48
    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const-class v0, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f1214f4

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method
