.class public final Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;
.super Ljava/lang/Object;
.source "AccountPrefUtils.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final KEY_SP_ACCOUNT_USERINFO:Ljava/lang/String; = "key_sp_account_userinfo"

.field public static final USERCENTER_ACCOUNT_SP_KEY:Ljava/lang/String; = "usercenter_account_key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearData(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getPackageSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getNameByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserEntity(Landroid/content/Context;Lcom/c/a/f;)Lcom/c/a/f;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2042
    iget-object p0, p0, Lcom/c/a/f;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getPackageSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_suffix_usercenter_sharepreference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, " param: context is null"

    .line 2
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getPackageSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 4
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserEntity(Landroid/content/Context;Lcom/c/a/f;)Lcom/c/a/f;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1050
    iget-object p0, p0, Lcom/c/a/f;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getUserEntity(Landroid/content/Context;Lcom/c/a/f;)Lcom/c/a/f;
    .locals 1

    const/4 p1, 0x0

    const-string v0, "usercenter_account_key"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/c/a/f;->a(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getUserInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_sp_account_userinfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/Base64Helper;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    .line 6
    aget-char v0, p0, p1

    add-int/lit8 v0, v0, -0x8

    int-to-char v0, v0

    .line 7
    aput-char v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 9
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->fromJson(Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static saveUserEntity(Landroid/content/Context;Lcom/c/a/f;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/c/a/f;->a(Lcom/c/a/f;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "usercenter_account_key"

    invoke-static {p0, v0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_sp_account_userinfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/Base64Helper;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/heytap/usercenter/accountsdk/model/BasicUserInfo;->toJson()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const/4 v0, 0x0

    .line 5
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 6
    aget-char v1, p2, v0

    add-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    .line 7
    aput-char v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    move-object p2, v0

    .line 9
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static setName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getUserEntity(Landroid/content/Context;Lcom/c/a/f;)Lcom/c/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2046
    iput-object p1, v0, Lcom/c/a/f;->c:Ljava/lang/String;

    .line 3
    invoke-static {p0, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->saveUserEntity(Landroid/content/Context;Lcom/c/a/f;)V

    :cond_0
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getPackageSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
