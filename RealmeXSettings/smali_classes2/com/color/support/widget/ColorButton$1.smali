.class Lcom/color/support/widget/ColorButton$1;
.super Ljava/lang/Object;
.source "ColorButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorButton;->animateToPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorButton;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorButton;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/color/support/widget/ColorButton$1;->this$0:Lcom/color/support/widget/ColorButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/color/support/widget/ColorButton$1;->this$0:Lcom/color/support/widget/ColorButton;

    const-string v1, "brightnessHolder"

    .line 213
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/color/support/widget/ColorButton;->access$002(Lcom/color/support/widget/ColorButton;F)F

    const-string v0, "expandHolder"

    .line 214
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/color/support/widget/ColorButton$1;->this$0:Lcom/color/support/widget/ColorButton;

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorButton;->access$102(Lcom/color/support/widget/ColorButton;I)I

    .line 216
    iget-object p1, p0, Lcom/color/support/widget/ColorButton$1;->this$0:Lcom/color/support/widget/ColorButton;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorButton;->invalidate()V

    return-void
.end method
