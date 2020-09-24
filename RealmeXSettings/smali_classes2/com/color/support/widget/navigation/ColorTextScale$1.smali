.class Lcom/color/support/widget/navigation/ColorTextScale$1;
.super Ljava/lang/Object;
.source "ColorTextScale.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/navigation/ColorTextScale;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorTextScale;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorTextScale;Landroid/widget/TextView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorTextScale$1;->this$0:Lcom/color/support/widget/navigation/ColorTextScale;

    iput-object p2, p0, Lcom/color/support/widget/navigation/ColorTextScale$1;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorTextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 81
    iget-object v0, p0, Lcom/color/support/widget/navigation/ColorTextScale$1;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method
