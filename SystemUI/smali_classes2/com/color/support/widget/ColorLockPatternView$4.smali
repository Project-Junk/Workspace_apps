.class Lcom/color/support/widget/ColorLockPatternView$4;
.super Ljava/lang/Object;
.source "ColorLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLockPatternView;->startLineEndAnimation(Lcom/color/support/widget/ColorLockPatternView$CellState;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLockPatternView;

.field final synthetic val$startX:F

.field final synthetic val$startY:F

.field final synthetic val$state:Lcom/color/support/widget/ColorLockPatternView$CellState;

.field final synthetic val$targetX:F

.field final synthetic val$targetY:F


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$CellState;FFFF)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$4;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    iput-object p2, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$state:Lcom/color/support/widget/ColorLockPatternView$CellState;

    iput p3, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$startX:F

    iput p4, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$targetX:F

    iput p5, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$startY:F

    iput p6, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$targetY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 795
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 796
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$state:Lcom/color/support/widget/ColorLockPatternView$CellState;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$startX:F

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$targetX:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndX:F

    .line 797
    iget v2, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$startY:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/color/support/widget/ColorLockPatternView$4;->val$targetY:F

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Lcom/color/support/widget/ColorLockPatternView$CellState;->lineEndY:F

    .line 798
    iget-object p0, p0, Lcom/color/support/widget/ColorLockPatternView$4;->this$0:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    return-void
.end method
