.class public Lcom/android/systemui/qs/customize/TileAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Holder"
.end annotation


# instance fields
.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 556
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 557
    instance-of p1, p2, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 558
    check-cast p2, Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 559
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object p0
.end method


# virtual methods
.method public clearDrag()V
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const v2, 0x7f0a0598

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 572
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 574
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object p0

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public startDrag()V
    .locals 4

    .line 578
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 579
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f99999a    # 1.2f

    .line 580
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 581
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 582
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const v3, 0x7f0a0598

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 584
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 585
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 586
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 587
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public stopDrag()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const v2, 0x7f0a0598

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 604
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 606
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getAppLabel()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 607
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f19999a    # 0.6f

    .line 608
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
