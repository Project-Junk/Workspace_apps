.class Lcom/color/support/widget/ColorSlideView$4;
.super Lcom/color/support/widget/ColorDeleteAnimation;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideView;->startDeleteAnimation(Landroid/view/View;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideView;Landroid/view/View;FFFF)V
    .locals 6

    .line 1420
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/color/support/widget/ColorDeleteAnimation;-><init>(Landroid/view/View;FFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1423
    invoke-super {p0, p1}, Lcom/color/support/widget/ColorDeleteAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1424
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {p1}, Lcom/color/support/widget/ColorSlideView;->access$300(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1426
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSlideView;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorSlideView;->access$502(Lcom/color/support/widget/ColorSlideView;I)I

    .line 1427
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {p1}, Lcom/color/support/widget/ColorSlideView;->access$600(Lcom/color/support/widget/ColorSlideView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1428
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {p1}, Lcom/color/support/widget/ColorSlideView;->access$600(Lcom/color/support/widget/ColorSlideView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1430
    new-instance p1, Lcom/color/support/widget/ColorSlideView$4$1;

    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-direct {p1, p0, v0}, Lcom/color/support/widget/ColorSlideView$4$1;-><init>(Lcom/color/support/widget/ColorSlideView$4;Landroid/view/View;)V

    .line 1438
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
