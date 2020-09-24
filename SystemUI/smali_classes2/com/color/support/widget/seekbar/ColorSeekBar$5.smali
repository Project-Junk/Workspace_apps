.class Lcom/color/support/widget/seekbar/ColorSeekBar$5;
.super Ljava/lang/Object;
.source "ColorSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorSeekBar;->releaseAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;


# direct methods
.method constructor <init>(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const-string v1, "progress"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$202(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F

    .line 645
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const-string v1, "radiusIn"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$402(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F

    .line 646
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const-string v1, "radiusOut"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$602(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F

    .line 647
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const-string v1, "thumbShadowRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$1002(Lcom/color/support/widget/seekbar/ColorSeekBar;I)I

    .line 648
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const-string v1, "backgroundRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$102(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F

    .line 649
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    return-void
.end method
