.class public final Lcom/a/d;
.super Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;
.source "AccountNameProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
        "Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;",
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
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->fromJson(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    move-result-object p1

    return-object p1
.end method
