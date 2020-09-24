.class public final Lcom/android/settings/fuelgauge/f;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/f$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/settings/fuelgauge/f$a;

.field private b:Z

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/f;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/f;->b:Z

    if-nez v0, :cond_0

    .line 57
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/fuelgauge/f;->c:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/f;->b:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 62
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/f;->b:Z

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/android/settings/fuelgauge/f;->c:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/f;->b:Z

    :cond_1
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/settings/fuelgauge/f;->a:Lcom/android/settings/fuelgauge/f$a;

    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/f$a;->onPowerSaveModeChanged()V

    return-void

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/android/settings/fuelgauge/f;->a:Lcom/android/settings/fuelgauge/f$a;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "plugged"

    .line 49
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/android/settings/fuelgauge/f;->a:Lcom/android/settings/fuelgauge/f$a;

    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/f$a;->onBatteryChanged(Z)V

    :cond_2
    return-void
.end method
