.class Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickQSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderTileLayout"
.end annotation


# instance fields
.field private mClippingBounds:Landroid/graphics/Rect;

.field private mListening:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 212
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;)V

    .line 209
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipChildren(Z)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipToPadding(Z)V

    .line 215
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 217
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calculateColumns()Z
    .locals 7

    .line 277
    iget v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    .line 278
    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 281
    iput v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    return v3

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getPaddingStart()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    .line 286
    iget v5, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    mul-int/2addr v5, v1

    sub-int v5, v4, v5

    add-int/lit8 v6, v1, -0x1

    .line 288
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/2addr v5, v6

    if-lez v5, :cond_1

    .line 291
    iput v5, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellMarginHorizontal:I

    .line 292
    iput v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    goto :goto_1

    .line 294
    :cond_1
    iget v5, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    if-nez v5, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    div-int v5, v4, v5

    .line 295
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    .line 301
    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    if-le v1, v3, :cond_3

    .line 302
    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    iget v5, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    mul-int/2addr v1, v5

    sub-int/2addr v4, v1

    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    sub-int/2addr v1, v3

    div-int/2addr v4, v1

    iput v4, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellMarginHorizontal:I

    goto :goto_1

    .line 304
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mColumns: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Statusbar"

    const-string v5, "QuickQSPanel"

    invoke-static {v4, v5, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_1
    iget p0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    if-eq p0, v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method private generateTileLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 233
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    iget p0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellHeight:I

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private setAccessibilityOrder()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 315
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/plugins/qs/QSTileView;->updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    const v0, 0x7f0a0252

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->setAccessibilityTraversalBefore(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected addTileView(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 2

    .line 239
    iget-object p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->generateTileLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected getColumnStart(I)I
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    iget p0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellMarginHorizontal:I

    add-int/2addr v1, p0

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public getNumVisibleTiles()I
    .locals 0

    .line 339
    iget p0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/android/systemui/qs/TileLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->updateResources()Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->updateResources()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 252
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    const/16 p2, 0x2710

    invoke-virtual {p1, p3, p3, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mClippingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->calculateColumns()Z

    move p1, p3

    .line 260
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 261
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p2, p2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget p4, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    if-ge p1, p4, :cond_1

    move p4, p3

    goto :goto_1

    :cond_1
    const/16 p4, 0x8

    :goto_1
    invoke-virtual {p2, p4}, Lcom/android/systemui/plugins/qs/QSTileView;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setAccessibilityOrder()V

    .line 265
    iget p1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mColumns:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->layoutTileRecords(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 326
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 327
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget v1, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    invoke-static {v1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->exactly(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellHeight:I

    invoke-static {v2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->exactly(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->measure(II)V

    goto :goto_0

    .line 331
    :cond_1
    iget p2, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellHeight:I

    if-gez p2, :cond_2

    const/4 p2, 0x0

    .line 334
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public updateResources()Z
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07074f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    .line 271
    iget v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellWidth:I

    iput v0, p0, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;->mCellHeight:I

    const/4 p0, 0x0

    return p0
.end method
