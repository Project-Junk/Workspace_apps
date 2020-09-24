.class public Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;
.super Lcolor/support/v7/app/AlertController$RecycleListView;
.source "ColorAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/app/ColorAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorRecyclerListView"
.end annotation


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mCornerRadius:I

.field private mNeedClip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 696
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1, p2}, Lcolor/support/v7/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->alert_dialog_bottom_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mCornerRadius:I

    return-void
.end method

.method private clipRoundBounds(Landroid/graphics/Canvas;)V
    .locals 8

    const/16 v0, 0x8

    .line 731
    new-array v6, v0, [F

    iget v0, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mCornerRadius:I

    int-to-float v1, v0

    const/4 v2, 0x0

    aput v1, v6, v2

    int-to-float v1, v0

    const/4 v2, 0x1

    aput v1, v6, v2

    int-to-float v1, v0

    const/4 v2, 0x2

    aput v1, v6, v2

    int-to-float v0, v0

    const/4 v1, 0x3

    aput v0, v6, v1

    const/4 v0, 0x0

    const/4 v1, 0x4

    aput v0, v6, v1

    const/4 v1, 0x5

    aput v0, v6, v1

    const/4 v1, 0x6

    aput v0, v6, v1

    const/4 v1, 0x7

    aput v0, v6, v1

    .line 732
    iget-object v0, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mClipPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mClipPath:Landroid/graphics/Path;

    .line 734
    iget-object v1, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 736
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 713
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 714
    iget-boolean v0, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mNeedClip:Z

    if-eqz v0, :cond_0

    .line 715
    invoke-direct {p0, p1}, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->clipRoundBounds(Landroid/graphics/Canvas;)V

    .line 717
    :cond_0
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertController$RecycleListView;->draw(Landroid/graphics/Canvas;)V

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setNeedClip(Z)V
    .locals 0

    .line 727
    iput-boolean p1, p0, Lcolor/support/v7/app/ColorAlertController$ColorRecyclerListView;->mNeedClip:Z

    return-void
.end method
