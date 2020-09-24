.class public final Lcom/android/settings/fuelgauge/b;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/fuelgauge/b$a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/settings/fuelgauge/b;->d:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 2

    if-eqz p1, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-static {p1}, Lcom/android/settings/m;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settings/fuelgauge/b;->d:Landroid/content/Context;

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    invoke-static {v1, p1}, Lcom/android/settings/m;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/b$a;->onBatteryChanged(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 109
    iget-object p2, p0, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/b$a;->onBatteryChanged(I)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p2, p0, Lcom/android/settings/fuelgauge/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 111
    iget-object p2, p0, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/android/settings/fuelgauge/b$a;->onBatteryChanged(I)V

    .line 113
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/b;->a:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/android/settings/fuelgauge/b;->b:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/b$a;->onBatteryChanged(I)V

    .line 119
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/fuelgauge/b;->d:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/b;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/fuelgauge/b;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 80
    invoke-direct {p0, p2, p1}, Lcom/android/settings/fuelgauge/b;->a(Landroid/content/Intent;Z)V

    return-void
.end method
