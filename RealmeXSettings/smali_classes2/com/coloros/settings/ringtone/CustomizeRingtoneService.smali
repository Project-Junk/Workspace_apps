.class public Lcom/coloros/settings/ringtone/CustomizeRingtoneService;
.super Landroid/app/IntentService;
.source "CustomizeRingtoneService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CustomizeRingtoneService"

    .line 27
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/coloros/settings/ringtone/CustomizeRingtoneService;->setIntentRedelivery(Z)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/coloros/settings/utils/k;->a(Landroid/content/Context;)V

    return-void
.end method
