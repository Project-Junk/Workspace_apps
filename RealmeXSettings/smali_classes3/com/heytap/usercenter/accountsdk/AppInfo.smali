.class public Lcom/heytap/usercenter/accountsdk/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/platform/usercenter/annotation/NoProguard;


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# instance fields
.field public appCode:Ljava/lang/String;

.field public appVersion:I

.field public packageName:Ljava/lang/String;

.field public secreKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromGson(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;
    .locals 8

    const-string v0, "appVersion"

    const-string v1, "packageName"

    const-string v2, "secreKey"

    const-string v3, "appCode"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 2
    :cond_0
    new-instance v4, Lcom/heytap/usercenter/accountsdk/AppInfo;

    invoke-direct {v4}, Lcom/heytap/usercenter/accountsdk/AppInfo;-><init>()V

    .line 3
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v7, :cond_1

    .line 5
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->setAppCode(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v3, :cond_2

    .line 7
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->setSecreKey(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v2, :cond_3

    .line 9
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_4

    .line 11
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v4

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v5
.end method

.method public static toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "appCode"

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->getAppCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "secreKey"

    .line 3
    :try_start_2
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->getSecreKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "packageName"

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "appVersion"

    .line 5
    :try_start_4
    invoke-virtual {p0}, Lcom/heytap/usercenter/accountsdk/AppInfo;->getAppVersion()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public getAppCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->appVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecreKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->secreKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->appCode:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->appVersion:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSecreKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/AppInfo;->secreKey:Ljava/lang/String;

    return-void
.end method
