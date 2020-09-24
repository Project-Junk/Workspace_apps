.class Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;
.super Ljava/lang/Object;
.source "KeyguardVerifyManager.java"

# interfaces
.implements Lcom/color/compat/internal/widget/LockPatternCheckerNative$OnCheckCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->checkFromLockPatternChecker(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    const-string p0, "KeyguardVerifyManager"

    const-string v0, "onCancelled()"

    .line 408
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onChecked(ZI)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFromLockPatternChecker()--onChecked(), matched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardVerifyManager"

    invoke-static {v0, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$300(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$000(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addRPMBVerifyResult(ZI)V

    if-nez p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$400(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x64

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$502(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onEarlyMatched()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$200(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$2;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$300(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->getInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendRebootState(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
