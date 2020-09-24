.class Lcom/android/keyguard/KeyguardUpdateMonitor$11;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
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

    .line 1539
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAuthenticationError$2$KeyguardUpdateMonitor$11(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1666
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpFailedAttempts()I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationFailed$0$KeyguardUpdateMonitor$11()V
    .locals 3

    .line 1570
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFpFailedAttempts()I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p0

    const-string v2, "AuthenticationFailed"

    invoke-static {v0, v1, p0, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->collectDataOfFingerprintUnlockFailed(Landroid/content/Context;IZLjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$1$KeyguardUpdateMonitor$11()V
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFpStatistic;->collectDataOfFingerprintUnlockSucceed(ZLandroid/content/Context;)V

    return-void
.end method

.method public onAuthenticationAcquired(I)V
    .locals 2

    .line 1677
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$11$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$11$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$11$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1660
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 1665
    :cond_0
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$ngjk4JhVH1F4QfQ0AT_wapn5U1M;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 1545
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1546
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1547
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockFail()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3902(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "FingerprintManager onAuthenticationFailed, pending fp failure"

    .line 1549
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$11$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$11$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    .line 1569
    new-instance v0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$x114SDgqf0T7BmIMTAwX2ddlocg;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$x114SDgqf0T7BmIMTAwX2ddlocg;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1632
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$11$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 5

    .line 1584
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    const-string v1, "KeyguardUpdateMonitor"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Fingerprint authenticated successful but Keyguard is not showing"

    .line 1585
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1589
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    move-result v0

    .line 1590
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1593
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4302(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    .line 1595
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->composeFakeAppLayer(Z)V

    .line 1596
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$11$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1614
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1615
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3902(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z

    const-string p1, "FingerprintManager onAuthenticationSucceeded, stop combineunlock"

    .line 1616
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->stopListeningForFaceByFp()V

    .line 1621
    :cond_1
    new-instance p1, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$EW82qeHp3SOJ3Ox2CznFFuGc_Jk;

    invoke-direct {p1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$11$EW82qeHp3SOJ3Ox2CznFFuGc_Jk;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor$11;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchDown()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "FingerprintManager, onTouchDown"

    .line 1688
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    return-void
.end method

.method public onTouchUp()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "FingerprintManager, onTouchUp"

    .line 1693
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$11;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    return-void
.end method
