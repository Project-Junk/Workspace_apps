.class public Landroidx/recyclerview/widget/ColorRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "ColorRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final COLOR_DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final TAG:Ljava/lang/String; = "ColorRecyclerView"


# instance fields
.field final FLING:I

.field final OVER_FLING:I

.field final OVER_SCROLLING:I

.field final SCROLLING:I

.field private mDispatchScrollCounter:I

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mNestedOffsets:[I

.field private mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field mOverScrollEnable:Z

.field private mOverScroller:Lcom/color/support/widget/SpringOverScroller;

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollType:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    const/4 p3, 0x0

    .line 57
    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->SCROLLING:I

    .line 58
    iput p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->FLING:I

    const/4 p2, 0x2

    .line 59
    iput p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->OVER_SCROLLING:I

    const/4 v0, 0x3

    .line 60
    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->OVER_FLING:I

    .line 82
    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mDispatchScrollCounter:I

    .line 84
    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    const/4 p3, -0x1

    .line 85
    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 96
    new-instance p3, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/ColorRecyclerView;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;

    .line 100
    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    .line 101
    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mNestedOffsets:[I

    .line 116
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 117
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    .line 118
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMinFlingVelocity:I

    .line 119
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    .line 121
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->initOppoProperty(Landroid/content/Context;)V

    .line 122
    new-instance p2, Lcom/color/support/widget/SpringOverScroller;

    invoke-direct {p2, p1}, Lcom/color/support/widget/SpringOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/SpringOverScroller;
    .locals 0

    .line 43
    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    return-object p0
.end method

.method static synthetic access$002(Landroidx/recyclerview/widget/ColorRecyclerView;Lcom/color/support/widget/SpringOverScroller;)Lcom/color/support/widget/SpringOverScroller;
    .locals 0

    .line 43
    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    return-object p1
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/ColorRecyclerView;)I
    .locals 0

    .line 43
    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    return p0
.end method

.method static synthetic access$102(Landroidx/recyclerview/widget/ColorRecyclerView;I)I
    .locals 0

    .line 43
    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    return p1
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/ColorRecyclerView;)I
    .locals 0

    .line 43
    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverflingDistance:I

    return p0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/ColorRecyclerView;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method private cancelScroll()V
    .locals 1

    .line 1096
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->resetScroll()V

    const/4 v0, 0x0

    .line 1097
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 1100
    invoke-static {p0, v0}, Lcom/color/support/b/a/a;->b(Landroid/view/View;I)V

    .line 1101
    invoke-static {p0, v0}, Lcom/color/support/b/a/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method private colorInvalidateParentIfNeeded()V
    .locals 1

    .line 433
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 713
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_1

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 717
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 719
    :cond_1
    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 722
    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_3
    return v1
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 743
    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 745
    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 746
    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 747
    iput-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "."

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initOppoProperty(Landroid/content/Context;)V
    .locals 0

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 414
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverscrollDistance:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverflingDistance:I

    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1107
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1110
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 1111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 1112
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 1083
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 1086
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 609
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->stop()V

    .line 610
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 673
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    .line 237
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 642
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 644
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    .line 650
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "ColorRecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 650
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 13

    .line 459
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 460
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    .line 462
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v12

    .line 463
    iget-object v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {v2}, Lcom/color/support/widget/SpringOverScroller;->getOppoCurrX()I

    move-result v2

    .line 464
    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {v3}, Lcom/color/support/widget/SpringOverScroller;->getOppoCurrY()I

    move-result v3

    if-ne v0, v2, :cond_1

    if-eq v12, v3, :cond_2

    :cond_1
    sub-int v4, v2, v0

    sub-int v5, v3, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 466
    iget v10, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverflingDistance:I

    const/4 v11, 0x0

    move-object v2, p0

    move v3, v4

    move v4, v5

    move v5, v0

    move v6, v12

    move v9, v10

    invoke-virtual/range {v2 .. v11}, Landroidx/recyclerview/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    .line 468
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v12}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    .line 471
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {v0}, Lcom/color/support/widget/SpringOverScroller;->isOppoFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    goto :goto_0

    .line 474
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 477
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .line 1143
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 1149
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollStateChanged(I)V

    .line 1152
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 1155
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1156
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1157
    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 1117
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mDispatchScrollCounter:I

    .line 1120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    .line 1121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v1

    .line 1122
    invoke-virtual {p0, v0, v1, v0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    .line 1125
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrolled(II)V

    .line 1129
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1132
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1134
    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1137
    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method public fling(II)Z
    .locals 7

    .line 542
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ColorRecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 543
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 547
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return v1

    .line 551
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 552
    iget-object v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 554
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 557
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    move p2, v1

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    .line 565
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    .line 568
    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    .line 571
    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedFling(FFZ)Z

    .line 573
    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_b

    if-eqz v2, :cond_a

    or-int/lit8 v0, v0, 0x2

    .line 585
    :cond_a
    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/ColorRecyclerView;->startNestedScroll(II)Z

    .line 587
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 588
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 589
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_b
    return v1
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 631
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 621
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 194
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 756
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 765
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 766
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->cancelScroll()V

    return v2

    .line 770
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    .line 774
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 775
    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 777
    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 778
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 780
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 783
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_b

    if-eq v4, v6, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    const/4 v0, 0x5

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    goto/16 :goto_1

    .line 849
    :cond_4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 814
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 815
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 816
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 860
    :cond_6
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->cancelScroll()V

    goto/16 :goto_1

    .line 820
    :cond_7
    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_8

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 827
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 828
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 829
    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-eq v4, v2, :cond_10

    .line 830
    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchX:I

    sub-int v4, v5, v4

    .line 831
    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchY:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_9

    .line 833
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v0, v4, :cond_9

    .line 834
    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    if-eqz v3, :cond_a

    .line 837
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_a

    .line 838
    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    move v0, v2

    :cond_a
    if-eqz v0, :cond_10

    .line 842
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    goto :goto_1

    .line 854
    :cond_b
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 855
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->stopNestedScroll(I)V

    goto :goto_1

    .line 787
    :cond_c
    iget-boolean v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v4, :cond_d

    .line 788
    iput-boolean v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 790
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    iput v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchY:I

    .line 794
    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-ne p1, v6, :cond_e

    .line 795
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 796
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 797
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->stopNestedScroll(I)V

    .line 801
    :cond_e
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mNestedOffsets:[I

    aput v1, p1, v2

    aput v1, p1, v1

    if-eqz v3, :cond_f

    or-int/lit8 v0, v0, 0x2

    .line 810
    :cond_f
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->startNestedScroll(II)Z

    .line 863
    :cond_10
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-ne p1, v2, :cond_11

    return v2

    :cond_11
    return v1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 420
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_1

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    .line 425
    invoke-static {p0, p1}, Lcom/color/support/b/a/a;->b(Landroid/view/View;I)V

    .line 426
    invoke-static {p0, p2}, Lcom/color/support/b/a/a;->a(Landroid/view/View;I)V

    .line 427
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->colorInvalidateParentIfNeeded()V

    .line 428
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 878
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 881
    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 882
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->cancelScroll()V

    return v2

    .line 886
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    .line 890
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 891
    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 893
    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 894
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 900
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v4, :cond_4

    .line 901
    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 904
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v5, :cond_5

    .line 909
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mNestedOffsets:[I

    aput v1, v7, v2

    aput v1, v7, v1

    .line 911
    :cond_5
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_1f

    const/4 v8, 0x2

    if-eq v5, v2, :cond_16

    if-eq v5, v8, :cond_9

    const/4 v0, 0x3

    if-eq v5, v0, :cond_8

    const/4 v0, 0x5

    if-eq v5, v0, :cond_7

    const/4 v0, 0x6

    if-eq v5, v0, :cond_6

    goto/16 :goto_9

    .line 1014
    :cond_6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 937
    :cond_7
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 938
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 939
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchY:I

    goto/16 :goto_9

    .line 1061
    :cond_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->cancelScroll()V

    goto/16 :goto_9

    .line 944
    :cond_9
    iget v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_a

    .line 946
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 951
    :cond_a
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 952
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 953
    iget v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    .line 954
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    sub-int v13, v7, p1

    .line 956
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v7, v1

    .line 957
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v1, v7, v2

    .line 958
    iget-object v10, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    iget-object v11, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 959
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v7, v7, v1

    sub-int/2addr v5, v7

    .line 960
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v7, v7, v2

    sub-int/2addr v13, v7

    .line 961
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    aget v8, v7, v1

    int-to-float v8, v8

    aget v7, v7, v2

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 963
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    iget-object v9, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    .line 964
    aget v8, v7, v2

    aget v9, v9, v2

    add-int/2addr v8, v9

    aput v8, v7, v2

    .line 967
    :cond_b
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-eq v7, v2, :cond_10

    if-eqz v0, :cond_d

    .line 969
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v7, v8, :cond_d

    if-lez v5, :cond_c

    sub-int/2addr v5, v8

    goto :goto_0

    :cond_c
    add-int/2addr v5, v8

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_d
    move v7, v1

    :goto_1
    if-eqz v3, :cond_f

    .line 977
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_f

    if-lez v13, :cond_e

    sub-int/2addr v13, v9

    goto :goto_2

    :cond_e
    add-int/2addr v13, v9

    :goto_2
    move v7, v2

    :cond_f
    if-eqz v7, :cond_10

    .line 986
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 990
    :cond_10
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-ne v7, v2, :cond_22

    .line 991
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    aget v8, v7, v1

    sub-int/2addr v6, v8

    iput v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    .line 992
    aget v6, v7, v2

    sub-int/2addr p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    .line 995
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz p1, :cond_11

    .line 996
    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    :cond_11
    if-eqz v0, :cond_12

    move p1, v5

    goto :goto_3

    :cond_12
    move p1, v1

    :goto_3
    if-eqz v3, :cond_13

    move v0, v13

    goto :goto_4

    :cond_13
    move v0, v1

    .line 1000
    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1004
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1006
    :cond_14
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz p1, :cond_22

    if-nez v5, :cond_15

    if-eqz v13, :cond_22

    .line 1007
    :cond_15
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    invoke-virtual {p1, p0, v5, v13}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_9

    .line 1026
    :cond_16
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-nez p1, :cond_17

    .line 1027
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move p1, v2

    goto :goto_5

    :cond_17
    move p1, v1

    .line 1032
    :goto_5
    iget-object v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mMaxFlingVelocity:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v5, 0x0

    if-eqz v0, :cond_18

    .line 1033
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 1034
    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_6

    :cond_18
    move v0, v5

    :goto_6
    if-eqz v3, :cond_19

    .line 1035
    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 1036
    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_7

    :cond_19
    move v3, v5

    .line 1040
    :goto_7
    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    if-ne v6, v8, :cond_1b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    iget-boolean v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v6, :cond_1b

    .line 1041
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/color/support/widget/SpringOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1043
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    .line 1044
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-eqz v0, :cond_1e

    .line 1045
    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    .line 1046
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_8

    :cond_1b
    cmpl-float v6, v0, v5

    if-nez v6, :cond_1c

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_1d

    :cond_1c
    float-to-int v0, v0

    float-to-int v3, v3

    .line 1049
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/ColorRecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1050
    :cond_1d
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 1055
    :cond_1e
    :goto_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->resetScroll()V

    goto :goto_a

    .line 915
    :cond_1f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollPointerId:I

    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchX:I

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInitialTouchY:I

    .line 920
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {p1}, Lcom/color/support/widget/SpringOverScroller;->isOppoFinished()Z

    move-result p1

    if-nez p1, :cond_20

    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz p1, :cond_20

    .line 921
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScroller:Lcom/color/support/widget/SpringOverScroller;

    invoke-virtual {p1}, Lcom/color/support/widget/SpringOverScroller;->abortAnimation()V

    :cond_20
    if-eqz v3, :cond_21

    or-int/lit8 v0, v0, 0x2

    .line 932
    :cond_21
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->startNestedScroll(II)Z

    :cond_22
    :goto_9
    move p1, v1

    :goto_a
    if-nez p1, :cond_23

    .line 1073
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-nez p1, :cond_23

    .line 1074
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1077
    :cond_23
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_24
    :goto_b
    return v1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 0

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    const/4 p5, 0x0

    if-gez p3, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    if-lez p3, :cond_2

    if-gez p1, :cond_2

    :cond_1
    move p1, p5

    :cond_2
    if-gez p4, :cond_3

    if-gtz p2, :cond_4

    :cond_3
    if-lez p4, :cond_5

    if-gez p2, :cond_5

    :cond_4
    move p2, p5

    .line 454
    :cond_5
    invoke-virtual {p0, p1, p2, p5, p5}, Landroidx/recyclerview/widget/ColorRecyclerView;->onOverScrolled(IIZZ)V

    return p5
.end method

.method public removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 682
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 684
    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 246
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 868
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 870
    iget-object v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 871
    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 262
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "ColorRecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 271
    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v10, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p3

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->consumePendingUpdateOperations()V

    .line 294
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    if-nez v8, :cond_0

    if-eqz v9, :cond_5

    .line 308
    :cond_0
    iget-boolean v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_1

    if-gtz v9, :cond_5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    if-ltz v9, :cond_5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_3

    if-gtz v8, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_4

    if-ltz v8, :cond_5

    .line 311
    :cond_4
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 312
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v12

    .line 313
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    invoke-virtual {v10, v8, v9, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->scrollStep(II[I)V

    .line 314
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v13

    .line 315
    iget-object v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v1, v1, v12

    sub-int v2, v8, v0

    sub-int v3, v9, v1

    move v7, v0

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    goto :goto_0

    :cond_5
    move v7, v13

    move v14, v7

    move v15, v14

    move/from16 v16, v15

    .line 325
    :goto_0
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->invalidate()V

    .line 329
    :cond_6
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v13

    .line 330
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aput v13, v0, v12

    .line 331
    iget-object v5, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    const/4 v6, 0x0

    iget-object v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    move-object/from16 v0, p0

    move v1, v7

    move v2, v14

    move v3, v15

    move-object/from16 v17, v4

    move/from16 v4, v16

    move/from16 v18, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 333
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v13

    sub-int/2addr v15, v0

    .line 334
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mReusableIntPair:[I

    aget v0, v0, v12

    sub-int v0, v16, v0

    .line 337
    iget v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    iget-object v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    aget v3, v2, v13

    sub-int/2addr v1, v3

    iput v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchX:I

    .line 338
    iget v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    aget v3, v2, v12

    sub-int/2addr v1, v3

    iput v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mLastTouchY:I

    if-eqz v11, :cond_7

    .line 340
    aget v1, v2, v13

    int-to-float v1, v1

    aget v2, v2, v12

    int-to-float v2, v2

    invoke-virtual {v11, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 342
    :cond_7
    iget-object v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mNestedOffsets:[I

    aget v2, v1, v13

    iget-object v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollOffset:[I

    aget v4, v3, v13

    add-int/2addr v2, v4

    aput v2, v1, v13

    .line 343
    aget v2, v1, v12

    aget v3, v3, v12

    add-int/2addr v2, v3

    aput v2, v1, v12

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    if-eqz v11, :cond_16

    .line 356
    iget-boolean v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    if-eqz v1, :cond_16

    if-nez v0, :cond_8

    if-eqz v15, :cond_9

    .line 358
    :cond_8
    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    .line 361
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-ge v1, v3, :cond_a

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-ge v1, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v1, v3, :cond_a

    .line 362
    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    :cond_a
    if-nez v0, :cond_b

    if-nez v14, :cond_b

    .line 365
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v1, v3, :cond_b

    .line 366
    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    .line 369
    :cond_b
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-nez v1, :cond_c

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-ge v1, v3, :cond_c

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-ge v1, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v1, v3, :cond_c

    .line 370
    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    :cond_c
    if-nez v15, :cond_d

    move/from16 v11, v18

    if-nez v11, :cond_e

    .line 373
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    if-le v1, v3, :cond_e

    .line 374
    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollType:I

    goto :goto_1

    :cond_d
    move/from16 v11, v18

    .line 380
    :cond_e
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v3

    .line 381
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v4

    .line 383
    iget v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverscrollDistance:I

    invoke-static {v0, v4, v1}, Lcom/color/support/a/a;->a(III)I

    move-result v0

    .line 384
    iget v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverscrollDistance:I

    invoke-static {v15, v3, v1}, Lcom/color/support/a/a;->a(III)I

    move-result v1

    if-gez v4, :cond_f

    if-gtz v9, :cond_10

    :cond_f
    if-lez v4, :cond_11

    if-gez v9, :cond_11

    .line 387
    :cond_10
    iget v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverscrollDistance:I

    invoke-static {v9, v3, v0}, Lcom/color/support/a/a;->a(III)I

    move-result v0

    :cond_11
    move v2, v0

    if-gez v3, :cond_12

    if-gtz v8, :cond_13

    :cond_12
    if-lez v3, :cond_14

    if-gez v8, :cond_14

    .line 391
    :cond_13
    iget v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverscrollDistance:I

    invoke-static {v8, v3, v0}, Lcom/color/support/a/a;->a(III)I

    move-result v0

    move v1, v0

    :cond_14
    if-nez v2, :cond_15

    if-eqz v1, :cond_17

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 395
    iget v8, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v7, v8

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_2

    :cond_16
    move/from16 v11, v18

    :cond_17
    :goto_2
    if-nez v11, :cond_18

    if-eqz v14, :cond_19

    .line 402
    :cond_18
    invoke-virtual {v10, v11, v14}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchOnScrolled(II)V

    .line 404
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->invalidate()V

    :cond_1a
    if-nez v11, :cond_1c

    if-eqz v14, :cond_1b

    goto :goto_3

    :cond_1b
    return v13

    :cond_1c
    :goto_3
    return v12
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 174
    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOnFlingListener:Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setOverScrollEnable(Z)V
    .locals 0

    .line 486
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mOverScrollEnable:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 198
    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 205
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 207
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->stopScrollersInternal()V

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ColorRecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    return-void

    .line 156
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mTouchSlop:I

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p3    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 510
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "ColorRecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 511
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 515
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_1

    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    .line 521
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 525
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/recyclerview/widget/ColorRecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    :cond_5
    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    .line 602
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->stopScrollersInternal()V

    return-void
.end method
