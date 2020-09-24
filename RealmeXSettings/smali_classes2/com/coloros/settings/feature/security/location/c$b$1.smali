.class final Lcom/coloros/settings/feature/security/location/c$b$1;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/c$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/c$b;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 494
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enabled"

    const/4 v2, 0x1

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "SettingsInjector"

    const/4 v3, 0x3

    .line 496
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    iget-object v4, v4, Lcom/coloros/settings/feature/security/location/c$b;->a:Lcom/coloros/settings/feature/security/location/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bundle: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/location/c$b;->b:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/location/c$b;->b:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 501
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/location/c$b;->d:Lcom/coloros/settings/feature/security/location/c;

    .line 1068
    iget-object p1, p1, Lcom/coloros/settings/feature/security/location/c;->c:Landroid/os/Handler;

    .line 501
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/location/c$b;->d:Lcom/coloros/settings/feature/security/location/c;

    .line 2068
    iget-object v0, v0, Lcom/coloros/settings/feature/security/location/c;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 502
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c$b$1;->a:Lcom/coloros/settings/feature/security/location/c$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 501
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
