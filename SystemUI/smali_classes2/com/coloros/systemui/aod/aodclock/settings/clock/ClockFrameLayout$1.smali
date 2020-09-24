.class Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;
.super Ljava/lang/Object;
.source "ClockFrameLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


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

    .line 152
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-gt v0, v1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-le v0, v1, :cond_1

    .line 161
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/clock/ClockFrameLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
