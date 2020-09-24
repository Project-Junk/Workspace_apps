.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorKeyguardPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->initTransAnim()Landroid/animation/ValueAnimator;
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

    .line 153
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditTextBg:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->mEditTextBg:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
