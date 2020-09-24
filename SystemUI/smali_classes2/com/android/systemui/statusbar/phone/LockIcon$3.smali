.class Lcom/android/systemui/statusbar/phone/LockIcon$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 197
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onColorOSThemeChanged()V
    .locals 1

    .line 246
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$1100(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$1002(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 183
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :goto_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p1

    .line 167
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 170
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 171
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 174
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    .line 220
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    return-void

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$502(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 229
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$602(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 230
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$700(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->hideTips()V

    :cond_2
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 237
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$800(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    .line 241
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$900(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    return-void
.end method
