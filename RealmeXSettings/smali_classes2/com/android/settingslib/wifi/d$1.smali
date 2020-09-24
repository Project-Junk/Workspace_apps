.class final Lcom/android/settingslib/wifi/d$1;
.super Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/d;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/d;Landroid/os/Handler;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settingslib/wifi/d$1;->a:Lcom/android/settingslib/wifi/d;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final networkCacheUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/wifi/d$1;->a:Lcom/android/settingslib/wifi/d;

    invoke-static {p1}, Lcom/android/settingslib/wifi/d;->a(Lcom/android/settingslib/wifi/d;)V

    .line 57
    iget-object p1, p0, Lcom/android/settingslib/wifi/d$1;->a:Lcom/android/settingslib/wifi/d;

    invoke-static {p1}, Lcom/android/settingslib/wifi/d;->b(Lcom/android/settingslib/wifi/d;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
