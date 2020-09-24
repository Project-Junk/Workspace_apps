.class public Lcom/heytap/usercenter/accountsdk/utils/UCAccountSDKInitProvider;
.super Landroid/content/ContentProvider;
.source "UCAccountSDKInitProvider.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UCAccountSDKInitProvider"


# instance fields
.field public final mOperateReceiver:Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;-><init>()V

    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/utils/UCAccountSDKInitProvider;->mOperateReceiver:Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;

    return-void
.end method

.method private registerAccountReceiver(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountLogoutXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountModifyNameXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountLoginXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountLogoutComponentSafeXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountModifyNameComponentSafeXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/heytap/usercenter/accountsdk/utils/UCHeyTapAccountProvider;->getProviderUsercenterAccountLoginComponentSafeXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.heytap.usercenter.account_logout"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.usercenter.action.receiver.account_login"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.usercenter.action.broadcast.USERINFO_CHANGED"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/utils/UCAccountSDKInitProvider;->mOperateReceiver:Lcom/heytap/usercenter/accountsdk/utils/app/UserCenterOperateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initialization(Landroid/content/Context;)V
    .locals 3

    const-string v0, "UCAccountSDKInitProvider"

    if-nez p1, :cond_0

    const-string p1, "initialization context is null "

    .line 1
    invoke-static {v0, p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/platform/usercenter/common/lib/BaseApp;->init(Landroid/content/Context;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialization pkg name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/heytap/usercenter/accountsdk/utils/UCAccountSDKInitProvider;->registerAccountReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heytap/usercenter/accountsdk/utils/UCAccountSDKInitProvider;->initialization(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
