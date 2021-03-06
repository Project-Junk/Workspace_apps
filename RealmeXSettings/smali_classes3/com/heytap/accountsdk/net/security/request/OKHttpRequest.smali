.class public abstract Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;
.super Ljava/lang/Object;
.source "OKHttpRequest.java"


# static fields
.field public static final DEFAULT_MILLISECONDS:J = 0x7530L


# instance fields
.field protected builder:Lokhttp3/Request$Builder;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->builder:Lokhttp3/Request$Builder;

    .line 34
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->url:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->tag:Ljava/lang/Object;

    .line 36
    iput-object p3, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->params:Ljava/util/Map;

    .line 37
    iput-object p4, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->headers:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->initBuilder()V

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initBuilder()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->builder:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 52
    invoke-virtual {p0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->appendHeaders()V

    return-void
.end method


# virtual methods
.method protected appendHeaders()V
    .locals 4

    .line 77
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->headers:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method public build()Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
    .locals 1

    .line 64
    new-instance v0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;

    invoke-direct {v0, p0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;-><init>(Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;)V

    return-object v0
.end method

.method protected abstract buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract buildRequestBody()Lokhttp3/RequestBody;
.end method

.method public generateRequest(Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/Request;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->buildRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->wrapRequestBody(Lokhttp3/RequestBody;Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;Lcom/heytap/accountsdk/net/security/callback/Callback;)Lokhttp3/RequestBody;
    .locals 0

    return-object p1
.end method
