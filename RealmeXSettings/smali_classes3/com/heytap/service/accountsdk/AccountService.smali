.class public Lcom/heytap/service/accountsdk/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field private static volatile callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forcReqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 450
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 452
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 453
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 455
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendLowVersionSDK(Landroid/os/Handler;)V

    return-void

    .line 458
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static forceReqCheckPwd(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 239
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 241
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqCheckPwd(Landroid/os/Handler;)V

    return-void

    .line 243
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 231
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 233
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;)V

    return-void

    .line 235
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method public static forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 438
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 440
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 441
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 443
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->forceReqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    return-void

    .line 446
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static forceReqToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 223
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 225
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;)V

    return-void

    .line 227
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method public static forceReqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 426
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 428
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->initHandler()V

    .line 429
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->forceReqToken(Landroid/content/Context;Landroid/os/Handler;)V

    return-void

    .line 434
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;
    .locals 2

    .line 71
    sget-object v0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/heytap/service/accountsdk/AccountService;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {v1, p0}, Lcom/heytap/service/accountsdk/CallInfoAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 78
    :cond_1
    :goto_0
    sget-object p0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    return-object p0
.end method

.method public static getKekeNameByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 312
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const-string v1, ""

    const/16 v2, 0xe6

    if-lt v0, v2, :cond_0

    .line 315
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "KEKE_NAME_RECORD_INFO"

    const/4 v2, 0x4

    .line 319
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 322
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 327
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private static getNameByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getOVName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 291
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 293
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 296
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getNameByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 149
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTokenByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 273
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 275
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getTokenByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUCServiceVersionCode(Landroid/content/Context;)I
    .locals 1

    .line 51
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getUserCenterVersionCode(Landroid/content/Context;)I
    .locals 1

    .line 33
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hasOldCenterPackage(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move p0, v0

    :goto_0
    const/16 v1, 0x82

    if-ge p0, v1, :cond_0

    const/16 v1, 0x6e

    if-le p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static hasServiceAPK(Landroid/content/Context;)Z
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static hasServicePackage(Landroid/content/Context;)Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static initAgent()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/heytap/service/accountsdk/AccountService;->callInfoAgent:Lcom/heytap/service/accountsdk/CallInfoAgent;

    return-void
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isLogin(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasOldCenterPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isBefLogin(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 256
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 257
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AuthTokenProvider;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 260
    :cond_0
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static jumpToFuc(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 469
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUserCenterVersionCode(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x10000000

    const/high16 v2, 0x20000000

    const/16 v3, 0xe6

    if-lt v0, v3, :cond_1

    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 470
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/keys/UCServiceConstant;->selectAccountAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->getNameByProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "AccountName"

    .line 473
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 490
    :cond_1
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->isLogin(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 492
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/heytap/service/accountsdk/keys/UCServiceConstant;->ucFucAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 497
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 502
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private static reqCheckPwd(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 216
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqCheckPwd(Landroid/os/Handler;)V

    return-void

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 202
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;)V

    return-void

    .line 205
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method public static reqReSignin(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 392
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 395
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqReSignin(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->reqReSignin(Landroid/content/Context;Landroid/os/Handler;)V

    return-void

    .line 400
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method public static reqSwitchAccount(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 413
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 415
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqSwitchAccount(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendLowVersionSDK(Landroid/os/Handler;)V

    return-void

    .line 421
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static reqToken(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 185
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;)V

    return-void

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method public static reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 2

    .line 342
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->hasServicePackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getUCServiceVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_0

    .line 345
    invoke-static {p0}, Lcom/heytap/service/accountsdk/AccountService;->getInstance(Landroid/content/Context;)Lcom/heytap/service/accountsdk/CallInfoAgent;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/heytap/service/accountsdk/CallInfoAgent;->reqToken(Landroid/os/Handler;Ljava/lang/String;)V

    return-void

    .line 347
    :cond_0
    invoke-static {p0, p1}, Lcom/heytap/service/accountsdk/AccountService;->reqToken(Landroid/content/Context;Landroid/os/Handler;)V

    return-void

    .line 352
    :cond_1
    invoke-static {p1}, Lcom/heytap/service/accountsdk/AccountService;->sendNoPackageMessage(Landroid/os/Handler;)V

    return-void
.end method

.method private static sendLowVersionSDK(Landroid/os/Handler;)V
    .locals 5

    .line 110
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 111
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9cf61

    const-string v4, "UCService Version Too Low!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static sendNoPackageMessage(Landroid/os/Handler;)V
    .locals 5

    .line 104
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 105
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9cf62

    const-string v4, "Account number is zero!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static sendNoneAccount(Landroid/os/Handler;)V
    .locals 5

    .line 116
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 117
    new-instance v1, Lcom/c/a/f;

    const-string v2, ""

    const v3, 0x1c9cf62

    const-string v4, "Account number is zero!"

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
