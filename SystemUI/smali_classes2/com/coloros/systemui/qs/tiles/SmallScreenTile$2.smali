.class Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;
.super Ljava/lang/Object;
.source "SmallScreenTile.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$100(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$102(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Z)Z

    .line 104
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState()V

    :cond_0
    return-void
.end method
