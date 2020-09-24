.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorKeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->unLockFailedAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setInputEnabled(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setInputEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPatternView;->setInputEnabled(Z)V

    return-void
.end method
