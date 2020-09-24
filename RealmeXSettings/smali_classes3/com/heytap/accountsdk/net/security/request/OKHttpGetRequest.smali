.class public Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest;
.super Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;
.source "OKHttpGetRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accountsdk/net/security/request/OKHttpGetRequest$OKHttpGetBuilder;
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V
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
            ">;I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
