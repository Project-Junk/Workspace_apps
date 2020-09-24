.class public Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;
.super Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;
.source "OKHttpPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;
    }
.end annotation


# static fields
.field private static MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;


# instance fields
.field private content:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/plain;charset=utf-8"

    .line 19
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 0
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
            ">;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V

    .line 28
    iput-object p5, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->content:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->mediaType:Lokhttp3/MediaType;

    .line 31
    iget-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->content:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->mediaType:Lokhttp3/MediaType;

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->mediaType:Lokhttp3/MediaType;

    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the content can not be null !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
