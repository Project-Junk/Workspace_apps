.class Lcom/color/support/widget/ColorLockPatternView$8;
.super Ljava/lang/Object;
.source "ColorLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLockPatternView;->startInnerAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLockPatternView;

.field final synthetic val$cellState:Lcom/color/support/widget/ColorLockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$8;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    iput-object p2, p0, Lcom/color/support/widget/ColorLockPatternView$8;->val$cellState:Lcom/color/support/widget/ColorLockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView$8;->val$cellState:Lcom/color/support/widget/ColorLockPatternView$CellState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView$CellState;->innerCircleAlpha:F

    return-void
.end method
