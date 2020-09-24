.class Lcom/android/internal/telephony/euicc/EuiccCardController$11;
.super Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;
.source "EuiccCardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccCardController;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
        "Landroid/telephony/euicc/EuiccRulesAuthTable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field final synthetic val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/euicc/EuiccCardController;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    const-string v0, "getRulesAuthTable callback onException: "

    .line 739
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->this$0:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$500(Lcom/android/internal/telephony/euicc/EuiccCardController;Ljava/lang/Throwable;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "getRulesAuthTable callback failure."

    .line 742
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Landroid/telephony/euicc/EuiccRulesAuthTable;)V
    .locals 2

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->val$callback:Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;->onComplete(ILandroid/telephony/euicc/EuiccRulesAuthTable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "getRulesAuthTable callback failure."

    .line 732
    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController;->access$400(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 726
    check-cast p1, Landroid/telephony/euicc/EuiccRulesAuthTable;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccCardController$11;->onResult(Landroid/telephony/euicc/EuiccRulesAuthTable;)V

    return-void
.end method
