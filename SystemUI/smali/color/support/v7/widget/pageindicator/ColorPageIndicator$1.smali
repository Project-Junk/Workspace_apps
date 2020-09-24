.class Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;
.super Ljava/lang/Object;
.source "ColorPageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 195
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 196
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$000(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 197
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$100(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F

    move-result v0

    iget-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$200(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 198
    iget-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$300(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F

    move-result v1

    iget-object v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$400(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 199
    iget-object v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$100(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F

    move-result v2

    mul-float/2addr v0, p1

    sub-float/2addr v2, v0

    .line 200
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v3}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$600(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$600(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 203
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$300(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F

    move-result v0

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 204
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$600(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 205
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$600(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 207
    :cond_1
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$700(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 208
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$800(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 211
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iput v2, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 214
    :cond_3
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 215
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 217
    :goto_0
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->invalidate()V

    :cond_4
    return-void
.end method
