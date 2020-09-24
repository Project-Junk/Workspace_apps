.class final Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorUserPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo.intent.action.settings.UPDATE_MESSAGE_BOX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ColorUserPreferenceController"

    const-string v0, "onReceive ACTION_BROADCAST_UPDATE_MESSAGE_BOX"

    .line 369
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "USERCENTER_BROADCAST_GET_USERPROFILE"

    .line 370
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 371
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$500(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/a;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$1;->a:Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;->access$400(Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController;)Lcom/coloros/settings/feature/homepage/user/ColorUserPreferenceController$a;

    move-result-object p2

    .line 1049
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/homepage/user/a;->a(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
