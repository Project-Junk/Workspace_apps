.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorKeyguardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->unLockFailedAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$2;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->clearTexts()V

    return-void
.end method
