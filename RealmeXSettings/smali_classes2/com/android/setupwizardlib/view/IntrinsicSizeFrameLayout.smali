.class public Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "IntrinsicSizeFrameLayout.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->b:I

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, v1, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->b:I

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->b:I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(II)I
    .locals 3

    if-gtz p2, :cond_0

    return p1

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez p2, :cond_1

    .line 82
    iget p1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    :cond_1
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_2

    .line 86
    iget p1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_2
    return p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 58
    sget-object v0, Lcom/android/setupwizardlib/b$g;->SuwIntrinsicSizeFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwIntrinsicSizeFrameLayout_android_height:I

    .line 61
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    .line 62
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwIntrinsicSizeFrameLayout_android_width:I

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->b:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->b:I

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a(II)I

    move-result p1

    iget v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a:I

    .line 70
    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->a(II)I

    move-result p2

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
