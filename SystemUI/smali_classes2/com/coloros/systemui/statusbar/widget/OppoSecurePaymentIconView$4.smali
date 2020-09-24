.class Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;
.super Ljava/lang/Object;
.source "OppoSecurePaymentIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->initCheckedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 315
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCircleFadeAnimator onAnimationUpdate value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "SecurePaymentIconView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$902(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I

    .line 319
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 v2, 0x429a0000    # 77.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0xb2

    invoke-static {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$1002(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I

    .line 321
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$500(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)V

    .line 322
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->postInvalidate()V

    return-void
.end method
