.class Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoSecurePaymentIconView.java"


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

    .line 284
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "SecurePaymentIconView"

    const-string v1, "onAnimationCancel"

    .line 306
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$602(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z

    .line 308
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$902(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I

    .line 309
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/16 p1, 0xff

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$1002(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "SecurePaymentIconView"

    const-string v1, "mCircleFadeAnimator onAnimationEnd"

    .line 294
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$602(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z

    .line 296
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 297
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const v0, 0x7f110610

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const v0, 0x7f11060f

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    .line 301
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$800(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "SecurePaymentIconView"

    const-string v1, "mCircleFadeAnimator onAnimationStart"

    .line 287
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$602(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z

    .line 289
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$702(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z

    return-void
.end method
