.class final Lcom/coloros/settings/third/ColorRingtoneSelectActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ColorRingtoneSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/third/ColorRingtoneSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$2;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive, ACTION = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetRingtoneActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_EJECT"

    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$2;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ACTION_MEDIA_EJECT, path is invalib!"

    .line 404
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$2;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    :cond_1
    return-void
.end method
