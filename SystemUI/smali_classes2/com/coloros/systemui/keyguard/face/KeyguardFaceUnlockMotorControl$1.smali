.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockMotorControl.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 36
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockMotorControl"

    const-string v2, "re-check, needs to down motor"

    .line 41
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->downMotor()V

    :cond_1
    return-void
.end method
