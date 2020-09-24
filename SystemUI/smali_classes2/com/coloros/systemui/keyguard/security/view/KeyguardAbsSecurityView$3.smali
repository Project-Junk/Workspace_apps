.class Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;
.super Ljava/lang/Object;
.source "KeyguardAbsSecurityView.java"

# interfaces
.implements Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->startPendingLockCheck(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mSeq:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

.field final synthetic val$entry:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;ILjava/lang/String;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iput p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$entry:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1000(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->mSeq:I

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 3

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingLockCheck.onCancelled(), seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "KeyguardAbsSecurityView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->clearTexts()V

    return-void
.end method

.method public onChecked(ZI)V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->setInputEnabled(Z)V

    if-nez p1, :cond_1

    .line 775
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPendingLockCheckedFailed(), uIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", seq="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->mSeq:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeoutMs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common"

    const-string v2, "KeyguardAbsSecurityView"

    invoke-static {v0, v2, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    invoke-static {p1, v0, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1400(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;II)V

    const/4 p1, 0x0

    if-lez p2, :cond_0

    .line 779
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1500(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v1

    const/4 p2, 0x2

    invoke-virtual {v0, v1, v2, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->handleAttemptLockout(JI)V

    .line 781
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1600(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnPwdLockout(Landroid/content/Context;)V

    goto :goto_0

    .line 783
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    new-array v0, p1, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    .line 785
    :goto_0
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1700(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getPasswordMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnPasswordChecked(Landroid/content/Context;ZLjava/lang/String;)V

    .line 787
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method public onEarlyMatched()V
    .locals 8

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPendingLockCheckedSuccess(), uIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "KeyguardAbsSecurityView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPendingLockCheckedSuccess(I)V

    .line 767
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1100(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getPasswordMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendOnPasswordChecked(Landroid/content/Context;ZLjava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    new-instance v7, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$entry:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->getPasswordQuality()I

    move-result v3

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->isPattern()Z

    move-result v4

    iget v5, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->val$userId:I

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1300(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;-><init>(Ljava/lang/String;IZILcom/android/internal/widget/LockPatternUtils;)V

    invoke-static {v0, v7}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->access$1202(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;)Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    return-void
.end method
