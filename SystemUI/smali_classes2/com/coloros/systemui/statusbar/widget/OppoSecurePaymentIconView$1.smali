.class Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;
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

    .line 230
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "SecurePaymentIconView"

    const-string v1, "onAnimationCancel"

    .line 256
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$102(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z

    .line 259
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$002(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I

    .line 260
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const v0, 0x7f11060f

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->postInvalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSymbolScaleAnimator onAnimationEnd 22 mMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDoRiskRecoveryAnimation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    .line 239
    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurePaymentIconView"

    const-string v1, "Statusbar"

    .line 238
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Z

    move-result p1

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$102(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;Z)Z

    .line 242
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1, v2}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$002(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;I)I

    .line 243
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const v3, 0x7f11060f

    invoke-virtual {p1, v3}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback onAnimationEnd mMode="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {v2}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;->onAnimationEnd()V

    .line 250
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->postInvalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p0, "Statusbar"

    const-string p1, "SecurePaymentIconView"

    const-string v0, "mSymbolScaleAnimator onAnimationStart"

    .line 233
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
