.class public Lcom/coloros/systemui/qs/customize/ColorTileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANGE_DURATION:J = 0x12cL

.field public static final MOVE_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "ColorTileAdapter"


# instance fields
.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mHasChanged:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mMinCount:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mHasChanged:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mMinCount:I

    const-string v0, ""

    .line 169
    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->t:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorTileItemDecoration;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-void
.end method


# virtual methods
.method public addTile(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    .line 92
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 96
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p1, p2

    .line 98
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object p0
.end method

.method public getTile(I)Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;
    .locals 1

    if-ltz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    return-object p0
.end method

.method public isMinCount()Z
    .locals 3

    .line 59
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mMinCount:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mMinCount:I

    if-gt v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->onBindViewHolder(Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;I)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 185
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;->bind(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 175
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d01b8

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 178
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter$Holder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mHasChanged:Z

    if-eqz v0, :cond_3

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 70
    iget-object v2, v2, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 73
    iget-object v2, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_2
    const-string p0, "ColorTileAdapter"

    const-string p1, "Changed before Tiles is ready"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public removeTile(I)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 159
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    iget-object v2, v2, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 153
    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mCurrentSpecs:Ljava/util/List;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mCurrentSpecs:Ljava/util/List;

    return-void
.end method

.method public setTileVisible(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getTile(I)Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getTile(I)Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    move-result-object v0

    iput-boolean p2, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->visible:Z

    .line 124
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setTilesChanged(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mHasChanged:Z

    return-void
.end method

.method public swapTile(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mTiles:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public updateMinCount(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->mMinCount:I

    return-void
.end method
