.class public final Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;
.super Landroid/os/Handler;
.source "AccountAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->reqSignInAccount(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

.field public final synthetic d:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->d:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iput-object p3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->c:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->d:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$d;->c:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->access$200(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V

    return-void
.end method
