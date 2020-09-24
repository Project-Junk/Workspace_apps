.class Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2$1;
.super Ljava/lang/Object;
.source "OppoSecurePaymentController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->onProcessDied(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2$1;->this$1:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2$1;->this$1:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->exitRiskDetection()V

    .line 126
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2$1;->this$1:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    const/16 v0, 0x3ed

    invoke-static {p0, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$200(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)V

    return-void
.end method
