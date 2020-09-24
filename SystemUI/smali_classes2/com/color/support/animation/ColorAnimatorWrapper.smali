.class public Lcom/color/support/animation/ColorAnimatorWrapper;
.super Ljava/lang/Object;
.source "ColorAnimatorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallbackAdapter;,
        Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionBarTab:ColorAnimatorWrapper"


# instance fields
.field private final mAnimation:Landroid/animation/Animator;

.field private final mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    .line 50
    iput-object p2, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    return-void
.end method

.method private getTarget()Landroid/view/View;
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    instance-of v0, p0, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p0

    .line 94
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAnimation()Landroid/animation/Animator;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public initialize()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/color/support/animation/ColorAnimatorWrapper;->getTarget()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v2, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v2, v0}, Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;->initialize(Landroid/view/View;)V

    .line 73
    iget-object v2, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v2, v0}, Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getPivotXValue(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 74
    iget-object v2, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v2, v0}, Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getPivotYValue(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 75
    iget-object v2, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v2, v0}, Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getStartValue(Landroid/view/View;)F

    move-result v2

    .line 76
    iget-object v3, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mCallback:Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;

    invoke-interface {v3, v0}, Lcom/color/support/animation/ColorAnimatorWrapper$OnSetValuesCallback;->getEndValue(Landroid/view/View;)F

    move-result v0

    .line 77
    iget-object p0, p0, Lcom/color/support/animation/ColorAnimatorWrapper;->mAnimation:Landroid/animation/Animator;

    check-cast p0, Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :cond_1
    return-void
.end method
