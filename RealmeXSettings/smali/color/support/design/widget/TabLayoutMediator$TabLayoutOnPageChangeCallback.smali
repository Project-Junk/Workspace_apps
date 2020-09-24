.class Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/design/widget/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabLayoutOnPageChangeCallback"
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
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 175
    invoke-virtual {p0}, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->reset()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 180
    iget v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    iput v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    .line 181
    iput p1, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 186
    iget-object p3, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcolor/support/design/widget/ColorTabLayout;

    if-eqz p3, :cond_4

    .line 190
    iget v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 195
    :goto_1
    iget v4, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    if-ne v4, v2, :cond_2

    iget v2, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-eqz v2, :cond_3

    :cond_2
    move v1, v3

    .line 197
    :cond_3
    invoke-static {p3, p1, p2, v0, v1}, Lcolor/support/design/widget/TabLayoutMediator;->setScrollPosition(Lcolor/support/design/widget/ColorTabLayout;IFZZ)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorTabLayout;

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 206
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorTabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 209
    iget v1, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 212
    :goto_1
    invoke-virtual {v0, p1}, Lcolor/support/design/widget/ColorTabLayout;->getTabAt(I)Lcolor/support/design/widget/ColorTabLayout$Tab;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcolor/support/design/widget/TabLayoutMediator;->selectTab(Lcolor/support/design/widget/ColorTabLayout;Lcolor/support/design/widget/ColorTabLayout$Tab;Z)V

    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mScrollState:I

    iput v0, p0, Lcolor/support/design/widget/TabLayoutMediator$TabLayoutOnPageChangeCallback;->mPreviousScrollState:I

    return-void
.end method
