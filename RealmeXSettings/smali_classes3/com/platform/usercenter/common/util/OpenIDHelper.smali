.class public Lcom/platform/usercenter/common/util/OpenIDHelper;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"

# interfaces
.implements Lcom/platform/usercenter/annotation/NoProguard;


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final APID:Ljava/lang/String; = "APID"

.field public static final AUID:Ljava/lang/String; = "AUID"

.field public static final DUID:Ljava/lang/String; = "DUID"

.field public static final GUID:Ljava/lang/String; = "GUID"

.field public static final HEADER_X_CLIENT_APID:Ljava/lang/String; = "X-Client-APID"

.field public static final HEADER_X_CLIENT_AUID:Ljava/lang/String; = "X-Client-AUID"

.field public static final HEADER_X_CLIENT_DUID:Ljava/lang/String; = "X-Client-DUID"

.field public static final HEADER_X_CLIENT_GUID:Ljava/lang/String; = "X-Client-GUID"

.field public static final HEADER_X_CLIENT_OUID:Ljava/lang/String; = "X-Client-OUID"

.field public static final OPENID_PACKAGE_NAME:Ljava/lang/String; = "openid_packageName"

.field public static final OUID:Ljava/lang/String; = "OUID"

.field private static sOpenidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPID()Ljava/lang/String;
    .locals 2

    .line 119
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "X-Client-APID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getAUID()Ljava/lang/String;
    .locals 2

    .line 135
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "X-Client-AUID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDUID()Ljava/lang/String;
    .locals 2

    .line 131
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "X-Client-DUID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getGUID()Ljava/lang/String;
    .locals 2

    .line 123
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "X-Client-GUID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOUID()Ljava/lang/String;
    .locals 2

    .line 127
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "X-Client-OUID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOpenIDJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "getOpenId costTime = "

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 44
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {}, Lcom/heytap/openid/sdk/HeytapIDSDK;->isSupported()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string p0, "isSupported openid = false"

    .line 46
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    return-object v4

    .line 49
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "GUID"

    .line 51
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "OUID"

    .line 52
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getOUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "DUID"

    .line 53
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getDUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "AUID"

    .line 54
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getAUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "APID"

    .line 55
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getAPID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "openid_packageName"

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "openId = "

    .line 58
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    return-object v4

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 64
    throw p0
.end method

.method public static getOpenIdHeader(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    :try_start_0
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object p0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    return-object p0

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-string p0, "getOpenIdHeader Cannot run on MainThread"

    .line 87
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 88
    sget-object p0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    return-object p0

    .line 90
    :cond_1
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->init(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Lcom/heytap/openid/sdk/HeytapIDSDK;->isSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "isSupported openid = false"

    .line 92
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 93
    sget-object p0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    return-object p0

    .line 96
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    .line 97
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getAPID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getOUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getDUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {p0}, Lcom/heytap/openid/sdk/HeytapIDSDK;->getAUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 102
    sget-object v4, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    const-string v5, "X-Client-GUID"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    const-string v4, "X-Client-OUID"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    const-string v2, "X-Client-DUID"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    const-string v2, "X-Client-AUID"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object p0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    const-string v0, "X-Client-APID"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object p0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :cond_3
    sget-object p0, Lcom/platform/usercenter/common/util/OpenIDHelper;->sOpenidMap:Ljava/util/HashMap;

    return-object p0
.end method
