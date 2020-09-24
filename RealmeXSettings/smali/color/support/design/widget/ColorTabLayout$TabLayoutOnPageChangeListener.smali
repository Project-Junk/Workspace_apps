.class public Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "ColorTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/ColorTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcolor/support/design/widget/ColorTabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcolor/support/design/widget/ColorTabLayout;)V
    .locals 1

    .line 2525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2526
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 2531
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 2532
    iput p1, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 2538
    iget-object p3, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcolor/support/design/widget/ColorTabLayout;

    if-eqz p3, :cond_3

    .line 2542
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 2547
    :goto_1
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-eqz v1, :cond_2

    move v2, v3

    .line 2548
    :cond_2
    invoke-virtual {p3, p1, p2, v0, v2}, Lcolor/support/design/widget/ColorTabLayout;->setScrollPosition(IFZZ)V

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 2554
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_2

    .line 2555
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 2556
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 2559
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2562
    :goto_1
    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout;->getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcolor/support/design/widget/ColorTabLayout;->selectTab(Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 2567
    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Lcolor/support/design/widget/ColorTabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    return-void
.end method
