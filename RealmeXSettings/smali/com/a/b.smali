.class public final Lcom/a/b;
.super Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;
.source "AccountAgentWrapper.java"


# instance fields
.field public final synthetic c:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

.field public final synthetic d:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/a/b;->d:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;

    iput-object p3, p0, Lcom/a/b;->c:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    iget-object p1, p1, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->f:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v3, p1

    check-cast v3, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    .line 2
    invoke-super {p0, v3}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/a/b;->d:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;

    iget-object v0, p1, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->f:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p1, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/a/b;->c:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    iget-object v4, p1, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static/range {v0 .. v5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->access$300(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method
