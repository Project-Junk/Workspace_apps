.class Lcom/android/keyguard/base/ColorKeyguardCtrl$2;
.super Ljava/lang/Object;
.source "ColorKeyguardCtrl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/base/ColorKeyguardCtrl;->fadeOutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;


# direct methods
.method constructor <init>(Lcom/android/keyguard/base/ColorKeyguardCtrl;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    invoke-static {p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->access$000(Lcom/android/keyguard/base/ColorKeyguardCtrl;)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 495
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    invoke-static {p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->access$000(Lcom/android/keyguard/base/ColorKeyguardCtrl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 496
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    invoke-static {p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->access$000(Lcom/android/keyguard/base/ColorKeyguardCtrl;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 497
    iget-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->onVisibilityChanged(I)V

    .line 498
    iget-object p0, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$2;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/base/ColorKeyguardCtrl;->checkStatusBarClockVisibility(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
