.class public Landroidx/recyclerview/widget/ColorRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ColorRecyclerView$a;
    }
.end annotation


# instance fields
.field private final R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$m;",
            ">;"
        }
    .end annotation
.end field

.field private S:Landroidx/recyclerview/widget/RecyclerView$m;

.field private T:Z

.field private U:I

.field private V:Lcom/color/support/widget/g;

.field private W:I

.field a:Z

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:I

.field private ae:Landroid/view/VelocityTracker;

.field private af:I

.field private ag:I

.field private ah:I

.field private ai:I

.field private aj:I

.field private ak:Landroidx/recyclerview/widget/RecyclerView$l;

.field private final al:I

.field private final am:I

.field private an:Landroidx/recyclerview/widget/RecyclerView$n;

.field private ao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$n;",
            ">;"
        }
    .end annotation
.end field

.field private final ap:[I

.field private final aq:[I

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Landroidx/recyclerview/widget/ColorRecyclerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    const/4 p3, 0x0

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->b:I

    iput p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->c:I

    const/4 p2, 0x2

    iput p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->d:I

    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->e:I

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ab:I

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    const/4 p3, -0x1

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    new-instance p3, Landroidx/recyclerview/widget/ColorRecyclerView$a;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ColorRecyclerView$a;-><init>(Landroidx/recyclerview/widget/ColorRecyclerView;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->f:Landroidx/recyclerview/widget/ColorRecyclerView$a;

    new-array p3, p2, [I

    iput-object p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->al:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(Landroid/content/Context;)V

    new-instance p2, Lcom/color/support/widget/g;

    invoke-direct {p2, p1}, Lcom/color/support/widget/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    const-string p1, "ColorRecyclerView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ColorRecyclerView: overscroll_mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mOverScrollEnable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->f:Landroidx/recyclerview/widget/ColorRecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ColorRecyclerView$a;->b()V

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->I()V

    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->h(I)V

    return-void
.end method

.method private C()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->B()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    invoke-static {p0, v0}, Lcom/color/support/b/a/a;->b(Landroid/view/View;I)V

    invoke-static {p0, v0}, Lcom/color/support/b/a/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Landroidx/recyclerview/widget/ColorRecyclerView;I)I
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    return p1
.end method

.method static synthetic a(Landroidx/recyclerview/widget/ColorRecyclerView;)Lcom/color/support/widget/g;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    return-object p0
.end method

.method static synthetic a(Landroidx/recyclerview/widget/ColorRecyclerView;Lcom/color/support/widget/g;)Lcom/color/support/widget/g;
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aa:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-interface {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    :cond_3
    return v1
.end method

.method static synthetic b(Landroidx/recyclerview/widget/ColorRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aa:I

    return p0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-interface {v4, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    iput-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->af:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ag:I

    :cond_1
    return-void
.end method

.method static synthetic c(Landroidx/recyclerview/widget/ColorRecyclerView;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Landroidx/recyclerview/widget/ColorRecyclerView;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    return p0
.end method

.method private getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getPaddingTop()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private z()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->A()V

    return-void
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->l(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->g(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->an:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->an:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v1, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_0

    const-string p0, "ColorRecyclerView"

    const-string p1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->B:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move p1, v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-nez v0, :cond_3

    move p2, v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->f:Landroidx/recyclerview/widget/ColorRecyclerView$a;

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/ColorRecyclerView$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_5
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ab:I

    if-lez p1, :cond_2

    const-string p1, "ColorRecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method a(IILandroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v10, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->e()V

    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->s:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_6

    if-nez v8, :cond_0

    if-eqz v9, :cond_6

    :cond_0
    iget-boolean v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_1

    if-gtz v9, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_2

    if-ltz v9, :cond_4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_3

    if-gtz v8, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_5

    if-gez v8, :cond_5

    :cond_4
    move v0, v13

    move v1, v0

    move v2, v1

    move v3, v2

    goto :goto_0

    :cond_5
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aput v13, v0, v13

    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aput v13, v0, v12

    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    invoke-virtual {v10, v8, v9, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(II[I)V

    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aget v0, v0, v13

    iget-object v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aget v1, v1, v12

    sub-int v2, v8, v0

    sub-int v3, v9, v1

    :goto_0
    const-string v4, "ColorRecyclerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollByInternal: y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " consumedY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " unconsumedY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_1

    :cond_6
    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_1
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->invalidate()V

    :cond_7
    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aput v13, v0, v13

    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aput v13, v0, v12

    iget-object v5, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    const/4 v6, 0x0

    iget-object v7, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(IIII[II[I)V

    iget-object v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aget v0, v0, v13

    sub-int v0, v16, v0

    iget-object v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aget v1, v1, v12

    sub-int v1, v17, v1

    iget v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iget-object v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v3, v3, v13

    sub-int/2addr v2, v3

    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iget v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iget-object v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v3, v3, v12

    sub-int/2addr v2, v3

    iput v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    if-eqz v11, :cond_8

    iget-object v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v2, v2, v13

    int-to-float v2, v2

    iget-object v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v3, v3, v12

    int-to-float v3, v3

    invoke-virtual {v11, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_8
    iget-object v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aget v3, v2, v13

    iget-object v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v4, v4, v13

    add-int/2addr v3, v4

    aput v3, v2, v13

    iget-object v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aget v3, v2, v12

    iget-object v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v4, v4, v12

    add-int/2addr v3, v4

    aput v3, v2, v12

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    if-eqz v11, :cond_16

    iget-boolean v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz v2, :cond_16

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    iput v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    :cond_a
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-ge v2, v4, :cond_b

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-ge v2, v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v2, v4, :cond_b

    iput v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    :cond_b
    if-nez v1, :cond_c

    if-nez v15, :cond_c

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v2, v4, :cond_c

    iput v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-ge v2, v4, :cond_d

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-ge v2, v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v2, v4, :cond_d

    iput v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    :cond_d
    if-nez v0, :cond_e

    if-nez v14, :cond_e

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v2, v4, :cond_e

    iput v3, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v4

    iget v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    invoke-static {v1, v4, v2}, Lcom/color/support/a/a;->a(III)I

    move-result v1

    iget v2, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    invoke-static {v0, v3, v2}, Lcom/color/support/a/a;->a(III)I

    move-result v0

    if-gez v4, :cond_f

    if-gtz v9, :cond_10

    :cond_f
    if-lez v4, :cond_11

    if-gez v9, :cond_11

    :cond_10
    iget v1, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    invoke-static {v9, v3, v1}, Lcom/color/support/a/a;->a(III)I

    move-result v1

    :cond_11
    move v2, v1

    if-gez v3, :cond_12

    if-gtz v8, :cond_13

    :cond_12
    if-lez v3, :cond_14

    if-gez v8, :cond_14

    :cond_13
    iget v0, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    invoke-static {v8, v3, v0}, Lcom/color/support/a/a;->a(III)I

    move-result v0

    :cond_14
    move v1, v0

    if-nez v2, :cond_15

    if-eqz v1, :cond_16

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    iget v8, v10, Landroidx/recyclerview/widget/ColorRecyclerView;->W:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroidx/recyclerview/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    :cond_16
    if-nez v14, :cond_17

    if-eqz v15, :cond_18

    :cond_17
    invoke-virtual {v10, v14, v15}, Landroidx/recyclerview/widget/ColorRecyclerView;->c(II)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->invalidate()V

    :cond_19
    if-nez v14, :cond_1b

    if-eqz v15, :cond_1a

    goto :goto_2

    :cond_1a
    move v12, v13

    :cond_1b
    :goto_2
    return v12
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$m;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(II)Z
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ColorRecyclerView"

    const-string p1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->B:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    iget-object v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->al:I

    if-ge v3, v4, :cond_3

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->al:I

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

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v6, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroidx/recyclerview/widget/ColorRecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ak:Landroidx/recyclerview/widget/RecyclerView$l;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ak:Landroidx/recyclerview/widget/RecyclerView$l;

    invoke-virtual {v3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$l;->a(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    move v1, v5

    :cond_a
    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x2

    :cond_b
    invoke-virtual {p0, v1, v5}, Landroidx/recyclerview/widget/ColorRecyclerView;->j(II)Z

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    neg-int v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    neg-int v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->f:Landroidx/recyclerview/widget/ColorRecyclerView$a;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ColorRecyclerView$a;->a(II)V

    return v5

    :cond_c
    return v1
.end method

.method c(II)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ab:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ColorRecyclerView;->i(II)V

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->an:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->an:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ao:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ab:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ab:I

    return-void
.end method

.method public computeScroll()V
    .locals 12

    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {v0}, Lcom/color/support/widget/g;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v11

    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {v1}, Lcom/color/support/widget/g;->b()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {v2}, Lcom/color/support/widget/g;->c()I

    move-result v2

    if-ne v0, v1, :cond_1

    if-eq v11, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollRange()I

    move-result v7

    sub-int v3, v1, v0

    sub-int v4, v2, v11

    iget v8, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aa:I

    iget v9, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aa:I

    const/4 v10, 0x0

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v5, v11

    move v6, v7

    invoke-virtual/range {v1 .. v10}, Landroidx/recyclerview/widget/ColorRecyclerView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v11}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {v0}, Lcom/color/support/widget/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method public getMaxFlingVelocity()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    return p0
.end method

.method public getMinFlingVelocity()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->al:I

    return p0
.end method

.method public getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$l;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ak:Landroidx/recyclerview/widget/RecyclerView$l;

    return-object p0
.end method

.method public getScrollState()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->S:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->C()V

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->af:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ag:I

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->C()V

    goto/16 :goto_2

    :pswitch_4
    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_4

    const-string p1, "ColorRecyclerView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    if-eq v4, v2, :cond_b

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->af:I

    sub-int v4, v5, v4

    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ag:I

    sub-int v6, p1, v6

    if-eqz v0, :cond_5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v0, v4, :cond_5

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    if-eqz v3, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v3, v4, :cond_6

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    move v0, v2

    :cond_6
    if-eqz v0, :cond_b

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    goto :goto_2

    :pswitch_5
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->h(I)V

    goto :goto_2

    :pswitch_6
    iget-boolean v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->T:Z

    if-eqz v4, :cond_7

    iput-boolean v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->T:Z

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iput v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->af:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ag:I

    iget p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->h(I)V

    :cond_8
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aput v1, v4, v2

    aput v1, p1, v1

    if-eqz v0, :cond_9

    move p1, v2

    goto :goto_1

    :cond_9
    move p1, v1

    :goto_1
    if-eqz v3, :cond_a

    or-int/lit8 p1, p1, 0x2

    :cond_a
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->j(II)Z

    :cond_b
    :goto_2
    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    if-ne p0, v2, :cond_c

    move v1, v2

    :cond_c
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result p3

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result p3

    if-eq p3, p1, :cond_1

    :cond_0
    const-string p3, "ColorRecyclerView"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOverScrolled: scrollX: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " scrollY: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ColorRecyclerView;->onScrollChanged(IIII)V

    invoke-static {p0, p1}, Lcom/color/support/b/a/a;->b(Landroid/view/View;I)V

    invoke-static {p0, p2}, Lcom/color/support/b/a/a;->a(Landroid/view/View;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->z()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->awakenScrollBars()Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->B:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->T:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->C()V

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v5, :cond_5

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    iget-object v8, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aput v1, v8, v2

    aput v1, v7, v1

    :cond_5
    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v7, 0x3f000000    # 0.5f

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iput v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->af:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ag:I

    goto/16 :goto_a

    :pswitch_3
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->C()V

    goto/16 :goto_a

    :pswitch_4
    iget v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_6

    const-string p1, "ColorRecyclerView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iget v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    sub-int/2addr v5, v6

    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    sub-int v13, v7, p1

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aput v1, v7, v1

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aput v1, v7, v2

    iget-object v10, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    iget-object v11, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aget v7, v7, v1

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->O:[I

    aget v7, v7, v2

    sub-int/2addr v13, v7

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aget v8, v7, v1

    iget-object v9, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v9, v9, v1

    add-int/2addr v8, v9

    aput v8, v7, v1

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aq:[I

    aget v8, v7, v2

    iget-object v9, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v9, v9, v2

    add-int/2addr v8, v9

    aput v8, v7, v2

    :cond_7
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    if-eq v7, v2, :cond_c

    if-eqz v0, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v7, v8, :cond_9

    if-lez v5, :cond_8

    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_8
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    add-int/2addr v5, v7

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_9
    move v7, v1

    :goto_1
    if-eqz v3, :cond_b

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    if-le v8, v9, :cond_b

    if-lez v13, :cond_a

    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    sub-int/2addr v13, v7

    goto :goto_2

    :cond_a
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    add-int/2addr v13, v7

    :goto_2
    move v7, v2

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    :cond_c
    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    if-ne v7, v2, :cond_1d

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iget-object v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ap:[I

    aget v6, v6, v2

    sub-int/2addr p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz p1, :cond_d

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    :cond_d
    if-eqz v0, :cond_e

    move p1, v5

    goto :goto_3

    :cond_e
    move p1, v1

    :goto_3
    if-eqz v3, :cond_f

    move v0, v13

    goto :goto_4

    :cond_f
    move v0, v1

    :goto_4
    invoke-virtual {p0, p1, v0, v4}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_10
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->H:Landroidx/recyclerview/widget/h;

    if-eqz p1, :cond_1d

    if-nez v5, :cond_11

    if-eqz v13, :cond_1d

    :cond_11
    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->H:Landroidx/recyclerview/widget/h;

    invoke-virtual {p1, p0, v5, v13}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto/16 :goto_a

    :pswitch_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move p1, v2

    goto :goto_5

    :cond_12
    move p1, v1

    :goto_5
    iget-object v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->am:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v5, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_6

    :cond_13
    move v0, v5

    :goto_6
    if-eqz v3, :cond_14

    iget-object v3, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {v3, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_7

    :cond_14
    move v3, v5

    :goto_7
    iget v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->U:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_16

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v6

    if-eqz v6, :cond_16

    :cond_15
    iget-boolean v6, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz v6, :cond_16

    iget-object v7, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getScrollRange()I

    move-result v13

    invoke-virtual/range {v7 .. v13}, Lcom/color/support/widget/g;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->postInvalidateOnAnimation()V

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    if-eqz v0, :cond_19

    iput v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(I)V

    goto :goto_8

    :cond_16
    cmpl-float v6, v0, v5

    if-nez v6, :cond_17

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_18

    :cond_17
    float-to-int v0, v0

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/ColorRecyclerView;->b(II)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->setScrollState(I)V

    :cond_19
    :goto_8
    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->B()V

    goto :goto_b

    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ad:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ah:I

    iput v5, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->af:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ai:I

    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ag:I

    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {p1}, Lcom/color/support/widget/g;->a()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->V:Lcom/color/support/widget/g;

    invoke-virtual {p1}, Lcom/color/support/widget/g;->abortAnimation()V

    :cond_1a
    if-eqz v0, :cond_1b

    move p1, v2

    goto :goto_9

    :cond_1b
    move p1, v1

    :goto_9
    if-eqz v3, :cond_1c

    or-int/lit8 p1, p1, 0x2

    :cond_1c
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ColorRecyclerView;->j(II)Z

    :cond_1d
    :goto_a
    move p1, v1

    :goto_b
    if-nez p1, :cond_1e

    iget-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    if-nez p1, :cond_1e

    iget-object p0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ae:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1e
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_1f
    :goto_c
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    :cond_5
    invoke-virtual {p0, p1, p2, p5, p5}, Landroidx/recyclerview/widget/ColorRecyclerView;->onOverScrolled(IIZZ)V

    return p5
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-interface {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_0

    const-string p0, "ColorRecyclerView"

    const-string p1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->B:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->t:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

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

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method public setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$l;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ak:Landroidx/recyclerview/widget/RecyclerView$l;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->an:Landroidx/recyclerview/widget/RecyclerView$n;

    return-void
.end method

.method public setOverScrollEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->a:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->ac:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->A()V

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ColorRecyclerView;->a(I)V

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ColorRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string v1, "ColorRecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    goto :goto_1

    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/ColorRecyclerView;->aj:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
