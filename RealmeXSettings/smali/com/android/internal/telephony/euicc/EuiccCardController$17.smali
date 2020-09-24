.class Lcom/android/internal/telephony/euicc/EuiccCardController$17;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

.field final synthetic val$cardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->val$cardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    const-string v0, "loadBoundProfilePackage callback onException: "

    .line 1035
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "loadBoundProfilePackage callback failure."

    .line 1038
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1018
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->onResult([B)V

    return-void
.end method

.method public onResult([B)V
    .locals 3

    const-string v0, "EuiccCardController"

    const-string v1, "Request subscription info list refresh after install."

    .line 1021
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    .line 1024
    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$700(Lcom/android/internal/telephony/euicc/EuiccCardController;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->val$cardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    .line 1023
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$17;->val$callback:Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;->onComplete(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "loadBoundProfilePackage callback failure."

    .line 1028
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
