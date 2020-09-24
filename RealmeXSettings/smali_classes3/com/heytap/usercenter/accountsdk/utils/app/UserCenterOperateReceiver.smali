.class public Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserCenterOperateReceiver.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UserCenterOperateReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeUserInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->clearData(Landroid/content/Context;)V

    return-void
.end method

.method private login(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, ""

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v1, "extra_broadcast_action_userentity_key"

    .line 1
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "extra_broadcast_action_userentity_key_need_callback"

    const/4 v3, 0x1

    .line 2
    :try_start_1
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    invoke-static {v1}, Lcom/heytap/usercenter/accountsdk/helper/Base64Helper;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/c/a/f;->a(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1068
    iget v1, v0, Lcom/c/a/f;->a:I

    const v2, 0x1c9c769

    if-ne v1, v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "onreceive login result = "

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/c/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, " , isNeed2Callback = "

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isVersionUpV320(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-static {p1, v0}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->saveUserEntity(Landroid/content/Context;Lcom/c/a/f;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->clearData(Landroid/content/Context;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 11
    invoke-static {v0}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->sendSingleReqMessage(Lcom/c/a/f;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    new-instance p1, Lcom/c/a/f;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const p2, 0x1c9c76c

    const-string v1, "Already canceled!"

    :try_start_4
    invoke-direct {p1, p2, v1, v0, v0}, Lcom/c/a/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->sendSingleReqMessage(Lcom/c/a/f;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private logout(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getExtraBroadcastUsercenterAescoderKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcom/heytap/usercenter/accountsdk/helper/Base64Helper;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getUCPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getPkgnameUcHeytapXor8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    :cond_1
    const-string p2, "receive logout and verify clear data"

    .line 5
    :try_start_1
    invoke-static {p2}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->clearData(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private modifyUserName(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "OldUserName"

    .line 1
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UserName"

    .line 2
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {v0}, Lcom/heytap/usercenter/accountsdk/helper/Base64Helper;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->getNameByProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p2}, Lcom/heytap/usercenter/accountsdk/helper/Base64Helper;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "oldName = "

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "newName  = "

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, p2}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->setName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,RECEIVER PKG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountLogoutXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.heytap.usercenter.account_logout"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountModifyNameXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;->modifyUserName(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountLoginXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.usercenter.action.receiver.account_login"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "com.usercenter.action.broadcast.USERINFO_CHANGED"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    invoke-static {p1}, Lcom/heytap/usercenter/accountsdk/helper/AccountPrefUtils;->clearData(Landroid/content/Context;)V

    return-void

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;->login(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 13
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;->logout(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void
.end method
