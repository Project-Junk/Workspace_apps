.class final Lcom/coloros/settings/scenemode/SceneModeActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SceneModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/scenemode/SceneModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/scenemode/SceneModeActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/scenemode/SceneModeActivity;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity$2;->a:Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.coloros.scenemode.action.FINISH_ACTIVITY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity$2;->a:Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity$2;->a:Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SceneTileActivityTAG"

    const-string p2, "broadcast finish activity"

    .line 288
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity$2;->a:Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    :cond_0
    return-void
.end method
