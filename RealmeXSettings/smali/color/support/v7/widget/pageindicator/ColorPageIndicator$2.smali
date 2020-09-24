.class Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorPageIndicator.java"


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

    .line 221
    iput-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 224
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 225
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$000(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 226
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$600(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 227
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$702(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z

    .line 228
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$902(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z

    .line 229
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-virtual {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->invalidate()V

    .line 231
    :cond_0
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$1002(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 237
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$002(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z

    .line 238
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$102(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;F)F

    .line 239
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;->this$0:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;

    invoke-static {p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->access$302(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;F)F

    return-void
.end method
