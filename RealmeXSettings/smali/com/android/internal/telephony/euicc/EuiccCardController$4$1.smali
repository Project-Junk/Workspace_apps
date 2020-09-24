.class Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController$4;->onResult(Landroid/service/euicc/EuiccProfileInfo;)V
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
.field final synthetic this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$4;

.field final synthetic val$profile:Landroid/service/euicc/EuiccProfileInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController$4;Landroid/service/euicc/EuiccProfileInfo;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->val$profile:Landroid/service/euicc/EuiccProfileInfo;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "switchToProfile callback onException: "

    .line 380
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    iget-object v1, v1, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->val$profile:Landroid/service/euicc/EuiccProfileInfo;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "switchToProfile callback failure."

    .line 383
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 367
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2

    .line 371
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->this$1:Lcom/android/internal/telephony/euicc/EuiccCardController$4;

    iget-object p1, p1, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;->val$profile:Landroid/service/euicc/EuiccProfileInfo;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "switchToProfile callback failure."

    .line 373
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
