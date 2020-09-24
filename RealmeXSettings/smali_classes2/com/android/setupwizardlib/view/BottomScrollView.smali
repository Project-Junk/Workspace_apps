.class public Lcom/android/setupwizardlib/view/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/BottomScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/setupwizardlib/view/BottomScrollView$a;

.field private b:I

.field private c:Z

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->c:Z

    .line 41
    new-instance p1, Lcom/android/setupwizardlib/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/android/setupwizardlib/view/BottomScrollView$1;-><init>(Lcom/android/setupwizardlib/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->c:Z

    .line 41
    new-instance p1, Lcom/android/setupwizardlib/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/android/setupwizardlib/view/BottomScrollView$1;-><init>(Lcom/android/setupwizardlib/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->c:Z

    .line 41
    new-instance p1, Lcom/android/setupwizardlib/view/BottomScrollView$1;

    invoke-direct {p1, p0}, Lcom/android/setupwizardlib/view/BottomScrollView$1;-><init>(Lcom/android/setupwizardlib/view/BottomScrollView;)V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->a:Lcom/android/setupwizardlib/view/BottomScrollView$a;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->b:I

    if-lt v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->a:Lcom/android/setupwizardlib/view/BottomScrollView$a;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/BottomScrollView$a;->a()V

    return-void

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->c:Z

    .line 98
    iget-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->a:Lcom/android/setupwizardlib/view/BottomScrollView$a;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/BottomScrollView$a;->b()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/setupwizardlib/view/BottomScrollView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->a()V

    return-void
.end method


# virtual methods
.method public getScrollThreshold()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 66
    iget v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->b:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 71
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p5

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->b:I

    :cond_0
    sub-int/2addr p5, p3

    if-lez p5, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/BottomScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    if-eq p4, p2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->a()V

    :cond_0
    return-void
.end method

.method public setBottomScrollListener(Lcom/android/setupwizardlib/view/BottomScrollView$a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->a:Lcom/android/setupwizardlib/view/BottomScrollView$a;

    return-void
.end method
