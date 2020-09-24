.class Lcom/android/systemui/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeCustomMessage()Ljava/lang/CharSequence;
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 780
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public dismissKeyguard()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "dismissKeyguard callback"

    .line 788
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public doKeyguardNotifyLock()V
    .locals 2

    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguardNotifyLock callback"

    .line 794
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    return-void
.end method

.method public getBouncerPromptReason()I
    .locals 5

    .line 755
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 756
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/app/trust/TrustManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 757
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 759
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 760
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    .line 761
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v2, :cond_2

    .line 763
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    if-nez p0, :cond_2

    return v4

    :cond_2
    if-eqz v2, :cond_3

    and-int/lit8 p0, v0, 0x10

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    if-eqz v2, :cond_4

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-eqz v1, :cond_5

    and-int/lit8 p0, v0, 0x4

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    if-eqz v2, :cond_6

    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    return v3
.end method

.method public isScreenOn()Z
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p0

    return p0
.end method

.method public keyguardDone(ZI)V
    .locals 0

    .line 665
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p2, p1, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    .line 674
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 675
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 4

    const-wide/16 v0, 0x8

    const-string p1, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    .line 686
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 687
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 688
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 692
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 693
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 694
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1802(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 695
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 696
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xd

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 698
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public keyguardGone()V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    .line 703
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 704
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 705
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onBouncerVisiblityChanged(Z)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    .line 740
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCancelClicked()V
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onCancelClicked()V

    return-void
.end method

.method public onKeyguardBackPressed()V
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onKeyguardBackPressed()V

    return-void
.end method

.method public playTrustedSound()V
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    .line 710
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1602(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 713
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 715
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public resetKeyguard()V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method
