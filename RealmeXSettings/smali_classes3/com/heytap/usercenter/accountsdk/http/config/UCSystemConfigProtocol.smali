.class public Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol;
.super Ljava/lang/Object;
.source "UCSystemConfigProtocol.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemConfig()V
    .locals 3

    .line 1
    new-instance v0, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$UCSystemConfigParam;-><init>()V

    .line 2
    invoke-static {}, Lcom/heytap/accountsdk/net/security/OKHttpUtils;->post()Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/heytap/usercenter/accountsdk/http/UCAccountHostParam;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->url(Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/AbstractOKHttpBuilder;

    move-result-object v1

    check-cast v1, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;

    .line 4
    invoke-virtual {v0}, Lcom/heytap/usercenter/accountsdk/http/UCBaseRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->content(Ljava/lang/String;)Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/heytap/accountsdk/net/security/request/OKHttpPostRequest$OKHttpPostBuilder;->build()Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;

    move-result-object v0

    new-instance v1, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$a;

    invoke-direct {v1}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol$a;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/request/OKHttpRequestCall;->execute(Lcom/heytap/accountsdk/net/security/callback/Callback;)V

    return-void
.end method
