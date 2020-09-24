.class Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;
.super Ljava/lang/Object;
.source "SmallScreenTile.java"

# interfaces
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/SmallScreenTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p2}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$000(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDragWindowReceiver ---- action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    invoke-static {v1, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.oppo.intent.action.EXIT_DRAG_WINDOW"

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 70
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$102(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Z)Z

    .line 71
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$200(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.oppo.intent.action.SUCCESS_DRAG_WINDOW"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$102(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Z)Z

    .line 74
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$300(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Ljava/lang/Object;)V

    .line 76
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$500(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$400(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
