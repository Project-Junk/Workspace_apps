.class Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;
.super Ljava/lang/Object;
.source "KeyguardSliderLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPageScrollStateChanged$0(ILcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V
    .locals 0

    .line 735
    invoke-interface {p1, p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->onPageScrollStateChanged(I)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$1$3Pj7yZCDYZN1ZxifQnB3Ipirc4Y;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$1$3Pj7yZCDYZN1ZxifQnB3Ipirc4Y;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 736
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$602(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 739
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    .line 740
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onSlidingStarted()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 742
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onSlidingFinished()V

    goto :goto_0

    .line 744
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$602(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 714
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;I)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 716
    invoke-interface {v0, v1}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->onPageSelected(Z)V

    .line 717
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    if-ne v3, v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    invoke-interface {v3, v4}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->onPageSelected(Z)V

    goto :goto_0

    .line 724
    :cond_1
    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->pagerType()I

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_2

    .line 725
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$302(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z

    goto :goto_1

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$302(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z

    .line 730
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$1;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$402(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;I)I

    return-void
.end method
