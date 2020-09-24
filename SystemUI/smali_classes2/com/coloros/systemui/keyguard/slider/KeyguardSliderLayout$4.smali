.class Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSliderLayout.java"


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

    .line 896
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onKeyguardVisibilityChanged$0(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V
    .locals 0

    .line 907
    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;->show()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisioned()V
    .locals 1

    .line 924
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 925
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->updateSliderPagers(I)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 901
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1900(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    .line 902
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V

    goto :goto_0

    .line 904
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2100(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 905
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->setVisibility(I)V

    .line 906
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$302(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Z)Z

    .line 907
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;->INSTANCE:Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$4$ouZ6SMkmINuotB_ta-I9xwxBEuk;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    .line 930
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 931
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->updateSliderPagers(I)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 3

    .line 913
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 914
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 915
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2300(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isNeedDelayUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 918
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$4;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2200(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
