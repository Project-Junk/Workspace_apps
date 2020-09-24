.class Lcom/color/support/widget/ColorLockPatternView$1;
.super Ljava/lang/Object;
.source "ColorLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLockPatternView;->startWrongAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLockPatternView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLockPatternView;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorLockPatternView;->access$002(Lcom/color/support/widget/ColorLockPatternView;F)F

    .line 549
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {p1}, Lcom/color/support/widget/ColorLockPatternView;->access$100(Lcom/color/support/widget/ColorLockPatternView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 550
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView;->access$200(Lcom/color/support/widget/ColorLockPatternView;)[[Lcom/color/support/widget/ColorLockPatternView$CellState;

    move-result-object v1

    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0}, Lcom/color/support/widget/ColorLockPatternView$Cell;->access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I

    move-result v0

    aget-object v0, v1, v0

    .line 551
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView;->access$000(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v1

    iput v1, v0, Lcom/color/support/widget/ColorLockPatternView$CellState;->innerCircleAlpha:F

    .line 552
    iget-object v1, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-static {v1}, Lcom/color/support/widget/ColorLockPatternView;->access$000(Lcom/color/support/widget/ColorLockPatternView;)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/color/support/widget/ColorLockPatternView$CellState;->needDrawCircle:Z

    goto :goto_0

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$1;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    return-void
.end method
