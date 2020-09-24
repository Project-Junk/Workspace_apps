.class public Lcom/android/settings/wifi/slice/WifiScanWorker;
.super Lcom/android/settings/slices/c;
.source "WifiScanWorker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/slice/WifiScanWorker$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/c<",
        "Lcom/android/settingslib/wifi/a;",
        ">;",
        "Lcom/android/settingslib/wifi/WifiTracker$b;"
    }
.end annotation


# static fields
.field static c:Ljava/lang/String;


# instance fields
.field a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Landroid/net/ConnectivityManager;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->e:Landroid/content/Context;

    .line 72
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->b:Landroid/net/ConnectivityManager;

    .line 73
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->e:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;)V

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/slice/WifiScanWorker;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->f()V

    return-void
.end method

.method static a(Lcom/android/settingslib/wifi/a;)V
    .locals 0

    .line 3095
    iget-object p0, p0, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 148
    sput-object p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->c:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/net/wifi/WifiInfo;)Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/wifi/slice/WifiScanWorker;)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->e:Landroid/content/Context;

    return-object p0
.end method

.method static j()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    sput-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->n_()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->f()V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;)Z"
        }
    .end annotation

    .line 133
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 140
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/a;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/a;->g()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/wifi/a;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/a;->g()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->k()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->h()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    return-void
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x0

    .line 3152
    sput-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->c:Ljava/lang/String;

    return-void
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiScanWorker"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    .line 194
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->a:Lcom/android/settings/wifi/slice/WifiScanWorker$a;

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1428
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 107
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->b(Ljava/util/List;)V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->f:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/a;

    .line 115
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2126
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2127
    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 2128
    new-instance v2, Lcom/android/settingslib/wifi/a;

    iget-object v4, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->e:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 116
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/slice/WifiScanWorker;->b(Ljava/util/List;)V

    return-void
.end method

.method public o_()V
    .locals 0

    return-void
.end method
