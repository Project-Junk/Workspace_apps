.class Lcom/color/support/widget/ColorLockPatternView$5;
.super Ljava/lang/Object;
.source "ColorLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLockPatternView;->a(Lcom/color/support/widget/ColorLockPatternView$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorLockPatternView$b;

.field final synthetic b:Lcom/color/support/widget/ColorLockPatternView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLockPatternView;Lcom/color/support/widget/ColorLockPatternView$b;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$5;->b:Lcom/color/support/widget/ColorLockPatternView;

    iput-object p2, p0, Lcom/color/support/widget/ColorLockPatternView$5;->a:Lcom/color/support/widget/ColorLockPatternView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/color/support/widget/ColorLockPatternView$5;->a:Lcom/color/support/widget/ColorLockPatternView$b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/color/support/widget/ColorLockPatternView$b;->h:F

    .line 771
    iget-object p1, p0, Lcom/color/support/widget/ColorLockPatternView$5;->b:Lcom/color/support/widget/ColorLockPatternView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorLockPatternView;->invalidate()V

    return-void
.end method
