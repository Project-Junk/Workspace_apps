.class Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;
.super Ljava/lang/Object;
.source "ColorSectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->releaseAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;


# direct methods
.method constructor <init>(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const-string v1, "radiusOut"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$302(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 600
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const-string v1, "radiusIn"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$102(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 601
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const-string v1, "thumbShadowRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$702(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)I

    .line 602
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const-string v1, "backgroundRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$002(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 603
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    .line 604
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 605
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$2100(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)I

    move-result p1

    .line 606
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$6;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1700(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V

    :cond_0
    return-void
.end method
