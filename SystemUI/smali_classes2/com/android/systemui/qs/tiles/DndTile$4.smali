.class Lcom/android/systemui/qs/tiles/DndTile$4;
.super Landroid/content/BroadcastReceiver;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "visible"

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 365
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/DndTile;->access$700(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    invoke-static {v1, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/DndTile;->access$800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 367
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$4;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState()V

    return-void
.end method
