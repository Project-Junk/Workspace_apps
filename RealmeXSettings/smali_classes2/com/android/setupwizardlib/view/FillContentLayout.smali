.class public Lcom/android/setupwizardlib/view/FillContentLayout;
.super Landroid/widget/FrameLayout;
.source "FillContentLayout.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    sget v0, Lcom/android/setupwizardlib/b$a;->suwFillContentLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1062
    sget-object v0, Lcom/android/setupwizardlib/b$g;->SuwFillContentLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1068
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwFillContentLayout_android_maxHeight:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->b:I

    .line 1070
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwFillContentLayout_android_maxWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->a:I

    .line 1072
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(III)I
    .locals 2

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 110
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz p2, :cond_0

    .line 114
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 117
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    const/high16 p1, -0x80000000

    .line 121
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 81
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/view/FillContentLayout;->getDefaultSize(II)I

    move-result p1

    .line 82
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/setupwizardlib/view/FillContentLayout;->getDefaultSize(II)I

    move-result p2

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/view/FillContentLayout;->setMeasuredDimension(II)V

    .line 84
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/view/FillContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMeasuredHeight()I

    move-result v2

    .line 1092
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1096
    iget v4, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->a:I

    .line 1097
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1098
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1096
    invoke-static {v1, v4, v5}, Lcom/android/setupwizardlib/view/FillContentLayout;->a(III)I

    move-result v1

    .line 1100
    iget v4, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->b:I

    .line 1101
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1102
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1100
    invoke-static {v2, v4, v3}, Lcom/android/setupwizardlib/view/FillContentLayout;->a(III)I

    move-result v2

    .line 1105
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
