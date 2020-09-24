.class public Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;
.super Ljava/lang/Object;
.source "UCAccountVerifyAgent.java"


# static fields
.field private static final OPPO_INTENT_ACTION_USERCENTER_SDK_VERIFY_WEB:Ljava/lang/String; = "oppo.intent.action.usercenter.sdk.verify.web"

.field private static final OPPO_USECENTER_INTENT_ACTION_SAFE_CONTAINER:Ljava/lang/String; = "oppo.usecenter.intent.action.safe.container"

.field private static final OPPO_USECENTER_INTENT_ACTION_SAFE_CONTAINER_HT:Ljava/lang/String; = "com.usercenter.action.activity.safe.container"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 0

    .line 49
    sput-boolean p1, Lcom/platform/usercenter/sdk/UCVerifyURLProvider;->sIsDebug:Z

    .line 50
    invoke-static {p0}, Lcom/platform/usercenter/app/UCRuntimeEnvironment;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static sendFailedResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;Ljava/lang/String;Z)V
    .locals 9

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_REQUEST_INTENT_EXTRA_VERIFY_RESULT_STR"

    if-eqz p5, :cond_0

    .line 159
    new-instance p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    const/4 v5, 0x0

    const-string v7, ""

    const-string v8, "VERIFY_RESULT_CODE_FAILED"

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object p5

    invoke-static {p0, p5}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 165
    new-instance p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    const/4 v5, 0x0

    const-string v7, ""

    const-string v8, "VERIFY_RESULT_CODE_FAILED"

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    new-instance p0, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;

    const/4 v5, 0x0

    const-string v7, ""

    const-string v8, "VERIFY_RESULT_CODE_FAILED"

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_REQUEST_INTENT_EXTRA_VERIFY_RESULT"

    .line 172
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 177
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p3, p0}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static startOperateVerify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;)V
    .locals 9

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const-string v5, "\u60a8\u8fd8\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    .line 71
    invoke-static/range {v1 .. v6}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->sendFailedResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;Ljava/lang/String;Z)V

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/platform/usercenter/common/helper/ApkInfoHelper;->hasAPK(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "KEY_REQUEST_INTENT_EXTRA_VERIFY_REQUEST"

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.usercenter.action.activity.safe.container"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    new-instance v2, Lcom/platform/usercenter/sdk/UCVerifyRequestEntity;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move-object v3, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/platform/usercenter/sdk/UCVerifyRequestEntity;-><init>(Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.usecenter.intent.action.safe.container"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v2, Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move-object v3, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/oppo/usercenter/sdk/UCVerifyRequestEntity;-><init>(Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    :goto_0
    invoke-static {p0, v0}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p1, ""

    .line 91
    invoke-static {p0, p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountHelper;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/usercenter/accountsdk/AppInfo;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AppInfo;->toJson(Lcom/heytap/usercenter/accountsdk/AppInfo;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "extra_action_appinfo_key"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_2

    const/high16 p1, 0x10000000

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p6

    invoke-static/range {v0 .. v5}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->sendFailedResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;Ljava/lang/String;Z)V

    return-void

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->startOperateVerifyInSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;)V

    return-void
.end method

.method public static startOperateVerifyInSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;)V
    .locals 9

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const-string v5, "\u60a8\u8fd8\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    .line 125
    invoke-static/range {v1 .. v6}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->sendFailedResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;Ljava/lang/String;Z)V

    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->getInstance()Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;

    move-result-object v0

    new-instance v1, Lcom/platform/usercenter/sdk/verify/UCVerificationNetDispatcher;

    invoke-direct {v1}, Lcom/platform/usercenter/sdk/verify/UCVerificationNetDispatcher;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->register(Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;)V

    .line 130
    new-instance v0, Lcom/platform/usercenter/sdk/UCVerifyRequestEntity;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/platform/usercenter/sdk/UCVerifyRequestEntity;-><init>(Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    new-instance p4, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.usercenter.sdk.verify.web"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    sget-object v1, Lcom/platform/usercenter/sdk/verify/UCSafeVerificationConstant;->INTENT_EXTRA_SAFE_USER_TOKEN:Ljava/lang/String;

    invoke-virtual {p4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KEY_REQUEST_INTENT_EXTRA_VERIFY_REQUEST"

    .line 135
    invoke-virtual {p4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    .line 137
    invoke-virtual {p4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    :cond_1
    :try_start_0
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->sendFailedResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;Ljava/lang/String;Z)V

    return-void
.end method
