.class Lcolor/support/v7/internal/widget/ColorSpinner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorSpinner.java"


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

.field final synthetic val$endValue:F


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/ColorSpinner;F)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$2;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iput p2, p0, Lcolor/support/v7/internal/widget/ColorSpinner$2;->val$endValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 602
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorSpinner$2;->this$0:Lcolor/support/v7/internal/widget/ColorSpinner;

    iget p0, p0, Lcolor/support/v7/internal/widget/ColorSpinner$2;->val$endValue:F

    invoke-static {p1, p0}, Lcolor/support/v7/internal/widget/ColorSpinner;->access$200(Lcolor/support/v7/internal/widget/ColorSpinner;F)V

    return-void
.end method
