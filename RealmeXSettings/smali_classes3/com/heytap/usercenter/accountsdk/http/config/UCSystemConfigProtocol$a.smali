.class public final Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$a;
.super Lcom/heytap/accountsdk/net/security/callback/Callback;
.source "UCSystemConfigProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol;->getSystemConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/accountsdk/net/security/callback/Callback<",
        "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
        "Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p2, Lcom/a/f;

    invoke-direct {p2}, Lcom/a/f;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->parseNetworkResponse([B)Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    move-result-object p1

    return-object p1
.end method
