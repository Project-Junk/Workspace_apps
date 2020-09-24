.class public Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;
.super Landroid/os/AsyncTask;
.source "AccountAgentWrapper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/heytap/usercenter/accountsdk/model/AccountEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->b:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->b:Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;

    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper;->getAccountEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/AccountAgentWrapper$a;->a([Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p1

    return-object p1
.end method
