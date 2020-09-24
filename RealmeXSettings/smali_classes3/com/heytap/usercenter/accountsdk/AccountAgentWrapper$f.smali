.class public final Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;
.super Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;
.source "AccountAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->reqAccountInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

.field public final synthetic e:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;->e:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iput-object p3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;-><init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;->e:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$f;->d:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static {v0, v1, p1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->access$000(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;Lcom/heytap/usercenter/accountsdk/model/AccountEntity;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method
