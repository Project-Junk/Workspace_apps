.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startCancelButtonEnterValueAnimator()V
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

    .line 1368
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$13;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1371
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1372
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$13;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$1000(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1377
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1378
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$13;->this$1:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$900(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
