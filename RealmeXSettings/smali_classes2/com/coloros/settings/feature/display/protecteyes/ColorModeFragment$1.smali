.class final Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;
.super Ljava/lang/Object;
.source "ColorModeFragment.java"

# interfaces
.implements Lcom/color/widget/ColorViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$1;->a:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageSelected(I)V

    return-void
.end method
