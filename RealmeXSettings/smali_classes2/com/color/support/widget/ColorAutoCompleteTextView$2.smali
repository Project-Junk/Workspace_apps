.class Lcom/color/support/widget/ColorAutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "ColorAutoCompleteTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorAutoCompleteTextView;->animateToHideBackground()V
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

    .line 693
    iput-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView$2;->this$0:Lcom/color/support/widget/ColorAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/color/support/widget/ColorAutoCompleteTextView$2;->this$0:Lcom/color/support/widget/ColorAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->access$102(Lcom/color/support/widget/ColorAutoCompleteTextView;I)I

    .line 697
    iget-object p1, p0, Lcom/color/support/widget/ColorAutoCompleteTextView$2;->this$0:Lcom/color/support/widget/ColorAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorAutoCompleteTextView;->invalidate()V

    return-void
.end method
