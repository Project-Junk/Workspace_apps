.class Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;
.super Ljava/lang/Object;
.source "KeyguardSliderLayout.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/wallpaper/pictorial/tips/OnTipsListener;


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

    .line 814
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEntry()V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$400(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 842
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->readyToShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v0

    add-int/2addr v0, v1

    .line 847
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 848
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->onSlidingStarted()V

    .line 850
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    .line 851
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setCurrentItem(I)V

    .line 852
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->actionForClickEntryIcon()V

    .line 854
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "counts_click_enter_slide_page"

    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "KeyguardSliderLayout"

    const-string v0, "onClickEntry no readyToShow, return"

    .line 843
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onSlideEnd(Z)V
    .locals 3

    .line 832
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$900(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->scrollTo(II)V

    .line 833
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/BackDropView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V

    .line 834
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0, v2, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V

    .line 835
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1300(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    move-result-object v0

    invoke-static {p1, v0, v2, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V

    .line 836
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0, v2, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1400(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;FI)V

    return-void
.end method

.method public onSlideStart()V
    .locals 0

    return-void
.end method

.method public onSlideUpdate(IF)V
    .locals 2

    .line 821
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$400(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result p2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 822
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$900(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->scrollTo(II)V

    .line 823
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/android/systemui/statusbar/BackDropView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V

    .line 824
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p2, v0, v1, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V

    .line 825
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1300(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    move-result-object v0

    invoke-static {p2, v0, v1, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Landroid/view/View;FI)V

    .line 826
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0, v1, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1400(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;FI)V

    :cond_0
    return-void
.end method

.method public otherProcessForbidTips()Z
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$2;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1800(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z

    move-result p0

    return p0
.end method
