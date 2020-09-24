.class public abstract Lcom/color/support/widget/ColorSlideDeleteAnimation;
.super Ljava/lang/Object;
.source "ColorSlideDeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0xa

.field private static final ITEM_VIEW_DURATION:I = 0x190

.field private static final SLIDE_VIEW_DURATION:I = 0x14a


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mItemViewAnimator:Landroid/animation/ObjectAnimator;

.field private mSlideView:Landroid/view/View;

.field private mSlideViewAnimator:Landroid/animation/ValueAnimator;

.field private mWrapper:Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideView:Landroid/view/View;

    const/4 p1, 0x2

    .line 58
    new-array p2, p1, [I

    const/4 v0, 0x0

    aput p3, p2, v0

    const/4 p3, 0x1

    aput p4, p2, p3

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x14a

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    const/high16 p4, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v3, v2, v1, p4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/color/support/widget/ColorSlideDeleteAnimation$1;

    invoke-direct {v4, p0}, Lcom/color/support/widget/ColorSlideDeleteAnimation$1;-><init>(Lcom/color/support/widget/ColorSlideDeleteAnimation;)V

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    new-instance p2, Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;

    iget-object v4, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideView:Landroid/view/View;

    invoke-direct {p2, v4}, Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mWrapper:Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;

    .line 69
    iget-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mWrapper:Lcom/color/support/widget/ColorSlideDeleteAnimation$ViewWrapper;

    new-array p1, p1, [I

    aput p5, p1, v0

    aput p6, p1, p3

    const-string p3, "height"

    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v3, v2, v1, p4}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 72
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 73
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/color/support/widget/ColorSlideDeleteAnimation$2;

    invoke-direct {p2, p0}, Lcom/color/support/widget/ColorSlideDeleteAnimation$2;-><init>(Lcom/color/support/widget/ColorSlideDeleteAnimation;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 96
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mItemViewAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorSlideDeleteAnimation;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mSlideView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public abstract itemViewDelete()V
.end method

.method public startAnimation()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
