.class public final Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;
.super Ljava/lang/Object;
.source "AccountAgentWrapper.java"

# interfaces
.implements Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback<",
        "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
        "Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->f:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iput-object p2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->a:Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    iput-object p3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    iput-object p6, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReqFinish(Ljava/lang/Object;)V
    .locals 6

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    .line 2
    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->a:Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    if-eqz v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->f:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static/range {v0 .. v5}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->access$300(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/a/b;

    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v2}, Lcom/a/b;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onReqLoading()V
    .locals 0

    return-void
.end method

.method public final onReqStart()V
    .locals 0

    return-void
.end method
