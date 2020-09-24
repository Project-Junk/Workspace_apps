.class public Lcom/android/settings/widget/viewpager/RtlViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/viewpager/RtlViewPager$a;,
        Lcom/android/settings/widget/viewpager/RtlViewPager$b;,
        Lcom/android/settings/widget/viewpager/RtlViewPager$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            "Lcom/android/settings/widget/viewpager/RtlViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->a:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/viewpager/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method private a()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/android/settings/widget/viewpager/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    new-instance v0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/viewpager/RtlViewPager$b;-><init>(Lcom/android/settings/widget/viewpager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1037
    :cond_0
    iget-object v0, v0, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->a:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 3

    .line 95
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 96
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    :cond_0
    return v0
.end method

.method public onMeasure(II)V
    .locals 4

    .line 219
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 223
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 229
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 231
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 135
    instance-of v0, p1, Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 140
    :cond_0
    check-cast p1, Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    .line 141
    invoke-static {p1}, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->a(Lcom/android/settings/widget/viewpager/RtlViewPager$c;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    .line 142
    invoke-static {p1}, Lcom/android/settings/widget/viewpager/RtlViewPager$c;->b(Lcom/android/settings/widget/viewpager/RtlViewPager$c;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 60
    :goto_0
    iget p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    if-eq v1, p1, :cond_2

    .line 61
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 66
    :cond_1
    iput v1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 129
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/android/settings/widget/viewpager/RtlViewPager$c;

    iget v2, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->b:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/widget/viewpager/RtlViewPager$c;-><init>(Landroid/os/Parcelable;IB)V

    return-object v1
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/viewpager/RtlViewPager$b;

    if-eqz p1, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;-><init>(Lcom/android/settings/widget/viewpager/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V

    move-object p1, v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/viewpager/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 114
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    new-instance v0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/viewpager/RtlViewPager$b;-><init>(Lcom/android/settings/widget/viewpager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
