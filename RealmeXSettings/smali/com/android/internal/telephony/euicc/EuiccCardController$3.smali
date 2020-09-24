.class Lcom/android/internal/telephony/euicc/EuiccCardController$3;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
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

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/IDisableProfileCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$3;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$3;->val$callback:Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    const-string v0, "disableProfile callback onException: "

    .line 328
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$3;->val$callback:Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$3;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "disableProfile callback failure."

    .line 331
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 315
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$3;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 319
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$3;->val$callback:Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "disableProfile callback failure."

    .line 321
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
