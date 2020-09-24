.class Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;
.super Landroid/app/IProcessObserver$Stub;
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

    .line 114
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$300(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$400(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.coloros.securepay died uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Statusbar"

    const-string v0, "SecurePaymentController"

    invoke-static {p2, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    iget-object p1, p1, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2$1;-><init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->access$402(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)I

    :cond_0
    return-void
.end method
