.class public final Lcom/a/f;
.super Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;
.source "UCSystemConfigProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
        "Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final parserData(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/platform/usercenter/common/lib/BaseApp;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_SYSTEM_CONFIG"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;->fromJson(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/http/config/UCSystemConfigEntity;

    move-result-object p1

    return-object p1
.end method
