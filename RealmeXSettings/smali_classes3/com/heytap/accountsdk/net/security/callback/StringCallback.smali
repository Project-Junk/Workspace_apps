.class public abstract Lcom/heytap/accountsdk/net/security/callback/StringCallback;
.super Lcom/heytap/accountsdk/net/security/callback/Callback;
.source "StringCallback.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/accountsdk/net/security/callback/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/heytap/accountsdk/net/security/callback/StringCallback;->parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
