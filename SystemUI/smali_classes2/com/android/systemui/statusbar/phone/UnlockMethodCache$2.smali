.class Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const-string p1, "KeyguardUpdateMonitorCallback#onBiometricAuthenticated"

    .line 182
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$100(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    .line 188
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 215
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method