.class Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;
.super Ljava/lang/Object;
.source "ColorSectionSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->initAnimator()V
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

    .line 227
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$200(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3fb56042    # 1.417f

    mul-float/2addr p1, v3

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$500(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$102(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 233
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$600(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$400(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3fdc6a7f    # 1.722f

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {v3}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$600(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$302(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;F)F

    .line 234
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$2;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->invalidate()V

    return-void
.end method
