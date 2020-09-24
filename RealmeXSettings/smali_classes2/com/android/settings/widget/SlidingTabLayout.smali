.class public final Lcom/android/settings/widget/SlidingTabLayout;
.super Landroid/widget/FrameLayout;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SlidingTabLayout$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/LayoutInflater;

.field private d:Lcom/android/settings/widget/RtlCompatibleViewPager;

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->c:Landroid/view/LayoutInflater;

    .line 49
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    .line 50
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->c:Landroid/view/LayoutInflater;

    const p2, 0x7f0d02e2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    .line 53
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/widget/SlidingTabLayout;->addView(Landroid/view/View;II)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SlidingTabLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/widget/SlidingTabLayout;IF)V
    .locals 0

    .line 2120
    iput p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->e:I

    .line 2121
    iput p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->f:F

    .line 2123
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result p1

    .line 2124
    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/widget/SlidingTabLayout;)Lcom/android/settings/widget/RtlCompatibleViewPager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->d:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-object p0
.end method

.method private getIndicatorLeft()I
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 145
    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->f:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->e:I

    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 147
    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->f:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->f:F

    sub-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    float-to-int v0, v2

    :cond_0
    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->d:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    .line 86
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getMeasuredHeight()I

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 89
    iget-object p3, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getMeasuredWidth()I

    move-result p4

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getPaddingLeft()I

    move-result p5

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getPaddingRight()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v1, p5, v3, v2, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->a()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 98
    iget-object p5, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    sub-int p3, p4, p3

    sub-int p2, p1, p2

    invoke-virtual {p5, p3, p2, p4, p1}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 102
    :cond_0
    iget-object p4, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    sub-int p2, p1, p2

    invoke-virtual {p4, v3, p2, p3, p1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 76
    iget-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    .line 76
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 78
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->b:Landroid/view/View;

    invoke-virtual {v0, p2, p1}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public final setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->d:Lcom/android/settings/widget/RtlCompatibleViewPager;

    if-eqz p1, :cond_1

    .line 66
    new-instance v0, Lcom/android/settings/widget/SlidingTabLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/SlidingTabLayout$a;-><init>(Lcom/android/settings/widget/SlidingTabLayout;B)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1128
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->d:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    move v0, v1

    .line 1130
    :goto_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1131
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f0d02e3

    iget-object v4, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1134
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1138
    iget-object v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->d:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v3}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
