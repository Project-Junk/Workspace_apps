.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorKeyguardPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->unLockFailedAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->clearTexts()V

    .line 124
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->clearTexts()V

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->access$000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;)V

    return-void
.end method
