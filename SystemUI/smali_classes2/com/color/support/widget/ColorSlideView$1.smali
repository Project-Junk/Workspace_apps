.class Lcom/color/support/widget/ColorSlideView$1;
.super Ljava/lang/Object;
.source "ColorSlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorSlideView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorSlideView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSlideView;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideView$1;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideView$1;->this$0:Lcom/color/support/widget/ColorSlideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/color/support/widget/ColorSlideView;->access$002(Lcom/color/support/widget/ColorSlideView;I)I

    return-void
.end method