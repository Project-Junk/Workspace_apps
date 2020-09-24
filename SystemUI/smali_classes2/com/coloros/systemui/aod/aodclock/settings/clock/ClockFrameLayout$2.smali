.class Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;
.super Ljava/lang/Object;
.source "ClockFrameLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$102(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;I)I

    .line 206
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$202(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;I)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$502(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;I)I

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$400(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$100(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-ne p1, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 177
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    sub-int/2addr v0, p1

    if-ne v0, v1, :cond_1

    .line 179
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    :cond_1
    if-gt p1, v1, :cond_4

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    if-gt v0, v1, :cond_4

    .line 181
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$400(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$100(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-gt p1, v1, :cond_3

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$500(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$400(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->onPageScrolled(IFI)V

    :cond_3
    if-lt p1, v1, :cond_4

    .line 187
    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p3}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)I

    move-result p3

    if-lt p3, v1, :cond_4

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$400(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setCurrentPosition(I)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$400(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    move-result-object v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setVisibility(I)V

    if-gt p1, v0, :cond_2

    move v0, v2

    .line 200
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return-void
.end method
