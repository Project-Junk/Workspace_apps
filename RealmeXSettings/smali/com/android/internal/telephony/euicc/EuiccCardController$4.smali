.class Lcom/android/internal/telephony/euicc/EuiccCardController$4;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/service/euicc/EuiccProfileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

.field final synthetic val$card:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

.field final synthetic val$iccid:Ljava/lang/String;

.field final synthetic val$refresh:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccCard;Ljava/lang/String;Z)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$card:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$iccid:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$refresh:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    const-string v0, "getProfile in switchToProfile callback onException: "

    .line 394
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$callback:Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;->onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "switchToProfile callback failure."

    .line 397
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Landroid/service/euicc/EuiccProfileInfo;)V
    .locals 4

    .line 367
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$4$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccCardController$4;Landroid/service/euicc/EuiccProfileInfo;)V

    .line 388
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$card:Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$iccid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->val$refresh:Z

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$600(Lcom/android/internal/telephony/euicc/EuiccCardController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->switchToProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 364
    check-cast p1, Landroid/service/euicc/EuiccProfileInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$4;->onResult(Landroid/service/euicc/EuiccProfileInfo;)V

    return-void
.end method
