.class public final Lcom/android/settings/widget/RtlCompatibleViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "RtlCompatibleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RtlCompatibleViewPager$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    return p1
.end method

.method public final getCurrentItem()I
    .locals 1

    .line 52
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->a(I)I

    move-result v0

    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 71
    check-cast p1, Lcom/android/settings/widget/RtlCompatibleViewPager$a;

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/widget/RtlCompatibleViewPager$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 74
    iget p1, p1, Lcom/android/settings/widget/RtlCompatibleViewPager$a;->a:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 62
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settings/widget/RtlCompatibleViewPager$a;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/RtlCompatibleViewPager$a;-><init>(Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v0

    iput v0, v1, Lcom/android/settings/widget/RtlCompatibleViewPager$a;->a:I

    return-object v1
.end method

.method public final setCurrentItem(I)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->a(I)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
