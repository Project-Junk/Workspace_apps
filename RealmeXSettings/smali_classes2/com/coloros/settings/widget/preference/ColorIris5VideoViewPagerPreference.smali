.class public Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;
.super Landroidx/preference/Preference;
.source "ColorIris5VideoViewPagerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field public a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d00a0

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d00a0

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0d00a0

    .line 49
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d00a0

    .line 44
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->setLayoutResource(I)V

    return-void
.end method

.method private static synthetic a(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public static synthetic lambda$exm4LuG2hE7lT46c3UX-ck6BGUs(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a(Landroidx/viewpager/widget/ViewPager;I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0793

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a032c

    .line 78
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    .line 80
    new-instance v1, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;-><init>(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;B)V

    iput-object v1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    .line 81
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 82
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 84
    new-instance v1, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 100
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->a:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$ViewPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setDotsCount(I)V

    .line 101
    new-instance v1, Lcom/coloros/settings/widget/preference/-$$Lambda$ColorIris5VideoViewPagerPreference$exm4LuG2hE7lT46c3UX-ck6BGUs;

    invoke-direct {v1, v0}, Lcom/coloros/settings/widget/preference/-$$Lambda$ColorIris5VideoViewPagerPreference$exm4LuG2hE7lT46c3UX-ck6BGUs;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setOnDotClickListener(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;)V

    return-void
.end method
