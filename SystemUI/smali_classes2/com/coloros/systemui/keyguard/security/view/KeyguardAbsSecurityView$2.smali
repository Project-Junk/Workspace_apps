.class Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;
.super Landroid/os/CountDownTimer;
.source "KeyguardAbsSecurityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastMillis:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;JJI)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iput p6, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->val$type:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, -0x1

    .line 409
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->mLastMillis:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAttemptLockout(), mCountdownTimer onFinish, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->val$type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsSecurityView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$400(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$502(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 426
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->val$type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 427
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$600(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Z

    .line 429
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mSwitcher:Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecuritySwitcher;->enterNormal()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$700(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getIsVerifyRebootAfterLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "need verify after lockout finish."

    .line 434
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$800(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->setIsVerifyRebootAfterLockout(Z)V

    .line 436
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$900(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->checkRpmbWhenReboot()V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 4

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 413
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    if-lez p1, :cond_1

    .line 414
    iget p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->mLastMillis:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->val$type:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 418
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$2;->mLastMillis:I

    :cond_1
    :goto_0
    return-void
.end method
