.class public Lcom/oppo/usercenter/sdk/UCVerifyResultHelper;
.super Ljava/lang/Object;
.source "UCVerifyResultHelper.java"

# interfaces
.implements Lcom/platform/usercenter/annotation/NoProguard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendThirdCallbackCancelMsg(Ljava/lang/String;Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;

    invoke-direct {p1}, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;-><init>()V

    .line 39
    :cond_0
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    const/4 p0, 0x0

    .line 40
    iput-boolean p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    const-string p0, ""

    .line 41
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    const-string p0, "VERIFY_RESULT_CODE_CANCEL"

    .line 42
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    .line 43
    invoke-static {p1, p2}, Lcom/oppo/usercenter/sdk/UCVerifyResultHelper;->sendThirdCallbackMsg(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V

    return-void
.end method

.method public static sendThirdCallbackFailedMsg(Ljava/lang/String;Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;

    invoke-direct {p1}, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;-><init>()V

    .line 28
    :cond_0
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    const/4 p0, 0x0

    .line 29
    iput-boolean p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    const-string p0, ""

    .line 30
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    const-string p0, "VERIFY_RESULT_CODE_FAILED"

    .line 31
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    .line 32
    invoke-static {p1, p2}, Lcom/oppo/usercenter/sdk/UCVerifyResultHelper;->sendThirdCallbackMsg(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V

    return-void
.end method

.method public static sendThirdCallbackMsg(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendThirdCallbackMsg result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_REQUEST_INTENT_EXTRA_VERIFY_RESULT"

    .line 60
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const v0, 0xd467a

    .line 65
    iput v0, p0, Landroid/os/Message;->what:I

    .line 67
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static sendThirdCallbackTokenInvalidMsg(Ljava/lang/String;Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V
    .locals 0

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;

    invoke-direct {p1}, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;-><init>()V

    .line 50
    :cond_0
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    const/4 p0, 0x0

    .line 51
    iput-boolean p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    const-string p0, ""

    .line 52
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    const-string p0, "VERIFY_RESULT_CODE_TOKEN_INVALID"

    .line 53
    iput-object p0, p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    .line 54
    invoke-static {p1, p2}, Lcom/oppo/usercenter/sdk/UCVerifyResultHelper;->sendThirdCallbackMsg(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;Landroid/os/Messenger;)V

    return-void
.end method
