.class public Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;
.super Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
.source "OKHttpPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OKHttpPostBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder<",
        "Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
    .locals 8

    .line 76
    new-instance v7, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->params:Ljava/util/Map;

    iget-object v4, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->headers:Ljava/util/Map;

    iget-object v5, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->content:Ljava/lang/String;

    iget-object v6, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->mediaType:Lokhttp3/MediaType;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lokhttp3/MediaType;)V

    invoke-virtual {v7}, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest;->build()Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;

    move-result-object v0

    return-object v0
.end method

.method public content(Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public mediaType(Lokhttp3/MediaType;)Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method
