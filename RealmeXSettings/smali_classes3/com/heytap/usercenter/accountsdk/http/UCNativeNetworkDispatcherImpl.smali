.class public Lcom/heytap/usercenter/accountsdk/http/UCNativeNetworkDispatcherImpl;
.super Ljava/lang/Object;
.source "UCNativeNetworkDispatcherImpl.java"

# interfaces
.implements Lcom/heytap/usercenter/accountsdk/UCINetWorkDispatcher;


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


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/a/e;

    const-string v3, "GET"

    move-object v1, v0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 3
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http request,url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->i(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/a/e;

    const-string v3, "POST"

    move-object v1, v0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/heytap/usercenter/accountsdk/http/UCRequestCallBack;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method