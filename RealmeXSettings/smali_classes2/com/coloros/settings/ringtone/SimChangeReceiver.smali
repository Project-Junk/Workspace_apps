.class public Lcom/coloros/settings/ringtone/SimChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SimChangeReceiver"

    const-string v1, "onReceive"

    .line 32
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo.intent.action.simsettings.SIM_CARD_TYPE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/coloros/settings/utils/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sim_card_type"

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
