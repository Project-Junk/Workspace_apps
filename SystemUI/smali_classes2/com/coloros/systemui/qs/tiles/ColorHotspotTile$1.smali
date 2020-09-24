.class Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$1;
.super Landroid/database/ContentObserver;
.source "ColorHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;Landroid/os/Handler;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 43
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->access$100(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "exclusive_data_actived"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->access$002(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;Z)Z

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->refreshState()V

    return-void
.end method
