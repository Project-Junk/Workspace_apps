.class public abstract Lcom/heytap/accountsdk/net/security/interceptor/UCAbsSecurityBizHeaderInterceptor;
.super Ljava/lang/Object;
.source "UCAbsSecurityBizHeaderInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getBizHeader()Lcom/platform/usercenter/common/security/IBizHeaderManager;
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/heytap/accountsdk/net/security/interceptor/UCAbsSecurityBizHeaderInterceptor;->getBizHeader()Lcom/platform/usercenter/common/security/IBizHeaderManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/platform/usercenter/common/security/UCHeaderHelperV1;->buildHeader(Landroid/content/Context;Lcom/platform/usercenter/common/security/IBizHeaderManager;)Ljava/util/Map;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/heytap/accountsdk/net/security/interceptor/UCAbsSecurityBizHeaderInterceptor;->getBizHeader()Lcom/platform/usercenter/common/security/IBizHeaderManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/platform/usercenter/common/security/UCHeaderHelperV2;->buildHeader(Landroid/content/Context;Lcom/platform/usercenter/common/security/IBizHeaderManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/platform/usercenter/common/util/SystemInfoHelper;->getValueEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v4, v5, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_1
    :try_start_1
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
