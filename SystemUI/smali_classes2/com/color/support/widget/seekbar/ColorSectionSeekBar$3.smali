.class Lcom/color/support/widget/seekbar/ColorSectionSeekBar$3;
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

    .line 240
    iput-object p1, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$3;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/color/support/widget/seekbar/ColorSectionSeekBar$3;->this$0:Lcom/color/support/widget/seekbar/ColorSectionSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/color/support/widget/seekbar/ColorSectionSeekBar;->access$702(Lcom/color/support/widget/seekbar/ColorSectionSeekBar;I)I

    return-void
.end method
