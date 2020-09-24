.class Lcom/color/support/widget/ColorSlideDeleteAnimation$1;
.super Ljava/lang/Object;
.source "ColorSlideDeleteAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSlideDeleteAnimation;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideDeleteAnimation;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$1;->this$0:Lcom/color/support/widget/ColorSlideDeleteAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideDeleteAnimation$1;->this$0:Lcom/color/support/widget/ColorSlideDeleteAnimation;

    invoke-static {p0}, Lcom/color/support/widget/ColorSlideDeleteAnimation;->access$000(Lcom/color/support/widget/ColorSlideDeleteAnimation;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
