.class public Lcom/color/support/widget/ColorDeleteAnimation;
.super Ljava/lang/Object;
.source "ColorDeleteAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private final mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mEnded:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field public mView:Landroid/view/View;

.field public mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/color/support/widget/ColorDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;FFFF)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mEnded:Z

    .line 82
    iput-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mView:Landroid/view/View;

    .line 83
    iput p3, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mStartDx:F

    .line 84
    iput p4, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mStartDy:F

    .line 85
    iput p5, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mTargetX:F

    .line 86
    iput p6, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mTargetY:F

    .line 87
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p3, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    .line 88
    new-array p4, p3, [F

    const/4 p6, 0x0

    aput p6, p4, v0

    const/4 v0, 0x1

    aput p5, p4, v0

    const-string p5, "translationX"

    invoke-static {p1, p5, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 91
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    const-string p4, "alpha"

    invoke-static {p2, p4, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 97
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const p2, 0x3e083127    # 0.133f

    const p3, 0x3e99999a    # 0.3f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p2, p6, p3, p4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    iget-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFFF)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mEnded:Z

    .line 112
    iput-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 113
    iput p2, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mStartDx:F

    .line 114
    iput p3, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mStartDy:F

    .line 115
    iput p4, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mTargetX:F

    .line 116
    iput p5, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mTargetY:F

    .line 117
    iget-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p3, 0x0

    aput p3, p2, v0

    const/4 p5, 0x1

    aput p4, p2, p5

    const-string p4, "translationX"

    invoke-static {p1, p4, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 118
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 119
    iget-object p2, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 120
    iget-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const p2, 0x3e083127    # 0.133f

    const p4, 0x3e99999a    # 0.3f

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p2, p3, p4, p5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mEnded:Z

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

.method public setDuration(J)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public start()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
