.class public interface abstract Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;
.super Ljava/lang/Object;
.source "ColorTileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ColorTileStateListener"
.end annotation


# virtual methods
.method public abstract onCurrentTilesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStockTilesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;)V"
        }
    .end annotation
.end method
