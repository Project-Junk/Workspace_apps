.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorKeyguardNumericView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->initUnlockFailedAnimSet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 356
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->clearTexts()V

    .line 357
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$800(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)Lcom/color/support/widget/ColorEditText;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->clearTexts()V

    .line 351
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$800(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)Lcom/color/support/widget/ColorEditText;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$3;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$700(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    return-void
.end method
