.class final Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;
.super Ljava/lang/Object;
.source "ColorIris5VideoViewPagerPreference.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

.field final synthetic b:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;->b:Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference;

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;->a:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;->a:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;->a:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorIris5VideoViewPagerPreference$1;->a:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageSelected(I)V

    return-void
.end method
