.class public Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;
.super Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;
.source "KeyguardFaceUnlockViewControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFaceUnlockViewControl"


# instance fields
.field protected mMainHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 32
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;->mMainHandler:Landroid/os/Handler;

    .line 34
    invoke-static {}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->isSupportFrontCameraAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->getStartAnimAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$1;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;)V

    .line 48
    sget-object v2, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;->sWorkerHandler:Landroid/os/Handler;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    invoke-static {}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->getStopAnimAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl$2;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;)V

    .line 61
    sget-object p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;->sWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method protected execInMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockViewControl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
