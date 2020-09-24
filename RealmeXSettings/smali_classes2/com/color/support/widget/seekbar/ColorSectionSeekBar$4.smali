.class Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;
.super Ljava/lang/Object;
.source "ColorSectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->startMoveAnimation(FFFI)V
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

    .line 476
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$802(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 480
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1000(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$800(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v2}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1100(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v2

    const v3, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$902(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 481
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1202(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 482
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    .line 485
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1300(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result p1

    .line 486
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1400(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1000(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 487
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result p1

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1400(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1000(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v3

    sub-float/2addr v0, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 490
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 494
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1600(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result v0

    sub-int p1, v0, p1

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1700(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)V

    return-void
.end method
