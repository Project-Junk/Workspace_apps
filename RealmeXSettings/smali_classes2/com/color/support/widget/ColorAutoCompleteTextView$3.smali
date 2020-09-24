.class Lcom/color/support/widget/ColorAutoCompleteTextView$3;
.super Ljava/lang/Object;
.source "ColorAutoCompleteTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorAutoCompleteTextView;->animateToExpansionFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorAutoCompleteTextView;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView$3;->this$0:Lcom/color/support/widget/ColorAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView$3;->this$0:Lcom/color/support/widget/ColorAutoCompleteTextView;

    invoke-static {v0}, Lcom/color/support/widget/ColorAutoCompleteTextView;->access$200(Lcom/color/support/widget/ColorAutoCompleteTextView;)Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;

    move-result-object v0

    .line 719
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 718
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorCutoutDrawable$ColorCollapseTextHelper;->setExpansionFraction(F)V

    return-void
.end method
