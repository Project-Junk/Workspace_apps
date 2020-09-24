.class Lcom/android/internal/telephony/euicc/EuiccCardController$7;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

.field final synthetic val$cardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$cardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$callback:Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    const-string v0, "resetMemory callback onException: "

    .line 546
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$callback:Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "resetMemory callback failure."

    .line 549
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 529
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2

    const-string p1, "EuiccCardController"

    const-string v0, "Request subscription info list refresh after reset memory."

    .line 532
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 535
    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$700(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$cardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v0

    .line 534
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 537
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$7;->val$callback:Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "resetMemory callback failure."

    .line 539
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
