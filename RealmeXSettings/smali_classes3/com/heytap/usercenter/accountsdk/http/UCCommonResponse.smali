.class public abstract Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;
.super Ljava/lang/Object;
.source "UCCommonResponse.java"

# interfaces
.implements Lcom/heytap/usercenter/accountsdk/http/UCBaseResult;


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/heytap/usercenter/accountsdk/http/UCBaseResult;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->code:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->message:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "nothing happen"

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->success:Z

    return v0
.end method

.method public loadCommonJson(Lorg/json/JSONObject;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "success"

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->success:Z

    .line 2
    new-instance v0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "error"

    .line 3
    :try_start_1
    invoke-static {p1, v1}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "code"

    .line 6
    :try_start_2
    invoke-static {v2, v1}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->code:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "message"

    .line 7
    :try_start_3
    invoke-static {v2, v1}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;->message:Ljava/lang/String;

    .line 8
    iput-object v0, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->error:Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse$ErrorResp;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    const-string v0, "data"

    .line 9
    :try_start_4
    invoke-static {p1, v0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v0, :cond_1

    .line 11
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->parserData(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->data:Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v2, "JSONException = "

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->detailE(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->parserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->data:Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public parseNetworkResponse([B)Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "utf-8"

    :try_start_1
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "parseNetworkResponse UCCommonResponse = "

    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "mysdk http callback = "

    :try_start_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1, p0}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->loadCommonJson(Lorg/json/JSONObject;Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic parseNetworkResponse([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->parseNetworkResponse([B)Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;

    move-result-object p1

    return-object p1
.end method

.method public parserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract parserData(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/heytap/usercenter/accountsdk/http/UCCommonResponse;->success:Z

    return-void
.end method
