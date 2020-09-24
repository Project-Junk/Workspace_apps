.class public Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;
.super Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
.source "OKHttpGetRequest.java"

# interfaces
.implements Lcom/heytap/accountsdk/net/security/request/IParamable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OKHttpGetBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder<",
        "Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;",
        ">;",
        "Lcom/heytap/accountsdk/net/security/request/IParamable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;->params:Ljava/util/Map;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 55
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 59
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public build()Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic params(Ljava/util/Map;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;->params(Ljava/util/Map;)Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/util/Map;)Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;->params:Ljava/util/Map;

    return-object p0
.end method
