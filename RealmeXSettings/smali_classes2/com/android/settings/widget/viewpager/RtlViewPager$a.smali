.class final Lcom/android/settings/widget/viewpager/RtlViewPager$a;
.super Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/viewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/android/settings/widget/viewpager/RtlViewPager;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/viewpager/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .param p2    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 279
    iput-object p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    .line 280
    invoke-direct {p0, p2}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 297
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 285
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 288
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 302
    invoke-super {p0, p1}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    .line 303
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :cond_2
    :goto_1
    return p1
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 321
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final getPageWidth(I)F
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 329
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 348
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 338
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 365
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->b:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/widget/viewpager/RtlViewPager$a;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 356
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/viewpager/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
