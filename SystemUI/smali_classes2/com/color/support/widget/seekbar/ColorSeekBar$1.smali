.class Lcom/color/support/widget/seekbar/ColorSeekBar$1;
.super Ljava/lang/Object;
.source "ColorSeekBar.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/seekbar/ColorSeekBar;->initAnimation()V
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

    .line 241
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

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

    .line 244
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-static {v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$000(Lcom/color/support/widget/seekbar/ColorSeekBar;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getEndValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->access$002(Lcom/color/support/widget/seekbar/ColorSeekBar;F)F

    .line 246
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSeekBar$1;->this$0:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->invalidate()V

    :cond_0
    return-void
.end method
