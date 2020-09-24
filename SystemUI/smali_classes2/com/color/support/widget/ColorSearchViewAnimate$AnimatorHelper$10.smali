.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startCancelButtonExitValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1328
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1329
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1330
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;->onUpdate(ILandroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method
