.class public Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;
.super Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;
.source "KeyguardFaceUnlockMotorControl.java"


# static fields
.field private static final ACTION_MOTOR_DOWNING:Ljava/lang/String; = "oppo.intent.action.MOTOR_DOWNING"

.field private static final MOTOR_CONTROL_TAG:Ljava/lang/String; = "systemui_faceunlock"

.field private static final MOTOR_RECHECK_DELAY:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "KeyguardFaceUnlockMotorControl"


# instance fields
.field private mMotorDown:Z

.field private mMotorManager:Landroid/os/MotorManager;

.field private mMotorStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRecheckTask:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$1;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mRecheckTask:Ljava/lang/Runnable;

    .line 48
    new-instance p1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl$2;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorStateReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mContext:Landroid/content/Context;

    const-string v0, "motor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/MotorManager;

    check-cast p1, Landroid/os/MotorManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorManager:Landroid/os/MotorManager;

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorManager:Landroid/os/MotorManager;

    invoke-virtual {p1}, Landroid/os/MotorManager;->getMotorStateBySystemApp()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 74
    :goto_1
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorDown:Z

    .line 78
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oppo.intent.action.MOTOR_DOWNING"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method


# virtual methods
.method public downMotor()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorManager:Landroid/os/MotorManager;

    if-nez v0, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorDown:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorDown:Z

    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockMotorControl"

    const-string v2, "downMotor"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorManager:Landroid/os/MotorManager;

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v0, v1}, Landroid/os/MotorManager;->downMotorBySystemApp(Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mRecheckTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public upMotor()V
    .locals 3

    .line 104
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorManager:Landroid/os/MotorManager;

    if-nez v0, :cond_1

    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorDown:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorDown:Z

    const-string v0, "Keyguard"

    const-string v1, "KeyguardFaceUnlockMotorControl"

    const-string v2, "upMotor"

    .line 115
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mMotorManager:Landroid/os/MotorManager;

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v0, v1}, Landroid/os/MotorManager;->upMotorBySystemApp(Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mRecheckTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->sWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockMotorControl;->mRecheckTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
