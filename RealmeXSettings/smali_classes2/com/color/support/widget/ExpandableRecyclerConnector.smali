.class public Lcom/color/support/widget/ExpandableRecyclerConnector;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExpandableRecyclerConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$EndAnimatorListener;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;,
        Lcom/color/support/widget/ExpandableRecyclerConnector$AnimationViewHolder;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field private static final ANIMATION_TYPE:I = -0x80000000

.field private static final EXPAND_THRESHOLD:I = 0x2

.field private static final STATE_COLLAPSING:I = 0x2

.field private static final STATE_EXPANDING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExpandableRecyclerConnector"


# instance fields
.field private animatorSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private cacheChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

.field private groupInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I

.field private showChildView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private typeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorExpandableRecyclerAdapter;Lcom/color/support/widget/ColorExpandableRecyclerView;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->groupInfo:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    const v0, 0x7fffffff

    .line 91
    iput v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    .line 96
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ExpandableRecyclerConnector$MyDataSetObserver;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector;)V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 824
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 103
    iput-object p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    .line 104
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->setExpandableListAdapter(Lcom/color/support/widget/ColorExpandableRecyclerAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/color/support/widget/ExpandableRecyclerConnector;)Lcom/color/support/widget/ColorExpandableRecyclerView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->stopAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/color/support/widget/ExpandableRecyclerConnector;ZZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method private addCache(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 521
    invoke-direct {p0, p2, p3}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result p2

    .line 522
    iget-object p3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_0

    .line 524
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 526
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private collapseAnimationStart(Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;III)V
    .locals 10

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "collapseAnimationStart:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,groupPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpandableRecyclerConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {p0, p3}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v7

    .line 631
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    const-wide/16 v2, 0x190

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;-><init>(Lcom/color/support/widget/ColorExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V

    .line 634
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->removeAllListeners()V

    .line 637
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->cancel()V

    :goto_0
    const/4 v3, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    iget v1, v7, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget p4, v7, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    :goto_2
    move v8, p4

    const/4 v9, 0x0

    move-object v2, v0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v2 .. v9}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;II)V

    .line 641
    new-instance p2, Lcom/color/support/widget/ExpandableRecyclerConnector$4;

    invoke-direct {p2, p0, p1, p3}, Lcom/color/support/widget/ExpandableRecyclerConnector$4;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector;Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;I)V

    invoke-virtual {v0, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 650
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->start()V

    const/4 p2, 0x2

    .line 651
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private expandAnimationStart(Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;III)V
    .locals 11

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expandAnimationStart:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,groupPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpandableRecyclerConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-direct {p0, p3}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v7

    .line 603
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    const-wide/16 v2, 0x190

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8, v8, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;-><init>(Lcom/color/support/widget/ColorExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V

    .line 606
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->animatorSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->removeAllListeners()V

    .line 609
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->cancel()V

    :goto_0
    const/4 v3, 0x1

    .line 611
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    move v4, v10

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget v1, v7, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    iget v1, v7, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    move v8, v1

    :goto_2
    move-object v2, v0

    move v5, p2

    move-object v6, p1

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->setParam(ZZILandroid/view/View;Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;II)V

    .line 613
    new-instance p4, Lcom/color/support/widget/ExpandableRecyclerConnector$3;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$3;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector;Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;II)V

    invoke-virtual {v0, p4}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 623
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$ExpandAnimator;->start()V

    .line 624
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private getCacheViewHolder(II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result p1

    .line 534
    iget-object p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 535
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 536
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getChildAllHeight(ZILcom/color/support/widget/ExpandableRecyclerConnector$DummyView;)I
    .locals 12

    .line 544
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 547
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 550
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    .line 551
    invoke-virtual {v2}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 552
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    if-eqz p1, :cond_1

    .line 554
    iget-object v5, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    .line 555
    iget-object v5, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 556
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 558
    :cond_1
    iget-object v5, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getBottom()I

    move-result v5

    .line 560
    :goto_1
    iget-object v6, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v6, p2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getChildrenCount(I)I

    move-result v6

    move v7, v1

    move v8, v7

    :goto_2
    if-ge v7, v6, :cond_7

    .line 562
    invoke-direct {p0, p2, v7}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getCacheViewHolder(II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    if-nez v9, :cond_2

    .line 564
    iget-object v9, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v10, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    .line 565
    invoke-direct {p0, p2, v7}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result v11

    invoke-interface {v9, v10, v11}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onCreateChildView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v9

    .line 567
    :cond_2
    invoke-direct {p0, v9, p2, v7}, Lcom/color/support/widget/ExpandableRecyclerConnector;->addCache(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 568
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 569
    iget-object v11, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v11, p2, v7, v1, v9}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onBindChildView(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 571
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_3

    .line 573
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 574
    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    :cond_3
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_4

    .line 581
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v4

    .line 586
    :goto_3
    iget-object v11, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v11}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutDirection()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutDirection(I)V

    .line 587
    invoke-virtual {v10, v2, v9}, Landroid/view/View;->measure(II)V

    .line 588
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 589
    invoke-virtual {p3, v10}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->addFakeView(Landroid/view/View;)V

    if-nez p1, :cond_5

    add-int v9, v8, v0

    if-gt v9, v5, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    sub-int v9, v5, v0

    mul-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    return v8
.end method

.method private getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector$1;)V

    .line 125
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getRealChildType(II)I
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    .line 829
    invoke-interface {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getChildType(II)I

    move-result p1

    iget-object p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {p2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupTypeCount()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 9

    .line 861
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 862
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 866
    iput v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    const/4 v3, -0x1

    if-eqz p2, :cond_4

    add-int/lit8 p2, v1, -0x1

    move v4, v1

    move v1, v2

    :goto_0
    if-ltz p2, :cond_2

    .line 873
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 874
    iget-wide v6, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gId:J

    iget v8, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v6, v7, v8}, Lcom/color/support/widget/ExpandableRecyclerConnector;->findGroupPosition(JI)I

    move-result v6

    .line 875
    iget v7, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-eq v6, v7, :cond_1

    if-ne v6, v3, :cond_0

    .line 878
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    .line 882
    :cond_0
    iput v6, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 890
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    move v1, v4

    :cond_4
    move p2, v2

    move v4, p2

    :goto_1
    if-ge v2, v1, :cond_7

    .line 898
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 904
    iget v6, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v6, v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    .line 910
    :cond_5
    iget v6, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    iget v7, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    sub-int/2addr v6, v7

    goto :goto_3

    .line 905
    :cond_6
    :goto_2
    iget v6, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v6}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getChildCount(I)I

    move-result v6

    .line 914
    :goto_3
    iget v7, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    .line 920
    iget v7, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    sub-int/2addr v7, v4

    add-int/2addr p2, v7

    .line 921
    iget v4, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    .line 924
    iput p2, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    add-int/2addr p2, v6

    .line 926
    iput p2, v5, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private resetCache()V
    .locals 5

    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 177
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->cacheChildView:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->showChildView:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private startExpandAnimation(I)Z
    .locals 1

    .line 131
    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object p1

    .line 132
    iget-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 136
    iput-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    return v0
.end method

.method private stopAnimation(I)V
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    const/4 v0, -0x1

    .line 170
    iput v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->dummyHeight:I

    .line 171
    invoke-direct {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->resetCache()V

    return-void
.end method


# virtual methods
.method collapseGroup(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 938
    invoke-static {v1, p1, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object p1

    .line 939
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getFlattenedPos(Lcom/color/support/widget/ExpandableRecyclerPosition;)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 940
    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerPosition;->recycle()V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 944
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->collapseGroup(Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;)Z

    move-result p1

    return p1
.end method

.method collapseGroup(Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;)Z
    .locals 3

    .line 958
    iget-object v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 961
    invoke-direct {p0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 962
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 963
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object p1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onGroupCollapsed(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public collapseGroupAnimator()V
    .locals 2

    const/4 v0, 0x1

    .line 670
    invoke-direct {p0, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 671
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    return-void
.end method

.method expandGroup(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 969
    invoke-static {v1, p1, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object p1

    .line 970
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getFlattenedPos(Lcom/color/support/widget/ExpandableRecyclerPosition;)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 971
    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerPosition;->recycle()V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 975
    :cond_0
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandGroup(Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;)Z

    move-result p1

    return p1
.end method

.method expandGroup(Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;)Z
    .locals 6

    .line 985
    iget-object v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    if-ltz v0, :cond_5

    .line 990
    iget v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 994
    :cond_0
    iget-object v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz v0, :cond_1

    return v1

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 1004
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1006
    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->collapseGroup(I)Z

    .line 1009
    iget v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    if-le v0, v2, :cond_2

    .line 1010
    iget v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    .line 1015
    :cond_2
    iget-object v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v4, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 1016
    invoke-interface {v2, v4}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v4

    const/4 v2, -0x1

    .line 1015
    invoke-static {v2, v2, v0, v4, v5}, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->obtain(IIIJ)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    move-result-object v0

    .line 1017
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    iget-object v4, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/color/support/widget/ExpandableRecyclerPosition;->flatListPos:I

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1018
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v5}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_3

    .line 1019
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1020
    invoke-direct {p0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1021
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {p1, v2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onGroupExpanded(I)V

    .line 1022
    iget p1, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemChanged(I)V

    return v1

    .line 1026
    :cond_3
    iget v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-direct {p0, v2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->startExpandAnimation(I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 1029
    :cond_4
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1030
    invoke-direct {p0, v1, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 1031
    invoke-virtual {p0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getItemCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemRangeChanged(II)V

    .line 1032
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {p1, v0}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onGroupExpanded(I)V

    return v3

    .line 987
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Need group"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method findGroupPosition(JI)I
    .locals 12

    .line 1108
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v0}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 1120
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 1121
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    .line 1144
    iget-object v6, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    if-nez v6, :cond_2

    return v1

    :cond_2
    move v7, p3

    move v8, v7

    move v9, v2

    .line 1149
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-gtz v10, :cond_b

    .line 1150
    invoke-interface {v6, p3}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_4

    return p3

    :cond_4
    if-ne v7, v0, :cond_5

    move v10, v3

    goto :goto_1

    :cond_5
    move v10, v2

    :goto_1
    if-nez v8, :cond_6

    move v11, v3

    goto :goto_2

    :cond_6
    move v11, v2

    :goto_2
    if-eqz v10, :cond_7

    if-nez v11, :cond_b

    :cond_7
    if-nez v11, :cond_a

    if-eqz v9, :cond_8

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    if-nez v9, :cond_3

    if-nez v11, :cond_3

    :cond_9
    add-int/lit8 v8, v8, -0x1

    move v9, v3

    move p3, v8

    goto :goto_0

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v9, v2

    move p3, v7

    goto :goto_0

    :cond_b
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 455
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method getChildCount(I)I
    .locals 1

    .line 513
    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 514
    iget-boolean v0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v0, p1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getChildrenCount(I)I

    move-result p1

    return p1
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getFlattenedPos(Lcom/color/support/widget/ExpandableRecyclerPosition;)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 328
    iget-object v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_0

    .line 342
    iget v5, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v6, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    iget v7, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v8, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v3, 0x0

    move v10, v3

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gt v10, v4, :cond_6

    sub-int v3, v4, v10

    .line 350
    div-int/2addr v3, v6

    add-int/2addr v3, v10

    .line 351
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 353
    iget v8, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v9, v15, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-le v8, v9, :cond_2

    add-int/lit8 v10, v3, 0x1

    goto :goto_0

    .line 358
    :cond_2
    iget v8, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v9, v15, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-ge v8, v9, :cond_3

    add-int/lit8 v4, v3, -0x1

    goto :goto_0

    .line 363
    :cond_3
    iget v8, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v9, v15, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-ne v8, v9, :cond_1

    .line 368
    iget v2, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    if-ne v2, v6, :cond_4

    .line 370
    iget v11, v15, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v12, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    iget v13, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v14, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    .line 372
    :cond_4
    iget v2, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    if-ne v2, v7, :cond_5

    .line 374
    iget v2, v15, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v4, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    add-int/2addr v2, v4

    add-int/lit8 v11, v2, 0x1

    iget v12, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    iget v13, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v14, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_5
    return-object v5

    .line 386
    :cond_6
    iget v8, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    if-eq v8, v6, :cond_7

    return-object v5

    :cond_7
    if-le v10, v3, :cond_8

    add-int/lit8 v3, v10, -0x1

    .line 404
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 405
    iget v3, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    iget v4, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    sub-int/2addr v4, v2

    add-int v5, v3, v4

    .line 407
    iget v6, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    iget v7, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v8, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_8
    if-ge v4, v3, :cond_9

    add-int/2addr v7, v4

    .line 415
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 416
    iget v3, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    iget v4, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    sub-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 417
    iget v3, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    iget v4, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v5, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    return-object v1

    :cond_9
    return-object v5
.end method

.method public getItemCount()I
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v0}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 5

    .line 434
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    .line 435
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v0

    .line 438
    iget-object v2, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 439
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v2, v0, v1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    goto :goto_0

    .line 440
    :cond_0
    iget-object v2, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 441
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v3, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget-object v4, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    .line 442
    invoke-interface {v2, v3, v4}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getChildId(II)J

    move-result-wide v2

    .line 443
    iget-object v4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    .line 449
    :goto_0
    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    return-wide v0

    .line 446
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Flat list position is of unknown type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 835
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    .line 836
    iget-object v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    .line 838
    iget v1, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 839
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget v2, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-interface {v1, v2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupType(I)I

    move-result v1

    goto :goto_0

    .line 840
    :cond_0
    iget v1, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    invoke-direct {p0, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v1, :cond_1

    const/high16 v1, -0x80000000

    goto :goto_0

    .line 843
    :cond_1
    iget v1, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    iget v2, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-direct {p0, v1, v2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getRealChildType(II)I

    move-result v1

    .line 846
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 847
    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    return v1
.end method

.method getUnflattenedPos(I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;
    .locals 10

    .line 199
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-nez v1, :cond_0

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    move v5, p1

    .line 213
    invoke-static/range {v3 .. v8}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-gt v1, v2, :cond_5

    sub-int v3, v2, v1

    .line 225
    div-int/lit8 v3, v3, 0x2

    add-int v9, v3, v1

    .line 226
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 228
    iget v3, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-le p1, v3, :cond_2

    add-int/lit8 v1, v9, 0x1

    :cond_1
    :goto_1
    move v3, v9

    goto :goto_0

    .line 234
    :cond_2
    iget v3, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    if-ge p1, v3, :cond_3

    add-int/lit8 v2, v9, -0x1

    goto :goto_1

    .line 239
    :cond_3
    iget v3, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    if-ne p1, v3, :cond_4

    const/4 v5, 0x2

    .line 243
    iget v6, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    const/4 v7, -0x1

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 245
    :cond_4
    iget v3, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-gt p1, v3, :cond_1

    .line 255
    iget v0, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    add-int/lit8 v0, v0, 0x1

    sub-int v7, p1, v0

    const/4 v5, 0x1

    .line 256
    iget v6, v8, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    move v4, p1

    invoke-static/range {v4 .. v9}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    :cond_5
    if-le v1, v3, :cond_6

    add-int/lit8 v2, v1, -0x1

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 293
    iget v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v2, p1, v2

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    add-int/2addr v2, v0

    :goto_2
    move v8, v1

    move v5, v2

    goto :goto_3

    :cond_6
    if-ge v2, v3, :cond_7

    add-int/lit8 v1, v2, 0x1

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 309
    iget v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    sub-int/2addr v0, p1

    sub-int/2addr v2, v0

    goto :goto_2

    :goto_3
    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, p1

    .line 315
    invoke-static/range {v3 .. v8}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->obtain(IIIILcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    return-object p1

    .line 312
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown state"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isAllAnimatorEnd()Z
    .locals 3

    .line 1058
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 1059
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_1

    .line 1061
    invoke-direct {p0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupExpanded(I)Z
    .locals 4

    .line 1044
    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1047
    iget-object v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    .line 1049
    iget v3, v3, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v3, :cond_1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 466
    invoke-virtual {p0, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getUnflattenedPos(I)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    .line 467
    iget-object v1, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/color/support/widget/ExpandableRecyclerPosition;->groupPos:I

    .line 468
    invoke-direct {p0, v1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v2

    .line 469
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v3, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 471
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    invoke-interface {v2, v1, v3, p1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onBindGroupView(IZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 472
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/color/support/widget/ExpandableRecyclerConnector$1;

    invoke-direct {v1, p0, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$1;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 478
    :cond_0
    iget-boolean v3, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    .line 479
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    .line 480
    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->clearViews()V

    .line 482
    iget-boolean v3, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    invoke-direct {p0, v3, v1, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getChildAllHeight(ZILcom/color/support/widget/ExpandableRecyclerConnector$DummyView;)I

    move-result v3

    .line 485
    invoke-virtual {p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 487
    :goto_0
    iget-boolean v7, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-eqz v7, :cond_2

    if-eq v5, v6, :cond_2

    .line 488
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandAnimationStart(Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_1

    .line 489
    :cond_2
    iget-boolean v2, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-nez v2, :cond_3

    if-eq v5, v4, :cond_3

    .line 490
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/color/support/widget/ExpandableRecyclerConnector;->collapseAnimationStart(Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_1

    .line 492
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onBindViewHolder: state is no match:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExpandableRecyclerConnector"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    :cond_4
    iget-object v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerPosition;->type:I

    if-ne v2, v6, :cond_7

    .line 495
    iget-object v2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v2, p2, :cond_5

    move v5, v6

    .line 496
    :cond_5
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v3, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-interface {v2, v1, v3, v5, p1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onBindChildView(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 498
    iget-object v2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v3, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/color/support/widget/ExpandableRecyclerPosition;->childPos:I

    invoke-interface {v2, v1, v3}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->isChildSelectable(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 499
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/color/support/widget/ExpandableRecyclerConnector$2;

    invoke-direct {v1, p0, p2}, Lcom/color/support/widget/ExpandableRecyclerConnector$2;-><init>(Lcom/color/support/widget/ExpandableRecyclerConnector;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->recycle()V

    return-void

    .line 507
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Flat list position is of unknown type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 658
    new-instance p2, Lcom/color/support/widget/ExpandableRecyclerConnector$AnimationViewHolder;

    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$DummyView;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$AnimationViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 660
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onCreateGroupView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->typeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 662
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onCreateChildView(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    :goto_0
    return-object p2

    .line 664
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Flat list position is of unknown type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpandableListAdapter(Lcom/color/support/widget/ColorExpandableRecyclerAdapter;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    .line 118
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mDataSetObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-interface {p1, v0}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1087
    :cond_0
    invoke-interface {v0}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    .line 1088
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1089
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v3, v3, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    if-lt v3, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1095
    :cond_2
    iput-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1096
    invoke-direct {p0, v2, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0

    .line 1072
    iput p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mMaxExpGroupCount:I

    return-void
.end method

.method public startCollapseAnimation(I)Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 145
    invoke-static {v1, p1, v0, v0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->obtain(IIII)Lcom/color/support/widget/ExpandableRecyclerPosition;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getFlattenedPos(Lcom/color/support/widget/ExpandableRecyclerPosition;)Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, Lcom/color/support/widget/ExpandableRecyclerPosition;->recycle()V

    .line 148
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ColorLinearLayoutManager;

    iget-object v2, v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->position:Lcom/color/support/widget/ExpandableRecyclerPosition;

    iget v2, v2, Lcom/color/support/widget/ExpandableRecyclerPosition;->flatListPos:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ColorLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->expandableRecyclerView:Lcom/color/support/widget/ColorExpandableRecyclerView;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorExpandableRecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_0

    .line 150
    iget-object p1, v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    .line 151
    iget-object v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v2, v2}, Lcom/color/support/widget/ExpandableRecyclerConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->notifyItemChanged(I)V

    .line 154
    iget-object p1, p0, Lcom/color/support/widget/ExpandableRecyclerConnector;->mExpandableListAdapter:Lcom/color/support/widget/ColorExpandableRecyclerAdapter;

    iget-object v0, v1, Lcom/color/support/widget/ExpandableRecyclerConnector$PositionMetadata;->groupMetadata:Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    iget v0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-interface {p1, v0}, Lcom/color/support/widget/ColorExpandableRecyclerAdapter;->onGroupCollapsed(I)V

    return v2

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector;->getGroupInfo(I)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;

    move-result-object p1

    .line 159
    iget-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->animating:Z

    .line 163
    iput-boolean v2, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupInfo;->expanding:Z

    return v0
.end method
