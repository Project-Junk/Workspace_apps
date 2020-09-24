.class final Lcom/android/settingslib/wifi/WifiTracker$1;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final networkCacheUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->a(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "WifiTracker"

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Score cache was updated with networks: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->b(Lcom/android/settingslib/wifi/WifiTracker;)V

    return-void
.end method
