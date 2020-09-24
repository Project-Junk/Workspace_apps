.class Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;
.super Ljava/lang/Object;
.source "OppoSecurePaymentController.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->doTranslatePaymentIconAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    .line 390
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    .line 391
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$600(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 382
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    .line 383
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$600(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    return-void
.end method
