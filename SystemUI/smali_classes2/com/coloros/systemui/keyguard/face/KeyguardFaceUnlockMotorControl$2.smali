.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardFaceUnlockMotorControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "push"

    const-string v1, "down_type"

    .line 53
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received broadcast,action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  downType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardFaceUnlockMotorControl"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oppo.intent.action.MOTOR_DOWNING"

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFaceUnlock(Z)V

    :cond_0
    return-void
.end method
