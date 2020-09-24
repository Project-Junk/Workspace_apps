.class public Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/customize/ColorTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field private mTileInfo:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 198
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 199
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileAdapter$Holder$vHREdTWoCSkW-9x9QcANGpG-Zw0;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileAdapter$Holder$vHREdTWoCSkW-9x9QcANGpG-Zw0;-><init>(Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;)V
    .locals 2

    .line 216
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileInfo:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v1, p1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 218
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->itemView:Landroid/view/View;

    iget-boolean p1, p1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->visible:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$new$0$ColorTileAdapter$Holder(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileInfo:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileInfo:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->visible:Z

    const/4 v0, 0x0

    .line 207
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->mTileInfo:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    invoke-virtual {p2, v0, v2, p0, v1}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p0, 0x2

    .line 208
    invoke-virtual {p2, v1, p0}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
