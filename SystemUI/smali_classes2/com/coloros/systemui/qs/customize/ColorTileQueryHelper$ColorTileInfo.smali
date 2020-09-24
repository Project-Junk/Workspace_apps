.class public Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;
.super Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
.source "ColorTileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorTileInfo"
.end annotation


# instance fields
.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    const/4 v0, 0x1

    .line 361
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->visible:Z

    return-void
.end method
