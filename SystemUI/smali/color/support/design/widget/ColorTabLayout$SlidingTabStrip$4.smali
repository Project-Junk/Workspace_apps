.class Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorTabLayout.java"


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;I)V
    .locals 0

    .line 2374
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;->this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iput p2, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2377
    iget-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;->this$1:Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;

    iget p0, p0, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip$4;->val$position:I

    iput p0, p1, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/4 p0, 0x0

    .line 2378
    iput p0, p1, Lcolor/support/design/widget/ColorTabLayout$SlidingTabStrip;->mSelectionOffset:F

    return-void
.end method
