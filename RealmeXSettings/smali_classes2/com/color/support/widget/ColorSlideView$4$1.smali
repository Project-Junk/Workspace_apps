.class Lcom/color/support/widget/ColorSlideView$4$1;
.super Lcom/color/support/widget/ColorSlideCollapseAnimation;
.source "ColorSlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/color/support/widget/ColorSlideView$4;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideView$4;Landroid/view/View;)V
    .locals 0

    .line 1430
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView$4$1;->this$1:Lcom/color/support/widget/ColorSlideView$4;

    invoke-direct {p0, p2}, Lcom/color/support/widget/ColorSlideCollapseAnimation;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onItemDelete()V
    .locals 2

    .line 1434
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$4$1;->this$1:Lcom/color/support/widget/ColorSlideView$4;

    iget-object v0, v0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorSlideView;->access$402(Lcom/color/support/widget/ColorSlideView;Z)Z

    .line 1435
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideView$4$1;->this$1:Lcom/color/support/widget/ColorSlideView$4;

    iget-object v0, v0, Lcom/color/support/widget/ColorSlideView$4;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-static {v0}, Lcom/color/support/widget/ColorSlideView;->access$300(Lcom/color/support/widget/ColorSlideView;)Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/color/support/widget/ColorSlideView$OnDeleteItemClickListener;->onDeleteItemClick()V

    return-void
.end method
