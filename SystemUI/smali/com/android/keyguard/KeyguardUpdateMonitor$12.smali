.class Lcom/android/keyguard/KeyguardUpdateMonitor$12;
.super Landroid/hardware/face/FaceManager$AuthenticationCallback;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1700
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAuthenticationAcquired$4$KeyguardUpdateMonitor$12(I)V
    .locals 2

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceManager, onAuthenticationAcquired acquireInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationError$3$KeyguardUpdateMonitor$12(Ljava/lang/CharSequence;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1781
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceManager, onAuthenticationError errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",errString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationFailed$0$KeyguardUpdateMonitor$12()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "FaceManager, onAuthenticationFailed"

    .line 1710
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationHelp$2$KeyguardUpdateMonitor$12(Ljava/lang/CharSequence;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1763
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceManager, onAuthenticationHelp, msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$1$KeyguardUpdateMonitor$12(I)V
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "FaceManager.AuthenticationSucceeded"

    .line 1743
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FaceManager, onAuthenticationSucceeded, checking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    .line 1746
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onAuthenticationAcquired(I)V
    .locals 2

    .line 1796
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Iw_WtS0RKOYBqSrBCArsWNqc3N4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Iw_WtS0RKOYBqSrBCArsWNqc3N4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1802
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    :goto_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1778
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$_qgFUMejhSxLGP6hpY77q2-7uQA;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1785
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 1708
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Se8ZMopABFmDtI7AhKtIYTw1erU;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$Se8ZMopABFmDtI7AhKtIYTw1erU;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1714
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    :goto_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1760
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$0hKZc-2c8rYpEJ_VoyOO9a7FSSs;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$0hKZc-2c8rYpEJ_VoyOO9a7FSSs;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1767
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V
    .locals 2

    .line 1725
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1728
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardUpdateMonitor"

    if-nez v0, :cond_0

    const-string p0, "Face authenticated for having cancel auth"

    .line 1729
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Face authenticated for Keyguard not showing"

    .line 1733
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1737
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    move-result p1

    .line 1738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1739
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1740
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->composeFakeAppLayer(Z)V

    .line 1742
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$12$m2QVOAEnrdgB4yzdT-fsYcVko3Q;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$12;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1749
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager$AuthenticationResult;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    :goto_0
    return-void
.end method
