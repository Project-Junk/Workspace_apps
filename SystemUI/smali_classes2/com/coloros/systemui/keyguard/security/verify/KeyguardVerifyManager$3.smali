.class Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;
.super Ljava/lang/Object;
.source "KeyguardVerifyManager.java"

# interfaces
.implements Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->dispatchKeyEvent(Landroid/view/KeyEvent;Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

.field final synthetic val$keyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;ILcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    iput p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->val$userId:I

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->val$keyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    const-string v0, "KeyguardVerifyManager"

    const-string v1, "dispatchKeyEvent()--onCancelled()"

    .line 456
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$602(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onChecked(ZI)V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent(), matched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardVerifyManager"

    invoke-static {v0, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$602(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const/4 p2, 0x2

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->val$userId:I

    invoke-virtual {p1, p2, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setKeyguardDoneType(II)V

    .line 449
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$700(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->val$userId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 450
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->val$keyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 p2, 0x1

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$3;->val$userId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/keyguard/KeyguardHostView;->dismiss(ZI)Z

    :cond_0
    return-void
.end method

.method public onEarlyMatched()V
    .locals 0

    return-void
.end method
