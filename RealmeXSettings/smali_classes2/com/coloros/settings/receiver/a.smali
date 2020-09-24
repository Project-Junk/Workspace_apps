.class public final Lcom/coloros/settings/receiver/a;
.super Landroid/content/BroadcastReceiver;
.source "SimStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/receiver/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/coloros/settings/receiver/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/coloros/settings/receiver/a;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/coloros/settings/receiver/a;->a:Z

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/coloros/settings/receiver/a;->a:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/coloros/settings/receiver/a;->a:Z

    const/4 v0, 0x0

    const-string v1, "oppo.permission.OPPO_COMPONENT_SAFE"

    .line 95
    invoke-virtual {p1, p0, p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive intent="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStateReceiver"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oppo.intent.action.SUBINFO_STATE_CHANGE"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "slotid"

    .line 57
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "simstate"

    .line 58
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "simid"

    .line 60
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "reason"

    .line 61
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 64
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "slotId="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    if-eqz v0, :cond_4

    const-string v0, "PLUGIN"

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    invoke-interface {p1, v3}, Lcom/coloros/settings/receiver/a$a;->b(I)V

    return-void

    :cond_2
    const-string v0, "PLUGOUT"

    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    invoke-interface {p1, v3}, Lcom/coloros/settings/receiver/a$a;->a(I)V

    return-void

    .line 71
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    invoke-interface {p1, v3}, Lcom/coloros/settings/receiver/a$a;->c(I)V

    return-void

    :cond_4
    const-string p1, "mCallback is null."

    .line 75
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
