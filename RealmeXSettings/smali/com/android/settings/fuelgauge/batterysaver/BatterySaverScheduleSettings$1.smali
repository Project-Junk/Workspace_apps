.class final Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;Landroid/os/Handler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;->a:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;->a:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 70
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$1;->a:Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;->j_()V

    return-void
.end method
