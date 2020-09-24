.class Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;
.super Ljava/lang/Object;
.source "ColorAbsorbSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 251
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$4;->this$0:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->access$802(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;I)I

    return-void
.end method
