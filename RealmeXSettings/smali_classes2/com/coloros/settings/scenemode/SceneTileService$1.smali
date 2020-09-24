.class final Lcom/coloros/settings/scenemode/SceneTileService$1;
.super Ljava/lang/Object;
.source "SceneTileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/scenemode/SceneTileService;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/scenemode/SceneTileService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/scenemode/SceneTileService;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/coloros/settings/scenemode/SceneTileService$1;->a:Lcom/coloros/settings/scenemode/SceneTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService$1;->a:Lcom/coloros/settings/scenemode/SceneTileService;

    invoke-static {v0}, Lcom/coloros/settings/scenemode/SceneTileService;->a(Lcom/coloros/settings/scenemode/SceneTileService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService$1;->a:Lcom/coloros/settings/scenemode/SceneTileService;

    invoke-static {v0}, Lcom/coloros/settings/scenemode/SceneTileService;->b(Lcom/coloros/settings/scenemode/SceneTileService;)V

    :cond_0
    return-void
.end method
