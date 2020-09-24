.class public abstract Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
.super Ljava/lang/Object;
.source "AbstractOKHttpBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
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
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;->headers:Ljava/util/Map;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract build()Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;
.end method

.method public headers(Ljava/util/Map;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;->url:Ljava/lang/String;

    return-object p0
.end method
