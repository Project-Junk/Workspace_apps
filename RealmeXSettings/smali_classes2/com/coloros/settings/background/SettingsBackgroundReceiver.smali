.class public Lcom/coloros/settings/background/SettingsBackgroundReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsBackgroundReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coloros/settings/background/SettingsBackgroundIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "background.action.UPDATE_BADGE"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive: intent = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsBackgroundReceiver"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "oppo.intent.action.OTA_CORNER_MARK_CHANGED"

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/coloros/settings/background/SettingsBackgroundReceiver;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v0, "oppo.intent.action.OPPO_RECOVER_UPDATE_SUCCESSED"

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "oppo.intent.action.OPPO_OTA_UPDATE_SUCCESSED"

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coloros/settings/feature/fingerprint/FingerprintOTAService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 41
    invoke-static {}, Lcom/coloros/settings/utils/bh;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 43
    invoke-static {p1}, Lcom/coloros/settings/background/SettingsBackgroundReceiver;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
