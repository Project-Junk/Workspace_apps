.class public final Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$a;
.super Lcom/heytap/accountsdk/net/security/callback/Callback;
.source "AccountNameProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol;->requestTask(Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/accountsdk/net/security/callback/Callback<",
        "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
        "Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;


# direct methods
.method public constructor <init>(Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$a;->a:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBefore(Lokhttp3/Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/heytap/accountsdk/net/security/callback/Callback;->onBefore(Lokhttp3/Request;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$a;->a:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqStart()V

    :cond_0
    return-void
.end method

.method public final onError(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    .line 2
    iget-object p2, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$a;->a:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqFinish(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/heytap/usercenter/accountsdk/http/AccountNameProtocol$a;->a:Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/heytap/usercenter/accountsdk/http/AccountNameTask$onReqAccountCallback;->onReqLoading()V

    .line 3
    :cond_0
    new-instance p2, Lcom/a/d;

    invoke-direct {p2}, Lcom/a/d;-><init>()V

    .line 4
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->parseNetworkResponse([B)Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    move-result-object p1

    return-object p1
.end method
