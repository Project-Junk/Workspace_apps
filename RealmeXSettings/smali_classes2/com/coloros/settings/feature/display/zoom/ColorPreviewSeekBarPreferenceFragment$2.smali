.class final Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;
.super Ljava/lang/Object;
.source "ColorPreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->c(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->c(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->d(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcom/color/widget/ColorViewPager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/color/widget/ColorViewPager;->sendAccessibilityEvent(I)V

    .line 234
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment$2;->a:Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->c(Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageSelected(I)V

    return-void
.end method
