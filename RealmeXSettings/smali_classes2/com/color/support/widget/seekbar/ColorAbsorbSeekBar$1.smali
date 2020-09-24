.class Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;
.super Ljava/lang/Object;
.source "ColorAbsorbSeekBar.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;


# direct methods
.method constructor <init>(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0

    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$000(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$002(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F

    .line 199
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    return-void

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$002(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;F)F

    .line 202
    iget-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->invalidate()V

    :cond_1
    return-void
.end method
