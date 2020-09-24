.class public final Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigManager;
.super Ljava/lang/Object;
.source "UCSystemConfigManager.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final ACCOUNT_BUSINESS_TYPE:Ljava/lang/String; = "account"

.field public static final CREDIT_BUSINESS_TYPE:Ljava/lang/String; = "credit"

.field public static final HEADER_BUSINESS_SCENE:Ljava/lang/String; = "header_business_scene"

.field public static final KEY_OTHER_HOST:Ljava/lang/String; = "OTHER"

.field public static final KEY_SYSTEM_CONFIG:Ljava/lang/String; = "KEY_SYSTEM_CONFIG"

.field public static final MARKET_BUSINESS_TYPE:Ljava/lang/String; = "market"

.field public static final SYSTEM_CONFIG_FILE_NAME:Ljava/lang/String; = "system_config"

.field public static final VIP_BUSINESS_TYPE:Ljava/lang/String; = "vip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalSystemConfig()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    const-string v1, "KEY_SYSTEM_CONFIG"

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    sget-object v2, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "system_config"

    :try_start_1
    invoke-static {v2, v3}, Lcom/platform/usercenter/common/util/FileUtils;->readStringFromAssert(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getRemoteSystemConfig()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigProtocol;->getSystemConfig()V

    return-void
.end method

.method public static getUserCountry()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/platform/usercenter/common/util/UCDeviceInfoUtil;->getCurRegion()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
