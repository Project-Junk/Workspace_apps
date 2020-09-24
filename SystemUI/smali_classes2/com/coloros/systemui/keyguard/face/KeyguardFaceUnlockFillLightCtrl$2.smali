.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockFillLightCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$300(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$400(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$500(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    goto/16 :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$600(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->isFakeAppLayerComposed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    .line 125
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$600(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAuthSucceed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    .line 126
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$600(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    .line 127
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$600(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$400(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$400(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$200(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$400(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$2;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$700(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    :cond_3
    :goto_0
    return-void
.end method
