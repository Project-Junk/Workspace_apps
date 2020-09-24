.class Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ColorKeyguardSecurityViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBiometricRunningStateChanged$0$ColorKeyguardSecurityViewImpl$1()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onFaceRunningStateChanged()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onBiometricNoMatch(Landroid/hardware/biometrics/BiometricSourceType;J)V

    .line 87
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->access$100(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnUnlockByFingerprint(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIsShowFpWhenBouncer(Z)V

    .line 78
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mVerifyManager:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setKeyguardDoneType(II)V

    .line 79
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->access$000(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnUnlockByFingerprint(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->getBiometricDeadline(Landroid/hardware/biometrics/BiometricSourceType;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-virtual {v0, p3, p1, p2}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onBiometricNoMatch(Landroid/hardware/biometrics/BiometricSourceType;J)V

    .line 97
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->access$200(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnUnlockByFingerprint(Landroid/content/Context;)V

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->access$300(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnUnlockByFingerprintLockout(Landroid/content/Context;)V

    .line 102
    :cond_0
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onFaceError()V

    :cond_1
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 69
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    iput-boolean p1, p2, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->mIsFaceDetectionRunning:Z

    .line 71
    new-instance p1, Lcom/coloros/systemui/keyguard/security/-$$Lambda$ColorKeyguardSecurityViewImpl$1$_k-YOoy9lnQcvCrCVDht-0yMGeg;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/-$$Lambda$ColorKeyguardSecurityViewImpl$1$_k-YOoy9lnQcvCrCVDht-0yMGeg;-><init>(Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;)V

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 110
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStrongAuthStateChanged(), updateMsg, uIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSecurityViewImpl"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->updateSecurityMessageDisplay(I)V

    return-void
.end method

.method public updateSecurityMessage(I)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl$1;->this$0:Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityViewImpl;->updateSecurityMessageDisplay(I)V

    return-void
.end method
