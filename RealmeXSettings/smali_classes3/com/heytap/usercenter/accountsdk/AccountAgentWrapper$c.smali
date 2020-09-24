.class public final Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;
.super Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;
.source "AccountAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public c:Lcom/heytap/usercenter/accountsdk/AccountResult;

.field public final synthetic d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->g:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iput-object p3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    iput-object p4, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->g:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->c:Lcom/heytap/usercenter/accountsdk/AccountResult;

    .line 2
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->b:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getAccountEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    return-object p1
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->g:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getAccountResult(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AccountResult;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->c:Lcom/heytap/usercenter/accountsdk/AccountResult;

    .line 3
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->b:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getAccountEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v3, p1

    check-cast v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    .line 2
    invoke-super {p0, v3}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 3
    iget-object p1, v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->e:Landroid/content/Context;

    iget-object v0, v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->accountName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->ssoid:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->c:Lcom/heytap/usercenter/accountsdk/AccountResult;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->validTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    iget-object v0, p1, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->userName:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->c:Lcom/heytap/usercenter/accountsdk/AccountResult;

    .line 6
    invoke-virtual {v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->getOldUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->accountName:Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->c:Lcom/heytap/usercenter/accountsdk/AccountResult;

    .line 7
    invoke-virtual {v1}, Lcom/heytap/usercenter/accountsdk/AccountResult;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->avatarUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->c:Lcom/heytap/usercenter/accountsdk/AccountResult;

    .line 8
    invoke-virtual {v0}, Lcom/heytap/usercenter/accountsdk/AccountResult;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->g:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static {p1, v0, v3, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->access$000(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->g:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->e:Landroid/content/Context;

    iget-object v2, v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;->authToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static/range {v0 .. v5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->access$100(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;

    invoke-direct {p1}, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->isLogin:Z

    const-string v0, "1001"

    .line 14
    iput-object v0, p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultCode:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Lcom/heytap/usercenter/accountsdk/utils/StatusCodeUtil;->matchResultMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/heytap/usercenter/accountsdk/model/SignInAccount;->resultMsg:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-interface {v0, p1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqStart()V

    .line 4
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$c;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-interface {v0}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqLoading()V

    :cond_0
    return-void
.end method
