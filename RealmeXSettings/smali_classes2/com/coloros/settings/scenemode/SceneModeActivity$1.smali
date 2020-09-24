.class final Lcom/coloros/settings/scenemode/SceneModeActivity$1;
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

    .line 271
    iput-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity$1;->a:Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 275
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 276
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "SceneTileActivityTAG"

    const-string p2, "mSystemActionReceiver finish activity"

    .line 277
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneModeActivity$1;->a:Lcom/coloros/settings/scenemode/SceneModeActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->finish()V

    :cond_1
    return-void
.end method
