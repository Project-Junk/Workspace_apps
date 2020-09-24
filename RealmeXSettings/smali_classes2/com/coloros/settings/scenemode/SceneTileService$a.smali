.class final Lcom/coloros/settings/scenemode/SceneTileService$a;
.super Landroid/database/ContentObserver;
.source "SceneTileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/scenemode/SceneTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/scenemode/SceneTileService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/scenemode/SceneTileService;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/coloros/settings/scenemode/SceneTileService$a;->a:Lcom/coloros/settings/scenemode/SceneTileService;

    .line 204
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SceneTileService"

    const-string v0, "SceneModeSettingObserver : onChange"

    .line 210
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/coloros/settings/scenemode/SceneTileService$a;->a:Lcom/coloros/settings/scenemode/SceneTileService;

    invoke-static {p1}, Lcom/coloros/settings/scenemode/SceneTileService;->c(Lcom/coloros/settings/scenemode/SceneTileService;)V

    :cond_0
    return-void
.end method
