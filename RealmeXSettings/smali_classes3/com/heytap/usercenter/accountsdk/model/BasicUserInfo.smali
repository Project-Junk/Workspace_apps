.class public Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;
.super Ljava/lang/Object;
.source "BasicUserInfo.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public avatarUrl:Ljava/lang/String;

.field public boundEmail:Ljava/lang/String;

.field public boundPhone:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryCallingCode:Ljava/lang/String;

.field public jsonString:Ljava/lang/String;

.field public ssoid:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public userNameNeedModify:Z

.field public validTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    invoke-direct {v2}, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->jsonString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "accountName"

    .line 5
    :try_start_2
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->accountName:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "avatarUrl"

    .line 6
    :try_start_3
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->avatarUrl:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p0, "boundEmail"

    .line 7
    :try_start_4
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->boundEmail:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p0, "boundPhone"

    .line 8
    :try_start_5
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->boundPhone:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p0, "country"

    .line 9
    :try_start_6
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->country:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string p0, "countryCallingCode"

    .line 10
    :try_start_7
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->countryCallingCode:Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string p0, "status"

    .line 11
    :try_start_8
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->status:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string p0, "userName"

    .line 12
    :try_start_9
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->userName:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string p0, "ssoid"

    .line 13
    :try_start_a
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->ssoid:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string p0, "userNameNeedModify"

    .line 14
    :try_start_b
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->userNameNeedModify:Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string p0, "validTime"

    .line 15
    :try_start_c
    invoke-static {v0, p0}, Lcom/platform/usercenter/tools/UCUtils;->getjsonLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->validTime:J
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v1
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 4

    const-string v0, "accountName"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "avatarUrl"

    .line 3
    :try_start_1
    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "userName"

    .line 4
    :try_start_2
    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "userNameNeedModify"

    .line 5
    :try_start_3
    iget-boolean v3, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->userNameNeedModify:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "countryCallingCode"

    .line 6
    :try_start_4
    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->countryCallingCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "boundPhone"

    .line 7
    :try_start_5
    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->boundPhone:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "boundEmail"

    .line 8
    :try_start_6
    iget-object v3, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->boundEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "country"

    .line 10
    :try_start_7
    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->country:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v0, "ssoid"

    .line 11
    :try_start_8
    iget-object v2, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->ssoid:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v0, "validTime"

    .line 12
    :try_start_9
    iget-wide v2, p0, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->validTime:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
