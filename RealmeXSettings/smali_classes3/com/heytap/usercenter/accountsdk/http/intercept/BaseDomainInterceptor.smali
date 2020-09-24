.class public abstract Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;
.super Lcom/heytap/accountsdk/net/security/interceptor/AbsUCDomainInterceptor;
.source "BaseDomainInterceptor.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final KEY_LAST_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final SYSTEM_CONFIG_URL_PATH:Ljava/lang/String; = "/system/get-config"

.field public static final TIME_PER_DAY:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/interceptor/AbsUCDomainInterceptor;-><init>()V

    return-void
.end method

.method private getConfigRoute()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigManager;->getLocalSystemConfig()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;->fromJson(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;->getRoute()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHostByAccountCountry(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigManager;->getUserCountry()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "OTHER"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMapByBusinessTypeOrHeader(Ljava/util/Map;Lokhttp3/Request;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lokhttp3/Request;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "header_business_scene"

    .line 1
    invoke-virtual {p2, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p2, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;->getBusinessType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private shouldUpdateDomainConfig()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    const-wide/16 v3, -0x1

    const-string v5, "timestamp"

    invoke-static {v2, v5, v3, v4}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-eqz v2, :cond_0

    sub-long v2, v0, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    sget-object v2, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v0, v1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearConfig(Landroid/content/Context;)V
    .locals 3

    const-string v0, "timestamp"

    const-wide/16 v1, -0x1

    .line 1
    invoke-static {p1, v0, v1, v2}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2
    sget-object p1, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    const-string v0, "KEY_SYSTEM_CONFIG"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract getBusinessType()Ljava/lang/String;
.end method

.method public getNewHost(Lokhttp3/Request;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/get-config"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;->shouldUpdateDomainConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigManager;->getRemoteSystemConfig()V

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;->getConfigRoute()Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;->getMapByBusinessTypeOrHeader(Ljava/util/Map;Lokhttp3/Request;)Ljava/util/Map;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/heytap/usercenter/accountsdk/http/intercept/BaseDomainInterceptor;->getHostByAccountCountry(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BaseDomainInterceptor switch host old = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", new host = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;)V

    return-object v0
.end method
