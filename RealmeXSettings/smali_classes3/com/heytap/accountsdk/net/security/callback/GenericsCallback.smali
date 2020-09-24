.class public abstract Lcom/heytap/accountsdk/net/security/callback/GenericsCallback;
.super Lcom/heytap/accountsdk/net/security/callback/Callback;
.source "GenericsCallback.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;",
        ">",
        "Lcom/heytap/accountsdk/net/security/callback/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mGenericsSerializator:Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;


# direct methods
.method public constructor <init>(Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/callback/Callback;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/callback/GenericsCallback;->mGenericsSerializator:Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;

    return-void
.end method


# virtual methods
.method public parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/callback/GenericsCallback;->mGenericsSerializator:Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;

    invoke-interface {v0, p1, p2}, Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;->transform(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;

    return-object p1
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accountsdk/net/security/callback/GenericsCallback;->parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/callback/IGenericsSerializator;

    move-result-object p1

    return-object p1
.end method
