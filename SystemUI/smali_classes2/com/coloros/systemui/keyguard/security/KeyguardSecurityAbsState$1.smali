.class Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityAbsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

.field final synthetic val$force:Z

.field final synthetic val$isToAppear:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;ZLandroid/view/View;Z)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$isToAppear:Z

    iput-object p3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$view:Landroid/view/View;

    iput-boolean p4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$force:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 115
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$isToAppear:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$view:Landroid/view/View;

    instance-of v0, p1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lcom/android/keyguard/EmergencyButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/EmergencyButton;->setNeedUpdateToVisible(Z)V

    .line 118
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$force:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$isToAppear:Z

    if-nez p1, :cond_1

    .line 119
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$view:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 104
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$isToAppear:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$view:Landroid/view/View;

    instance-of v1, p1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_0

    .line 105
    check-cast p1, Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/EmergencyButton;->setNeedUpdateToVisible(Z)V

    .line 107
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$force:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$isToAppear:Z

    if-eqz p1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
