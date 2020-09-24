.class Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;
.super Ljava/lang/Object;
.source "ColorSectionSeekBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 499
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 519
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1800(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStopTrackingTouch()V

    .line 521
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1802(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 507
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1800(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->onStopTrackingTouch()V

    .line 509
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1802(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;Z)Z

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 512
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$1902(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;Z)Z

    .line 513
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$5;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-static {p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$900(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$2000(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;FZ)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
