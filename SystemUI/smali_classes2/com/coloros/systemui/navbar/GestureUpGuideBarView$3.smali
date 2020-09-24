.class Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;
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

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/widget/ImageView;I)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    iput-object p2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$rotation:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 590
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 591
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 592
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 593
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->onTouchUpOrCancel()V

    .line 594
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->access$100(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 582
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 583
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 584
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->onTouchUpOrCancel()V

    .line 585
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->access$100(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 575
    iget-object p1, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->this$0:Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    iget v2, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$rotation:I

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->access$000(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object p0, p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView$3;->val$animView:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
