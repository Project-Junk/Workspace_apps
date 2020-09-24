.class public Lcom/platform/usercenter/common/security/DeviceSecurityHeader;
.super Ljava/lang/Object;
.source "DeviceSecurityHeader.java"


# static fields
.field private static securityHeader:Lorg/json/JSONObject;


# instance fields
.field private deviceName:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private wifissid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceSecurityHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 30
    :try_start_0
    sget-object v0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    sput-object v0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getOSIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    sget-object v0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "mac"

    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    sget-object v0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "serial"

    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :cond_0
    sget-object v0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "wifissid"

    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getWifiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    sget-object v0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    const-string v1, "deviceName"

    invoke-static {p0}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    sget-object p0, Lcom/platform/usercenter/common/security/DeviceSecurityHeader;->securityHeader:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method
