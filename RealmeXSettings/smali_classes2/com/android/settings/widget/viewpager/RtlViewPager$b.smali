.class final Lcom/android/settings/widget/viewpager/RtlViewPager$b;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/viewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/viewpager/RtlViewPager;

.field private final b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/viewpager/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->a:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->a:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-virtual {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->getWidth()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->a:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v1}, Lcom/android/settings/widget/viewpager/RtlViewPager;->a(Lcom/android/settings/widget/viewpager/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->a:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v2}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 250
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v2, p3

    :goto_0
    if-ge p1, p2, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 253
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    sub-int/2addr v2, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x1

    neg-int p3, v2

    int-to-float p2, p3

    .line 257
    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr p2, v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->a:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v0}, Lcom/android/settings/widget/viewpager/RtlViewPager;->c(Lcom/android/settings/widget/viewpager/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->a:Lcom/android/settings/widget/viewpager/RtlViewPager;

    invoke-static {v1}, Lcom/android/settings/widget/viewpager/RtlViewPager;->b(Lcom/android/settings/widget/viewpager/RtlViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/viewpager/RtlViewPager$b;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
