.class public Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;
.super Ljava/lang/Object;
.source "UCDispatcherManager.java"

# interfaces
.implements Lcom/platform/usercenter/annotation/NoProguard;


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UCDispatcherManager"

.field public static mNetWorkManager:Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;


# instance fields
.field public mInstantDispatcher:Lcom/heytap/usercenter/accountsdk/UCIInstantDispatcher;

.field public mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

.field public mOapsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIOapsDispatcher;

.field public mStatisticsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkManager:Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;-><init>()V

    sput-object v0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkManager:Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkManager:Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/platform/usercenter/common/util/UCHeaderHelper;->getHeaders(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;->onReqStart()V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;

    invoke-direct {v1}, Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;-><init>()V

    iput-object v1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public onStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mStatisticsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;->onStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "you must implement interface UCIStatisticsDispatcher method and call UCDispatcherManager.getInstance().register"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UCDispatcherManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openByOaps(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mOapsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIOapsDispatcher;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/heytap/usercenter/accountsdk/UCIOapsDispatcher;->openByOaps(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/platform/usercenter/common/util/UCHeaderHelper;->getHeaders(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 2
    :catch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_0

    .line 3
    invoke-interface {p4}, Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;->onReqStart()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;

    invoke-direct {v0}, Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;-><init>()V

    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V

    return-void
.end method

.method public registInstantDispatcher(Lcom/heytap/usercenter/accountsdk/UCIInstantDispatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mInstantDispatcher:Lcom/heytap/usercenter/accountsdk/UCIInstantDispatcher;

    :cond_0
    return-void
.end method

.method public registOapsDispatcher(Lcom/heytap/usercenter/accountsdk/UCIOapsDispatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mOapsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIOapsDispatcher;

    :cond_0
    return-void
.end method

.method public register(Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iput-object p2, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mStatisticsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;

    :cond_1
    return-void
.end method

.method public startInstant(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mInstantDispatcher:Lcom/heytap/usercenter/accountsdk/UCIInstantDispatcher;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/heytap/usercenter/accountsdk/UCIInstantDispatcher;->startInstant(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mNetWorkDispatcher:Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;

    .line 2
    iput-object v0, p0, Lcom/heytap/usercenter/accountsdk/UCDispatcherManager;->mStatisticsDispatcher:Lcom/heytap/usercenter/accountsdk/UCIStatisticsDispatcher;

    return-void
.end method
