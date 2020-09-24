.class public Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;
.super Ljava/lang/Object;
.source "AccountAgentWrapper.java"

# interfaces
.implements Lcom/heytap/usercenter/accountsdk/AccountAgentInterface;


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;
    }
.end annotation


# instance fields
.field public mLocalReqHandlerRef:Landroid/os/Handler;

.field public mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->postReqAccountInfoCache(Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->handleLoginMessage(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->postReqAccountInfoResult(Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method

.method public static getUserCenterVersionCode(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getVersionCode(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    if-gez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    return p1
.end method

.method private handleLoginMessage(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/c/a/f;

    if-eqz p1, :cond_0

    .line 1068
    iget v0, p1, Lcom/c/a/f;->a:I

    const v1, 0x1c9c769

    if-ne v0, v1, :cond_0

    .line 2050
    iget-object v4, p1, Lcom/c/a/f;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    .line 3
    invoke-direct/range {v2 .. v7}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    new-instance p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {p1}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    const-string p2, "1002"

    .line 6
    iput-object p2, p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 8
    invoke-interface {p4, p1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private isMultiAccountVersion(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0xe6

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSingleUserVersion(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    if-gez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private jumpToUserCenter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterFirstinXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extra_action_appinfo_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    .line 6
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return-void
.end method

.method private postReqAccountInfoCache(Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/heytap/usercenter/accountsdk/model/AccountEntity;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    if-eqz p2, :cond_2

    .line 2
    iget-object v1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    :cond_0
    iget-object v1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    const-string v1, "2000"

    .line 5
    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 7
    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    .line 8
    iget-object v1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->token:Ljava/lang/String;

    .line 9
    iget-object p2, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->deviceId:Ljava/lang/String;

    iput-object p2, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->deviceId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->toJson()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->jsonString:Ljava/lang/String;

    .line 11
    invoke-interface {p3, v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    const-string p1, "2001"

    .line 13
    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 15
    invoke-interface {p3, v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    return-void
.end method

.method private postReqAccountInfoResult(Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
            "Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;",
            ">;",
            "Lcom/heytap/usercenter/accountsdk/model/AccountEntity;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p2}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_0

    .line 3
    iput-boolean v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    const-string p1, "1002"

    .line 4
    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    iget-object p4, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->data:Ljava/lang/Object;

    if-nez p4, :cond_1

    .line 7
    invoke-direct {p0, p1, p3, p5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->postReqAccountInfoCache(Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    .line 8
    iput-boolean p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    const-string p4, "1000"

    .line 9
    iput-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 10
    invoke-static {p4}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 11
    iget-object p4, p3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    iput-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->token:Ljava/lang/String;

    .line 12
    iget-object p4, p3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->deviceId:Ljava/lang/String;

    iput-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->deviceId:Ljava/lang/String;

    .line 13
    iget-object p4, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->data:Ljava/lang/Object;

    check-cast p4, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iput-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    .line 14
    iget-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iget-object p4, p4, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->ssoid:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 15
    iget-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iget-object v1, p3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    iput-object v1, p4, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->ssoid:Ljava/lang/String;

    .line 16
    :cond_2
    iget-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    add-long/2addr v1, v3

    iput-wide v1, p4, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->validTime:J

    .line 18
    iget-object p2, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->data:Ljava/lang/Object;

    check-cast p2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iget-object p2, p2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->jsonString:Ljava/lang/String;

    iput-object p2, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->jsonString:Ljava/lang/String;

    .line 19
    iget-object p2, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iget-object p2, p2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->ssoid:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p2, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    iget-object p2, p2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->ssoid:Ljava/lang/String;

    :goto_0
    iget-object p3, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->userInfo:Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    invoke-static {p1, p2, p3}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;)V

    .line 20
    :goto_1
    invoke-interface {p5, v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_4
    iput-boolean v1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    .line 22
    iput-object p4, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->token:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 23
    iget-object p1, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    if-eqz p1, :cond_5

    .line 24
    iget-object p2, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->code:Ljava/lang/String;

    iput-object p2, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 25
    iget-object p1, p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->message:Ljava/lang/String;

    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p1, "1003"

    .line 26
    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 28
    :goto_2
    invoke-interface {p5, v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public static provideHandler(Landroid/os/Handler;I)Landroid/os/Handler;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$b;-><init>(Landroid/os/Looper;Landroid/os/Handler;I)V

    return-object v0
.end method

.method private reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/model/AccountEntity;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    if-nez p5, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/heytap/usercenter/helper/NoNetworkUtil;->isConnectNet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 2
    invoke-direct {p0, p1, p3, p5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->postReqAccountInfoCache(Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void

    .line 3
    :cond_1
    new-instance p2, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;

    invoke-direct {p2, p0, p1, p1, p5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p4, p1, p3

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 5
    :cond_2
    new-instance v7, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;Ljava/lang/String;)V

    invoke-static {p2, v7}, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol;->requestTask(Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method

.method public static sendExceptionMessage(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/heytap/usercenter/accountsdk/AccountResult;

    const v1, 0x1c9c76e

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 p1, 0x0

    const v0, 0x2625de8

    .line 2
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getExtraResultUsercenterBindInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/heytap/usercenter/accountsdk/AccountResult;->toJson(Lcom/heytap/usercenter/accountsdk/AccountResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendLoginSuccessMessage(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isVersionUpV320(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2, p1}, Lcom/a/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-static {p2, v1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserEntity(Landroid/content/Context;Lcom/c/a/f;)Lcom/c/a/f;

    move-result-object p2

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendUserMessage(Landroid/os/Handler;Lcom/c/a/f;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getAccountEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isVersionUpV320(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->deviceId:Ljava/lang/String;

    :cond_0
    return-object p2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    invoke-direct {v1}, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;-><init>()V

    .line 8
    iput-object v0, v1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->deviceId:Ljava/lang/String;

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/heytap/usercenter/accountsdk/AccountResult;

    invoke-direct {p1}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>()V

    .line 3
    invoke-virtual {p1, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setCanJump2Bind(Z)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setOldUserName(Ljava/lang/String;)V

    const p2, 0x1c9cf62

    .line 5
    invoke-virtual {p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultCode(I)V

    const-string p2, "usercenter has none account"

    .line 6
    invoke-virtual {p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultMsg(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x14b

    if-lt v0, v2, :cond_1

    .line 8
    invoke-static {p1}, Lcom/a/c;->a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/heytap/usercenter/accountsdk/AccountResult;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/AccountResult;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setCanJump2Bind(Z)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setOldUserName(Ljava/lang/String;)V

    const p1, 0x1c9cf65

    .line 12
    invoke-virtual {v0, p1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultCode(I)V

    const-string p1, "usercenter low version"

    .line 13
    invoke-virtual {v0, p1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->setResultMsg(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 2
    invoke-virtual {v6, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isVersionUpV320(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/a/a;->a(Lcom/heytap/usercenter/accountsdk/model/AccountEntity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-static {p1, p2}, Lcom/heytap/service/accountsdk/AccountService;->getTokenByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isVersionUpV320(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/a/a;->a(Lcom/heytap/usercenter/accountsdk/model/AccountEntity;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getNameByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-static {p1, p2}, Lcom/heytap/service/accountsdk/AccountService;->getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasUserCenterApp(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;Lcom/heytap/service/accountsdk/IStatistics;Lcom/platform/usercenter/common/constants/IEnvConstant;)V
    .locals 0

    return-void
.end method

.method public isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isVersionUpV320(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a;->a(Lcom/heytap/usercenter/accountsdk/model/AccountEntity;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserEntity(Landroid/content/Context;Lcom/c/a/f;)Lcom/c/a/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3050
    iget-object p2, p1, Lcom/c/a/f;->d:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4042
    iget-object p2, p1, Lcom/c/a/f;->c:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4068
    iget p1, p1, Lcom/c/a/f;->a:I

    const p2, 0x1c9c769

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_2
    invoke-static {p1, p2}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupportAccountCountry(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->reqAccountCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isVersionUpV320(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    if-gez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mVersionCode:I

    const/16 v0, 0x140

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public reqAccountCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public reqLogout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->jumpToUserCenter(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/heytap/service/accountsdk/AccountService;->jumpToFuc(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    const v0, 0x13130e8

    .line 1
    invoke-static {p2, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->provideHandler(Landroid/os/Handler;I)Landroid/os/Handler;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iput-object p2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    .line 4
    invoke-static {p1, p3}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->startReqSignInActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    new-instance p1, Lcom/c/a/f;

    const p3, 0x1c9cf63

    const-string v0, ""

    const-string v1, "usercenter is not exist!"

    invoke-direct {p1, p3, v1, v0, v0}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->sendUserMessage(Landroid/os/Handler;Lcom/c/a/f;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/heytap/service/accountsdk/AccountService;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public reqSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
            "Lcom/heytap/usercenter/accountsdk/model/SignInAccount;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqStart()V

    .line 2
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqLoading()V

    .line 3
    :cond_0
    new-instance v6, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    .line 4
    new-instance p3, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$e;

    invoke-direct {p3, p0, p1, p2, v6}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$e;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 5
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    const v0, 0x2625de8

    .line 1
    invoke-static {p2, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->provideHandler(Landroid/os/Handler;I)Landroid/os/Handler;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isVersionUpV320(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p1, p2}, Lcom/a/a;->a(Landroid/content/Context;Landroid/os/Handler;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->sendLoginSuccessMessage(Landroid/os/Handler;Landroid/content/Context;)V

    return-void

    .line 7
    :cond_1
    :try_start_0
    iput-object p2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p3, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->startReqTokenActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    new-instance p1, Lcom/c/a/f;

    const p3, 0x1c9cf63

    const-string v0, ""

    const-string v1, "usercenter is not exist!"

    invoke-direct {p1, p3, v1, v0, v0}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->sendUserMessage(Landroid/os/Handler;Lcom/c/a/f;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    .line 11
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-static {}, Lcom/heytap/service/accountsdk/AccountService;->initAgent()V

    .line 13
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/heytap/service/accountsdk/AccountService;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public sendSingleReqMessage(Lcom/c/a/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->mLocalReqHandlerRef:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->sendUserMessage(Landroid/os/Handler;Lcom/c/a/f;)V

    :cond_0
    return-void
.end method

.method public startAccountSettingActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->isSingleUserVersion(Landroid/content/Context;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->jumpToUserCenter(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lcom/heytap/service/accountsdk/AccountService;->jumpToFuc(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
