.class public final Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountEntity(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/a/a;->a(Landroid/content/Context;)Lcom/heytap/usercenter/accountsdk/model/AccountEntity;

    move-result-object p0

    return-object p0
.end method

.method public static getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/heytap/usercenter/accountsdk/AppInfo;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/AppInfo;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/AppInfo;->appCode:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/AppInfo;->packageName:Ljava/lang/String;

    const-string p1, ""

    .line 4
    iput-object p1, v0, Lcom/heytap/usercenter/accountsdk/AppInfo;->secreKey:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/heytap/usercenter/accountsdk/AppInfo;->appVersion:I

    return-object v0
.end method

.method public static getUCServiceVersionCode(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getUserCenterVersionCode(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static startBindInfoPage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterBindPageXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 3
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getExtraRequestBindMessengerKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-static {p0, p2}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "extra_action_appinfo_key"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p2, 0x10000

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static startModifyAccountNameActivity(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterModifyAccountnameXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_action_appinfo_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x246

    .line 7
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static startReqAutoLoginService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAutologinServiceXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_action_appinfo_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method public static startReqSignInActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderIntfUsercenterOpenContainerActivityXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_action_appinfo_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_request_type_key"

    const v1, 0xbbbb

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static startReqSwitchAccountActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderIntfUsercenterOpenContainerActivityXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_action_appinfo_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_request_type_key"

    const v1, 0xcccc

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public static startReqTokenActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderIntfUsercenterOpenContainerActivityXor8()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_action_appinfo_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_request_type_key"

    const v1, 0xaaaa

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_action_auto_login_key"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "extra_key_usercenter_plugin_key"

    const/16 p2, 0x3ea

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x10000000

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p2, 0x10000

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
