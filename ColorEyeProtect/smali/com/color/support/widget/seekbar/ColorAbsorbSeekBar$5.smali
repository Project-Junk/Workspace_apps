.class Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# direct methods
.method constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const-string v1, "radiusIn"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->c(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const-string v1, "radiusOut"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->d(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const-string v1, "thumbShadowRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;I)I

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const-string v1, "backgroundRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->b(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F

    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$5;->a:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void
.end method
