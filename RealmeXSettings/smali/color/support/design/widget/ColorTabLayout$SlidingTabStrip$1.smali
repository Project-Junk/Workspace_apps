.class Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;
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

.field final synthetic val$centerIndicatorWidth:I

.field final synthetic val$centerLeft:I

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;IIIIII)V
    .locals 0

    .line 2300
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iput p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$centerIndicatorWidth:I

    iput p3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$startRight:I

    iput p4, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$startLeft:I

    iput p5, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$centerLeft:I

    iput p6, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$targetRight:I

    iput p7, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 2303
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 2309
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$centerIndicatorWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$startRight:I

    iget v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$startLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, v3

    .line 2310
    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$centerLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2314
    iget v0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$centerIndicatorWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$targetRight:I

    iget v3, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$targetLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 2315
    iget v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->val$centerLeft:I

    int-to-float v2, v1

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    :goto_0
    add-int/2addr v0, p1

    .line 2318
    iget-object v1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$1;->this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1, v0}, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method
