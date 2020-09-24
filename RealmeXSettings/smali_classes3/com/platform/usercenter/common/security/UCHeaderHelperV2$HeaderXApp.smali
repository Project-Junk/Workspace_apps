.class Lcom/platform/usercenter/common/security/UCHeaderHelperV2$HeaderXApp;
.super Ljava/lang/Object;
.source "UCHeaderHelperV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/security/UCHeaderHelperV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderXApp"
.end annotation


# static fields
.field public static final X_APP:Ljava/lang/String; = "X-APP"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHeader(Landroid/content/Context;Lcom/platform/usercenter/common/security/IBizHeaderManager;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/platform/usercenter/common/security/IBizHeaderManager;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 209
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "appPackage"

    .line 211
    invoke-interface {p1, p0}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->fromPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceId"

    .line 212
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->userDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appVersion"

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, v3}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->fromPkgVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ucVersion"

    if-lez v2, :cond_0

    move p0, v2

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-static {p0, v4}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    :goto_0
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "ucPackage"

    if-lez v2, :cond_1

    .line 217
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v2

    .line 217
    :goto_1
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "fromHT"

    .line 219
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "overseaClient"

    .line 220
    sget-boolean v2, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->sIsExp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "registerId"

    .line 221
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->pushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "instantVersion"

    .line 222
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->instantVerson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "X-APP"

    .line 223
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 225
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method
