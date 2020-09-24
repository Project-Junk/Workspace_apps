.class public Lcom/google/android/setupdesign/view/StickyHeaderScrollView;
.super Lcom/google/android/setupdesign/view/BottomScrollView;
.source "StickyHeaderScrollView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/BottomScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/view/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/view/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->c:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 81
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 83
    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 87
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 88
    iget v3, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->c:I

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->c:I

    .line 111
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 114
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 110
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/view/BottomScrollView;->onLayout(ZIIII)V

    .line 66
    iget-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->a:Landroid/view/View;

    if-nez p1, :cond_0

    const-string p1, "sticky"

    .line 1073
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->a:Landroid/view/View;

    const-string p1, "stickyContainer"

    .line 1074
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->b:Landroid/view/View;

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->a()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/setupdesign/view/BottomScrollView;->onScrollChanged(IIII)V

    .line 101
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/StickyHeaderScrollView;->a()V

    return-void
.end method
