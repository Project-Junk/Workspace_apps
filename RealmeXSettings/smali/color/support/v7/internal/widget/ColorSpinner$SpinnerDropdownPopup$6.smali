.class Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$6;
.super Ljava/lang/Object;
.source "ColorSpinner.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->createShowAnimatorset()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$6;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 931
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 932
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup$6;->this$1:Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;

    iget-object v0, v0, Lcolor/support/v7/internal/widget/ColorSpinner$SpinnerDropdownPopup;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    invoke-static {v0, p1}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$200(Lcolor/support/v7/internal/widget/ColorSpinner;F)V

    return-void
.end method
