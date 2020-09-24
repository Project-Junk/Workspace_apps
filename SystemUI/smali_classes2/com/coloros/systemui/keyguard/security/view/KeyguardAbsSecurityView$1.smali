.class Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;
.super Ljava/lang/Object;
.source "KeyguardAbsSecurityView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->reset(J)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz v0, :cond_1

    .line 152
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->clearPressedAnimatorState()V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$100(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getIsUnExecuteBySkipBouncer()Z

    move-result v1

    .line 160
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$300(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Z

    move-result v2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScreenTurnedOn(), isFaceUnlockPossible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isUnExecuteFaceBySkipBouncer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", shouldLockout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardAbsSecurityView"

    invoke-static {v4, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$400(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)I

    move-result v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 167
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterNormal()V

    :cond_1
    return-void
.end method
