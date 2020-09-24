.class public Lcom/coloros/settings/background/SettingsBackgroundIntentService;
.super Landroid/app/IntentService;
.source "SettingsBackgroundIntentService.java"


# instance fields
.field private a:Landroid/app/OppoWhiteListManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "SettingsBackgroundIntentService"

    .line 34
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/app/OppoWhiteListManager;

    invoke-direct {v0, p0}, Landroid/app/OppoWhiteListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/background/SettingsBackgroundIntentService;->a:Landroid/app/OppoWhiteListManager;

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/background/SettingsBackgroundIntentService;->a:Landroid/app/OppoWhiteListManager;

    invoke-virtual {p0}, Lcom/coloros/settings/background/SettingsBackgroundIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/OppoWhiteListManager;->addStageProtectInfo(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/background/SettingsBackgroundIntentService;->a:Landroid/app/OppoWhiteListManager;

    invoke-virtual {p0}, Lcom/coloros/settings/background/SettingsBackgroundIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/OppoWhiteListManager;->removeStageProtectInfo(Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background.action.UPDATE_BADGE"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/background/SettingsBackgroundIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/coloros/settings/utils/bh;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->f(Landroid/content/Context;I)V

    return-void

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->V(Landroid/content/Context;)I

    move-result v0

    .line 54
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->f(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
