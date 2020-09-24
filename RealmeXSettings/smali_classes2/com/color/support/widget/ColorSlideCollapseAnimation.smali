.class public abstract Lcom/color/support/widget/ColorSlideCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "ColorSlideCollapseAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final ANIM_DURATION:I = 0xc8


# instance fields
.field mInitialHeight:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    .line 54
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mInitialHeight:I

    const p1, 0x3e083127    # 0.133f

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideCollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0xc8

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorSlideCollapseAnimation;->setDuration(J)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/color/support/widget/ColorSlideCollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    .line 77
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 79
    :cond_0
    iget-object p2, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mInitialHeight:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSlideCollapseAnimation;->onItemDelete()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public abstract onItemDelete()V
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
