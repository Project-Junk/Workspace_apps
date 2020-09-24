.class public Lcom/platform/usercenter/sdk/verify/UCVerificationNetDispatcher;
.super Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;
.source "UCVerificationNetDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lcom/platform/usercenter/sdk/UCVerifyHelper;->isRealmeFindPhoneClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0}, Lcom/platform/usercenter/common/util/UCHeaderHelper;->getHeaderXBusinessSystem(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-BusinessSystem"

    .line 31
    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accept-language"

    .line 33
    invoke-interface {p5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http request,url: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n HEADER_X_BUSINESS_SYSTEM : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V

    return-void
.end method
