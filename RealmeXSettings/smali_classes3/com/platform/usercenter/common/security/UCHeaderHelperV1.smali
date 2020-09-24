.class public Lcom/platform/usercenter/common/security/UCHeaderHelperV1;
.super Ljava/lang/Object;
.source "UCHeaderHelperV1.java"


# static fields
.field public static final DEFAULT_NULL:Ljava/lang/String; = ""

.field public static final HEADER_ACCEPT_LANGUAGE:Ljava/lang/String; = "accept-language"

.field public static final HEADER_APP:Ljava/lang/String; = "Ext-App"

.field public static final HEADER_INSTANT_VERSION:Ljava/lang/String; = "Ext-Instant-Version"

.field public static final HEADER_MOBILE:Ljava/lang/String; = "Ext-Mobile"

.field public static final HEADER_SYSTEM:Ljava/lang/String; = "Ext-System"

.field public static final HEADER_USER:Ljava/lang/String; = "Ext-USER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_X_BUSINESS_SYSTEM:Ljava/lang/String; = "X-BusinessSystem"

.field public static final HEADER_X_CLIENT_COLOR_OSVERSION:Ljava/lang/String; = "X-Client-HTOSVersion"

.field public static final HEADER_X_CLIENT_COUNTRY:Ljava/lang/String; = "X-Client-Country"

.field public static final HEADER_X_CLIENT_DEVICE:Ljava/lang/String; = "X-Client-Device"

.field public static final HEADER_X_CLIENT_DEVICE_NAME:Ljava/lang/String; = "X-Client-DeviceName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_X_CLIENT_LOCALE:Ljava/lang/String; = "X-Client-Locale"

.field public static final HEADER_X_CLIENT_PACKAGE:Ljava/lang/String; = "X-Client-package"

.field public static final HEADER_X_CLIENT_REGISTER_ID:Ljava/lang/String; = "X-Client-Registerid"

.field public static final HEADER_X_CLIENT_TIME_ZONE:Ljava/lang/String; = "X-Client-Timezone"

.field public static final HEADER_X_CLIENT_WIFISSID:Ljava/lang/String; = "X-Client-Wifissid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEADER_X_DEVICE:Ljava/lang/String; = "X-Device"

.field public static final HEADER_X_FROM_HT:Ljava/lang/String; = "X-From-HT"

.field public static final HEADER_X_KEY:Ljava/lang/String; = "X-Key"

.field public static final HEADER_X_SECURITY:Ljava/lang/String; = "X-Security"

.field public static final HEADER_X_SYSTEM:Ljava/lang/String; = "X-System"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCommonHeader(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
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

    .line 66
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 67
    invoke-static {p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV1;->createExtSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ext-System"

    .line 68
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 70
    invoke-static {v1, p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV1;->createExtMobile(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ext-Mobile"

    .line 71
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accept-language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-From-HT"

    const-string v2, "true"

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Client-package"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getCurRegion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Client-Country"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Client-Locale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Client-Timezone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget v1, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->mRomVersionCode:I

    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Client-HTOSVersion"

    .line 84
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->getXBusinessSystem()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-BusinessSystem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p0}, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Security"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV1;->createXSystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-System"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "wd"

    .line 92
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "ht"

    .line 93
    invoke-static {p0}, Lcom/platform/usercenter/common/util/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {p0}, Lcom/platform/usercenter/common/helper/Base64Helper;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "X-Device"

    .line 96
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static buildHeader(Landroid/content/Context;Lcom/platform/usercenter/common/security/IBizHeaderManager;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/platform/usercenter/common/security/IBizHeaderManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 104
    new-instance p1, Lcom/platform/usercenter/common/security/UCDefaultBizHeader;

    invoke-direct {p1}, Lcom/platform/usercenter/common/security/UCDefaultBizHeader;-><init>()V

    .line 106
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 107
    invoke-static {p0}, Lcom/platform/usercenter/common/security/UCHeaderHelperV1;->buildCommonHeader(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 110
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->userDeviceID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "X-Client-Device"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->pushId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "X-Client-Registerid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->instantVerson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Ext-Instant-Version"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-interface {p1}, Lcom/platform/usercenter/common/security/IBizHeaderManager;->extApp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ext-App"

    .line 117
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createExtApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createExtMobile(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p0, :cond_0

    .line 183
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    .line 185
    invoke-static {p1}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "//"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    sget-boolean p0, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz p0, :cond_2

    const-string p0, "0"

    goto :goto_1

    :cond_2
    const-string p0, "1"

    .line 191
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getCurRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createExtSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getOsVersionRelease()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->sIsExp:Z

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/platform/usercenter/common/helper/NetInfoHelper;->getNetTypeId(Landroid/content/Context;)I

    move-result v2

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->sIsExp:Z

    if-eqz v2, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/common/util/SystemInfoHelper;->getManufacture()Ljava/lang/String;

    move-result-object v3

    .line 136
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Lcom/platform/usercenter/common/util/SystemInfoHelper;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {p0}, Lcom/platform/usercenter/common/util/SystemInfoHelper;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {p0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createExtUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createXSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 205
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 207
    invoke-static {}, Lcom/platform/usercenter/common/util/MultiUserUtil;->getUserId()I

    move-result v1

    const-string v2, "uid"

    .line 208
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-static {p0}, Lcom/platform/usercenter/common/util/MultiUserUtil;->getSerialNumberForUser(Landroid/content/Context;)J

    move-result-wide v1

    const-string v3, "usn"

    .line 210
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "utype"

    .line 211
    invoke-static {p0}, Lcom/platform/usercenter/common/util/MultiUserUtil;->getUserType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 213
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 214
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
