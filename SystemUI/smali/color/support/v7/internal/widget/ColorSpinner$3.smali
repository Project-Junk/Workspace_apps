.class Lcolor/support/v7/internal/widget/ColorSpinner$3;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner;->createIconRotateAnimation(FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/internal/widget/ColorSpinner;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$3;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$3;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$200(Lcolor/support/v7/internal/widget/ColorSpinner;F)V

    return-void
.end method
