.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockFillLightCtrl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->getBrightnessAnim(FFJ)Landroid/animation/ValueAnimator;
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

    .line 295
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$800(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$900(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 300
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$1000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 302
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$1100(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$800(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Lcom/coloros/systemui/keyguard/face/view/KeyguardFaceFillLightView;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$4;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$1000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KeyguardFaceUnlockFillLightCtrl"

    const-string p1, "brightness anim, update view fails"

    .line 304
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
