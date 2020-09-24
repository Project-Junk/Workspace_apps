.class public Lcom/android/systemui/qs/PagedTileLayout$TilePage;
.super Lcom/android/systemui/qs/TileLayout;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilePage"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isFull()Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maxTiles()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRows:I

    mul-int/2addr v0, p0

    const/4 p0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public updateResources()Z
    .locals 2

    .line 564
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setPadding(IIII)V

    .line 567
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result p0

    return p0
.end method
