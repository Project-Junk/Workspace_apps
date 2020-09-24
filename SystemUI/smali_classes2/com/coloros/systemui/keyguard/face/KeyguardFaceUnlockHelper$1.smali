.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "KeyguardFaceUnlockHelper"

    const-string v1, "Face detect timeout"

    .line 74
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateShortWhenVerify()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->isCombineUnlockRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->stopFaceCheck(Z)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$300(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEvent(Landroid/content/Context;I)V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$300(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;->collectDataOfFaceUnlockFailEventWhileFillLight(Landroid/content/Context;ZI)V

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->access$000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    :goto_0
    return-void
.end method
