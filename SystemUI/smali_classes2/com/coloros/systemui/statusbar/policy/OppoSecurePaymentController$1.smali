.class Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;
.super Landroid/os/Handler;
.source "OppoSecurePaymentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;
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

    .line 76
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$100(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$000(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$200(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)V

    return-void
.end method
