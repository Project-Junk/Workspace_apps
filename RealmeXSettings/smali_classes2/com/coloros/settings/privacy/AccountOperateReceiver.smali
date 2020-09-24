.class public Lcom/coloros/settings/privacy/AccountOperateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountOperateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.heytap.usercenter.account_logout"

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 27
    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const-string v0, "oppo.privacy.password.delete"

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    invoke-static {p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
