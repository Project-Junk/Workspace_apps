.class public Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;
.super Ljava/util/Observable;
.source "ColorPagerDragHelper.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;,
        Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;
    }
.end annotation


# static fields
.field private static final SHOW_PAGE_DURATION:I = 0x320

.field private static final TURN_PAGE_THRESHOLD:I = 0x64


# instance fields
.field private adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

.field private className:Ljava/lang/String;

.field private insertPosition:I

.field private layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

.field private mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mIsReadyToShowPage:Z

.field private mShowPageRunnable:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;

.field private mTransparentShadowBuilder:Landroid/view/View$DragShadowBuilder;

.field private originView:Landroidx/recyclerview/widget/RecyclerView;

.field private startDragPosition:I

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;)V
    .locals 2
    .param p1    # Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->startDragPosition:I

    .line 56
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mIsReadyToShowPage:Z

    .line 61
    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mShowPageRunnable:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->className:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$1;-><init>(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mTransparentShadowBuilder:Landroid/view/View$DragShadowBuilder;

    .line 73
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->showPageInternal(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mIsReadyToShowPage:Z

    return p1
.end method

.method private cancelShowPage()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mIsReadyToShowPage:Z

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mShowPageRunnable:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkCover(Landroid/view/View;FF)Z
    .locals 2

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x5

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, p0

    int-to-float p0, v1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    add-int/2addr p0, v0

    int-to-float p0, p0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getTouchUnderViewPosition(Landroidx/recyclerview/widget/RecyclerView;FFZ)I
    .locals 1

    .line 220
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 221
    invoke-direct {p0, v0, p2, p3}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->checkCover(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 222
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getTouchUnderViewPositionByAdapter()I
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getTiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getTiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 232
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v2}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getTiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 233
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->getTiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    if-eqz v3, :cond_1

    .line 234
    iget-boolean v3, v3, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->visible:Z

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private readyShowPage(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mIsReadyToShowPage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mIsReadyToShowPage:Z

    .line 253
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mShowPageRunnable:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;

    iput-object p1, v0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    iput-boolean p2, v0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$ShowPageRunnable;->nextPage:Z

    .line 255
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x320

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPageInternal(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show next page:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    if-eqz p0, :cond_4

    .line 269
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 270
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isShouldReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothPrePage()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothNextPage()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothNextPage()V

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->smoothPrePage()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logInternal(Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    .line 92
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 95
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->cancelShowPage()V

    .line 171
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v5

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "drag exit:{0}|{1} insertPos:{2}"

    invoke-static {p2, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v5

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "drag enter:{0}|{1} insertPos:{2}"

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 113
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    if-ne p1, v3, :cond_e

    .line 114
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iput v4, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getCurrentPageLastPos()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    .line 118
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result p1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getTotalPageCount()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p1, v0, :cond_1

    .line 119
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    .line 122
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    .line 123
    iput-boolean v4, p1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->visible:Z

    .line 124
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    iget v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-virtual {v0, p1, v3}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->addTile(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;I)V

    .line 125
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v5

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "drag enter add tile:{0}|{1} insertPos:{2}"

    invoke-static {p2, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->setChanged()V

    .line 127
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->notifyObservers()V

    goto/16 :goto_1

    .line 174
    :pswitch_2
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v5

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "drag end:{0}|{1} insertPos:{2}"

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->isMinCount()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

    invoke-interface {p1, v4}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;->onMinCountDrag(Z)V

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

    invoke-interface {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;->onDragEnd()V

    .line 181
    :cond_3
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    if-eq p1, v3, :cond_4

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v0, p1, v5}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTileVisible(IZ)V

    .line 184
    :cond_4
    iput v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    .line 185
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->cancelShowPage()V

    .line 186
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v4

    goto/16 :goto_2

    .line 158
    :pswitch_3
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v5

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "drag drop:{0}|{1} insertPos:{2}"

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 159
    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    if-eq p2, v3, :cond_5

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v0, p2, v5}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTileVisible(IZ)V

    .line 162
    :cond_5
    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->startDragPosition:I

    if-eq p2, v0, :cond_6

    move v4, v5

    :cond_6
    if-nez v4, :cond_7

    .line 164
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mTransparentShadowBuilder:Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1, p2}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 166
    :cond_7
    iput v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    .line 167
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->cancelShowPage()V

    goto/16 :goto_2

    .line 131
    :pswitch_4
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v5

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "drag location:{0}|{1} insertPos:"

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->logInternal(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 133
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isShouldReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isCurrentPageFull()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 134
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, v4}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->readyShowPage(Landroidx/recyclerview/widget/RecyclerView;Z)V

    goto/16 :goto_1

    .line 136
    :cond_9
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 137
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 138
    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isShouldReverseLayout()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->isCurrentPageFull()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 139
    :cond_a
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1, v5}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->readyShowPage(Landroidx/recyclerview/widget/RecyclerView;Z)V

    goto/16 :goto_1

    .line 142
    :cond_b
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->cancelShowPage()V

    .line 143
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->originView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v6

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->getTouchUnderViewPosition(Landroidx/recyclerview/widget/RecyclerView;FFZ)I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 146
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    if-eq v0, v3, :cond_c

    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    .line 147
    invoke-virtual {v3, v0}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByPos(I)I

    move-result v0

    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {v3}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getPageIndexByOffset()I

    move-result v3

    if-eq v0, v3, :cond_c

    .line 148
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->layoutManager:Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorPagerGridLayoutManager;->getCurrentPageLastPos()I

    move-result p1

    :cond_c
    if-ltz p1, :cond_e

    .line 151
    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    if-eq v0, p1, :cond_e

    const/4 v0, 0x4

    .line 152
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v5

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "drag location swap tile:{0}|{1} insertPos:{2} fingerUnderPos:{3}"

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    iget v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-virtual {p2, v0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->swapTile(II)V

    .line 154
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    goto :goto_1

    .line 99
    :pswitch_5
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->getTouchUnderViewPositionByAdapter()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    .line 100
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->startDragPosition:I

    if-eq p1, v3, :cond_d

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->isMinCount()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

    if-eqz p1, :cond_d

    .line 103
    invoke-interface {p1, v5}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;->onMinCountDrag(Z)V

    .line 106
    :cond_d
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v5

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "drag start:{0}|{1} insertPos:{2}"

    invoke-static {p2, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 107
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    if-ne p1, v3, :cond_e

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->mCallback:Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;->canReceiveItem()Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_2

    :cond_e
    :goto_1
    move v4, v5

    :goto_2
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "receive observable notify , now remove tile:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->log(Ljava/lang/String;)V

    .line 195
    iget p1, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->adapter:Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->removeTile(I)V

    .line 198
    :cond_0
    iput p2, p0, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->insertPosition:I

    .line 199
    invoke-direct {p0}, Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper;->cancelShowPage()V

    return-void
.end method
