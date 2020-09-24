.class Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;
.super Ljava/lang/Object;
.source "ColorBiometricDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$ColorBiometricDialogView$1()V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onDialogAnimatedIn()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    .line 120
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->access$000(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    .line 126
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->access$000(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$1$Bnaq_4fpkl8nph_atxE5oD58J4o;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$1$Bnaq_4fpkl8nph_atxE5oD58J4o;-><init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$1;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
