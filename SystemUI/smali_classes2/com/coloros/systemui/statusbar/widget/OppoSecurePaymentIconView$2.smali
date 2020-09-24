.class Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;
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

    .line 265
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSymbolScaleAnimator onAnimationUpdate value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "SecurePaymentIconView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$302(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)F

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$402(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)F

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$302(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)F

    .line 277
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$500(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;F)V

    .line 278
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$2;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->postInvalidate()V

    return-void
.end method
