.class Lcom/color/support/widget/ColorLoadProgress$1;
.super Ljava/lang/Object;
.source "ColorLoadProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLoadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorLoadProgress;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadProgress$1;->a:Lcom/color/support/widget/ColorLoadProgress;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/color/support/widget/ColorLoadProgress;->f:F

    .line 564
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadProgress$1;->a:Lcom/color/support/widget/ColorLoadProgress;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLoadProgress;->invalidate()V

    return-void
.end method
