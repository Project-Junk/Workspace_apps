.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onUserUnlocked$0$KeyguardBottomAreaView$8()V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 819
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    return-void
.end method

.method public onColorKeyguardLoad(Z)V
    .locals 1

    .line 833
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorKeyguardLoad(Z)V

    .line 834
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 835
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 850
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 851
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1202(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 844
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 845
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1202(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Z)Z

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 802
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 3

    .line 816
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$8$iwo4yY6WYc-6yjzmIWcgh4MS6_Y;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardBottomAreaView$8$iwo4yY6WYc-6yjzmIWcgh4MS6_Y;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;)V

    .line 821
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$8;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isNeedDelayUnlock()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x7d0

    .line 822
    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 824
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
