.class Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;
.super Ljava/lang/Object;
.source "DonutAnimatorCompatProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;


# direct methods
.method constructor <init>(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {v0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$000(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    move-result-wide v0

    iget-object v2, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {v2}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$100(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 58
    iget-object v2, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {v2}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$200(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    iget-object v2, v2, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 62
    :cond_1
    iget-object v2, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {v2, v0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$302(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;F)F

    .line 63
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {v0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$400(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    .line 64
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {v0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$300(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 65
    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$500(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    iget-object v0, v0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->mTarget:Landroid/view/View;

    iget-object p0, p0, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator$1;->this$0:Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;

    invoke-static {p0}, Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;->access$600(Lcolor/support/v4/animation/DonutAnimatorCompatProvider$DonutFloatValueAnimator;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
