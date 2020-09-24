.class Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;
.super Ljava/lang/Object;
.source "KeyguardSecurityAbsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatorWrapper"
.end annotation


# instance fields
.field private alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

.field private isForceHide:Z

.field private scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

.field private transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->view:Landroid/view/View;

    .line 64
    iput-boolean p3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->isForceHide:Z

    .line 65
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    .line 66
    iput-object p5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    .line 67
    iput-object p6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    return-void
.end method


# virtual methods
.method getScaleAlphaAnimator()Landroid/animation/Animator;
    .locals 11

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    if-nez v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->view:Landroid/view/View;

    iget v4, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->startValue:F

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v5, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->endValue:F

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v6, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->delay:J

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v8, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->duration:J

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->scaleOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-object v10, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-static/range {v2 .. v10}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->access$000(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v3, v3, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->startValue:F

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v4, v4, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->endValue:F

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v5, v5, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->delay:J

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v7, v7, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->duration:J

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-object v9, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->interpolator:Landroid/animation/TimeInterpolator;

    iget-boolean v10, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->isForceHide:Z

    invoke-virtual/range {v1 .. v10}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object p0

    .line 87
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 88
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getTranslationAlphaAnimator()Landroid/animation/Animator;
    .locals 11

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    if-nez v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->view:Landroid/view/View;

    iget v4, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->startValue:F

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v5, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->endValue:F

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v6, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->delay:J

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v8, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->duration:J

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->transOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-object v10, v0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual/range {v2 .. v10}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getTranslationYAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v3, v3, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->startValue:F

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v4, v4, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->endValue:F

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v5, v5, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->delay:J

    iget-object v7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-wide v7, v7, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->duration:J

    iget-object v9, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->alphaOp:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-object v9, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->interpolator:Landroid/animation/TimeInterpolator;

    iget-boolean v10, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->isForceHide:Z

    invoke-virtual/range {v1 .. v10}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object p0

    .line 76
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 77
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
