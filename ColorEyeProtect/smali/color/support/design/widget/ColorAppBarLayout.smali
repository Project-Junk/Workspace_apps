.class public Lcolor/support/design/widget/ColorAppBarLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/design/widget/ColorAppBarLayout$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Landroidx/core/f/ab;

.field private g:Z

.field private h:Z

.field private i:[I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->a:I

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->b:I

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->e:I

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->j:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->setOrientation(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    invoke-static {p0}, Lcolor/support/design/widget/b;->a(Landroid/view/View;)V

    sget v0, Lcolor/support/v7/a/a$m;->Widget_Design_ColorAppBarLayout:I

    invoke-static {p0, p2, v1, v0}, Lcolor/support/design/widget/b;->a(Landroid/view/View;Landroid/util/AttributeSet;II)V

    :cond_0
    sget-object v0, Lcolor/support/v7/a/a$n;->ColorAppBarLayout:[I

    sget v3, Lcolor/support/v7/a/a$m;->Widget_Design_ColorAppBarLayout:I

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcolor/support/v7/a/a$n;->ColorAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lcolor/support/v7/a/a$n;->ColorAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/f/t;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p2, Lcolor/support/v7/a/a$n;->ColorAppBarLayout_colorExpanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcolor/support/v7/a/a$n;->ColorAppBarLayout_colorExpanded:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-direct {p0, p2, v1, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->a(ZZZ)V

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_3

    sget p2, Lcolor/support/v7/a/a$n;->ColorAppBarLayout_colorElevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcolor/support/v7/a/a$n;->ColorAppBarLayout_colorElevation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcolor/support/design/widget/b;->a(Landroid/view/View;F)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcolor/support/design/widget/ColorAppBarLayout$1;

    invoke-direct {p1, p0}, Lcolor/support/design/widget/ColorAppBarLayout$1;-><init>(Lcolor/support/design/widget/ColorAppBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/f/t;->a(Landroid/view/View;Landroidx/core/f/q;)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    iput p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->e:I

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->requestLayout()V

    return-void
.end method

.method private a(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->g:Z

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {v3}, Lcolor/support/design/widget/ColorAppBarLayout$a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->a(Z)Z

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->a:I

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->b:I

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->c:I

    return-void
.end method


# virtual methods
.method a(Landroidx/core/f/ab;)Landroidx/core/f/ab;
    .locals 2

    invoke-static {p0}, Landroidx/core/f/t;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->f:Landroidx/core/f/ab;

    invoke-static {v1, v0}, Landroidx/core/e/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->f:Landroidx/core/f/ab;

    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->c()V

    :cond_1
    return-object p1
.end method

.method protected a()Lcolor/support/design/widget/ColorAppBarLayout$a;
    .locals 2

    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$a;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Lcolor/support/design/widget/ColorAppBarLayout$a;-><init>(II)V

    return-object p0
.end method

.method public a(Landroid/util/AttributeSet;)Lcolor/support/design/widget/ColorAppBarLayout$a;
    .locals 1

    new-instance v0, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/design/widget/ColorAppBarLayout$a;
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$a;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$a;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$a;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-direct {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public a(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->a(ZZZ)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcolor/support/design/widget/ColorAppBarLayout$a;

    return p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->a()Lcolor/support/design/widget/ColorAppBarLayout$a;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->a()Lcolor/support/design/widget/ColorAppBarLayout$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->a(Landroid/util/AttributeSet;)Lcolor/support/design/widget/ColorAppBarLayout$a;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/design/widget/ColorAppBarLayout$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->a(Landroid/util/AttributeSet;)Lcolor/support/design/widget/ColorAppBarLayout$a;

    move-result-object p0

    return-object p0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Lcolor/support/design/widget/ColorAppBarLayout$a;

    move-result-object p0

    return-object p0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->b:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Lcolor/support/design/widget/ColorAppBarLayout$a;->a:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    iget v7, v4, Lcolor/support/design/widget/ColorAppBarLayout$a;->topMargin:I

    iget v4, v4, Lcolor/support/design/widget/ColorAppBarLayout$a;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v3

    :goto_1
    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v3

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->b:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .locals 9

    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->c:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->topMargin:I

    iget v8, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iget v5, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->a:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->c:I

    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v0

    invoke-static {p0}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getPendingAction()I
    .locals 0

    iget p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->e:I

    return p0
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final getTopInset()I
    .locals 1

    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->f:Landroidx/core/f/ab;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->f:Landroidx/core/f/ab;

    invoke-virtual {p0}, Landroidx/core/f/ab;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTotalScaleRange()I
    .locals 9

    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->j:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->a:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_1

    iget v8, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->j:I

    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    iget v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->a:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->a:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    iget v8, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Lcolor/support/design/widget/ColorAppBarLayout$a;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroidx/core/f/t;->j(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->a:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 0

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->i:[I

    :cond_0
    iget-object v0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->i:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcolor/support/design/widget/ColorAppBarLayout;->g:Z

    if-eqz v2, :cond_1

    sget v2, Lcolor/support/v7/a/a$b;->colorStateCollapsible:I

    goto :goto_0

    :cond_1
    sget v2, Lcolor/support/v7/a/a$b;->colorStateCollapsible:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcolor/support/design/widget/ColorAppBarLayout;->g:Z

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Lcolor/support/design/widget/ColorAppBarLayout;->h:Z

    if-eqz p0, :cond_2

    sget p0, Lcolor/support/v7/a/a$b;->colorStateCollapsed:I

    goto :goto_1

    :cond_2
    sget p0, Lcolor/support/v7/a/a$b;->colorStateCollapsed:I

    neg-int p0, p0

    :goto_1
    aput p0, v0, v1

    invoke-static {p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->c()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->d:Z

    invoke-virtual {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcolor/support/design/widget/ColorAppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcolor/support/design/widget/ColorAppBarLayout$a;

    invoke-virtual {p3}, Lcolor/support/design/widget/ColorAppBarLayout$a;->a()Landroid/view/animation/Interpolator;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcolor/support/design/widget/ColorAppBarLayout;->d:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcolor/support/design/widget/ColorAppBarLayout;->c()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    invoke-static {p0}, Landroidx/core/f/t;->s(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->a(ZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcolor/support/design/widget/b;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
