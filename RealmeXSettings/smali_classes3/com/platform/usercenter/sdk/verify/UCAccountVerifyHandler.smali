.class public abstract Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;
.super Lcom/platform/usercenter/common/lib/utils/WeakHandler;
.source "UCAccountVerifyHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Lcom/platform/usercenter/common/lib/utils/WeakHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/platform/usercenter/common/lib/utils/WeakHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private handleResult(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "KEY_REQUEST_INTENT_EXTRA_VERIFY_RESULT"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;

    .line 54
    invoke-virtual {p0, p1}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;->handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V

    return-void
.end method

.method private handleResultHT(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "KEY_REQUEST_INTENT_EXTRA_VERIFY_RESULT_STR"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;->handleResult(Landroid/os/Bundle;)V

    return-void

    .line 41
    :cond_0
    invoke-static {v0}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->fromGson(Ljava/lang/String;)Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    move-result-object p1

    .line 43
    new-instance v7, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;

    iget-object v1, p1, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    iget-object v4, p1, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    iget-object v5, p1, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    iget-object v6, p1, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v7}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;->handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;->handleResultHT(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;->handleMessage(Landroid/os/Message;Landroid/content/Context;)V

    return-void
.end method

.method protected abstract handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V
.end method
