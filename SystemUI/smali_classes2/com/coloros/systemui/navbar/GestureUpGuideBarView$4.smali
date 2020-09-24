.class Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GestureUpGuideBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->startAnimation(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

.field final synthetic val$animView:Landroid/widget/ImageView;

.field final synthetic val$showAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    iput-object p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$animView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$showAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$animView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 628
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$animView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 629
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 620
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$animView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 621
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$animView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 622
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$4;->val$animView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
