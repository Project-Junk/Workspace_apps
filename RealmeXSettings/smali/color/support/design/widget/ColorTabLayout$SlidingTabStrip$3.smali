.class Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;
.super Ljava/lang/Object;
.source "ColorTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;IIII)V
    .locals 0

    .line 2365
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iput p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$startLeft:I

    iput p3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$targetLeft:I

    iput p4, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$startRight:I

    iput p5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 2368
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2369
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$startLeft:I

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$targetLeft:I

    .line 2370
    invoke-static {v1, v2, p1}, Lcolor/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v1

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$startRight:I

    iget v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$3;->val$targetRight:I

    .line 2371
    invoke-static {v2, v3, p1}, Lcolor/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result p1

    .line 2369
    invoke-virtual {v0, v1, p1}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method
