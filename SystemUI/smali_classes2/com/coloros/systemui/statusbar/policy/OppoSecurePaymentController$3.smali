.class Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;
.super Ljava/lang/Object;
.source "OppoSecurePaymentController.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->updateTranslatePaymentIcon(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

.field final synthetic val$setText1:Z

.field final synthetic val$textId1:I

.field final synthetic val$textId2:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;ZII)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$setText1:Z

    iput p3, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$textId1:I

    iput p4, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$textId2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 359
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$textId2:I

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$textId2:I

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

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

    .line 349
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$setText1:Z

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;->val$textId1:I

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    :cond_0
    return-void
.end method
