.class Lcom/coloros/systemui/stackdivider/DividerMenuView$1;
.super Ljava/lang/Object;
.source "DividerMenuView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerMenuView;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

.field final synthetic val$isLandscape:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerMenuView;Z)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    iput-boolean p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->val$isLandscape:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "scaleXHolder"

    .line 173
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "scaleYHolder"

    .line 174
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 175
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$000(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setScaleX(F)V

    .line 176
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$000(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setScaleY(F)V

    .line 177
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$100(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setScaleX(F)V

    .line 178
    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {v1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$100(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setScaleY(F)V

    .line 179
    iget-boolean v1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->val$isLandscape:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$200(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$1;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    invoke-static {p0}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->access$200(Lcom/coloros/systemui/stackdivider/DividerMenuView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method
