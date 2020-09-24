.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$b;,
        Lcom/android/settingslib/wifi/WifiTracker$c;,
        Lcom/android/settingslib/wifi/WifiTracker$a;,
        Lcom/android/settingslib/wifi/WifiTracker$d;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field public final b:Landroid/net/wifi/WifiManager;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field d:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Lcom/android/settingslib/wifi/WifiTracker$a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final f:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Landroid/content/IntentFilter;

.field private final i:Landroid/net/ConnectivityManager;

.field private final j:Landroid/net/NetworkRequest;

.field private final k:Lcom/android/settingslib/wifi/WifiTracker$c;

.field private l:Landroid/os/HandlerThread;

.field private m:Lcom/android/settingslib/wifi/WifiTracker$d;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/net/NetworkInfo;

.field private v:Landroid/net/wifi/WifiInfo;

.field private final w:Landroid/net/NetworkScoreManager;

.field private x:Landroid/net/wifi/WifiNetworkScoreCache;

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/NetworkScoreManager;

    .line 200
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->e()Landroid/content/IntentFilter;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 196
    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Ljava/util/Set;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->r:Z

    .line 155
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Ljava/util/HashMap;

    .line 850
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$2;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Landroid/content/BroadcastReceiver;

    .line 221
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    .line 222
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 223
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker$c;

    invoke-direct {p1, p0, p2}, Lcom/android/settingslib/wifi/WifiTracker$c;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$b;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Lcom/android/settingslib/wifi/WifiTracker$c;

    .line 224
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Landroid/net/ConnectivityManager;

    .line 227
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result p1

    if-lez p1, :cond_0

    move v1, v0

    :cond_0
    sput-boolean v1, Lcom/android/settingslib/wifi/WifiTracker;->a:Z

    .line 229
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->h:Landroid/content/IntentFilter;

    .line 231
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 232
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p2, 0xf

    .line 233
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Landroid/net/NetworkRequest;

    .line 237
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Landroid/net/NetworkScoreManager;

    .line 240
    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WifiTracker{"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1255
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->l:Landroid/os/HandlerThread;

    .line 1256
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/os/Handler;

    .line 1257
    new-instance p1, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    new-instance p3, Lcom/android/settingslib/wifi/WifiTracker$1;

    iget-object p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/os/Handler;

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {p1, p2, p3}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Landroid/net/wifi/WifiNetworkScoreCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 8
    .param p3    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/NetworkScoreManager;

    .line 211
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->e()Landroid/content/IntentFilter;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 207
    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V

    .line 213
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 518
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 519
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v1, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v1, :cond_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 461
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2502
    :cond_1
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->r:Z

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x3a98

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x7530

    .line 2505
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2506
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2507
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 2509
    iget-wide v4, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v4, v2, v4

    cmp-long v4, v4, v0

    if-lez v4, :cond_3

    .line 2510
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 470
    :cond_4
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 471
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 473
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "[IBSS]"

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 478
    invoke-static {v1}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 481
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_4

    .line 483
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 487
    :goto_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object p1
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settingslib/wifi/a;"
        }
    .end annotation

    .line 742
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 743
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/a;

    .line 6728
    iget-object v1, v0, Lcom/android/settingslib/wifi/a;->a:Ljava/lang/String;

    .line 745
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 689
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 688
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 689
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 690
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 691
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 693
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 5732
    invoke-static {v3}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/settingslib/wifi/WifiTracker;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/a;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5734
    new-instance v5, Lcom/android/settingslib/wifi/a;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v4}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/Collection;)V

    goto :goto_1

    .line 5736
    :cond_1
    invoke-virtual {v5, v4}, Lcom/android/settingslib/wifi/a;->a(Ljava/util/Collection;)V

    .line 695
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .locals 2

    .line 6891
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6892
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateWifiState: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 6895
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 6896
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    if-eqz v1, :cond_1

    .line 6899
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$a;->a()V

    .line 6901
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6903
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->h()V

    const/4 v0, 0x0

    .line 6904
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    .line 6905
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    .line 6906
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 6907
    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    if-eqz v1, :cond_3

    .line 6908
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$a;->b()V

    .line 6910
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 6911
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Z

    .line 6913
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Lcom/android/settingslib/wifi/WifiTracker$c;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$c;->a(I)V

    return-void

    :catchall_1
    move-exception p0

    .line 6910
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static synthetic a(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 10

    .line 7755
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7756
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->h()V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 7761
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    const-string v1, "WifiTracker"

    .line 8091
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7763
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLastNetworkInfo set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7766
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eq v1, p1, :cond_2

    .line 7767
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Lcom/android/settingslib/wifi/WifiTracker$c;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker$c;->o_()V

    :cond_2
    const/4 p1, 0x0

    .line 7773
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    const-string v1, "WifiTracker"

    .line 9091
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLastInfo set as: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_4

    .line 7778
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 7779
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 7778
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/wifi/WifiTracker;->a(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 7785
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 7786
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_8

    .line 7787
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/a;

    .line 7788
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v6

    .line 7789
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    invoke-virtual {v5, p1, v7, v8}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7791
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v4

    if-eq v6, v4, :cond_5

    move v3, v2

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v2

    .line 7793
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Z

    iget-wide v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->z:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v5

    if-eqz v5, :cond_7

    move v3, v2

    move v4, v3

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    .line 7800
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_9
    if-eqz v4, :cond_a

    .line 7803
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->i()V

    .line 7805
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 552
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    if-eqz p2, :cond_0

    .line 554
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 555
    invoke-static {v2}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 560
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    .line 561
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/settingslib/wifi/WifiTracker;->a(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 566
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter p2

    .line 568
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->a(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 572
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 574
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 578
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 580
    invoke-static {v8}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 581
    iget-object v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 582
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 587
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2704
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    invoke-static {v6}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/settingslib/wifi/WifiTracker;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/a;

    move-result-object v6

    if-nez v6, :cond_4

    .line 2706
    new-instance v6, Lcom/android/settingslib/wifi/a;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    invoke-direct {v6, v8, v7}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    goto :goto_3

    .line 2708
    :cond_4
    invoke-virtual {v6, v7}, Lcom/android/settingslib/wifi/a;->a(Ljava/util/Collection;)V

    .line 590
    :goto_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/wifi/a;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 592
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 598
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 599
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 598
    invoke-direct {p0, v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 602
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 603
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 602
    invoke-direct {p0, p1, v2}, Lcom/android/settingslib/wifi/WifiTracker;->a(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 605
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_6

    .line 606
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/a;

    .line 607
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    goto :goto_4

    .line 613
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    .line 614
    new-instance p1, Lcom/android/settingslib/wifi/a;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 615
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 616
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    invoke-static {p1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3366
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x3

    if-nez p1, :cond_9

    const-string p1, "WifiTracker"

    .line 4091
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "WifiTracker"

    const-string v1, "Requesting scores for Network Keys: "

    .line 3369
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Landroid/net/NetworkScoreManager;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-interface {v4, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    invoke-virtual {p1, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 3372
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3373
    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3374
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 621
    :cond_9
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/a;

    .line 622
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Z

    iget-wide v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->z:J

    invoke-virtual {v1, v2, v4, v7, v8}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    goto :goto_6

    .line 626
    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string p1, "WifiTracker"

    .line 5091
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "WifiTracker"

    const-string v0, "------ Dumping AccessPoints that were not seen on this scan ------"

    .line 630
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/a;

    .line 633
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/a;

    .line 636
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    move v1, v6

    :goto_8
    if-nez v1, :cond_b

    const-string v1, "WifiTracker"

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Did not find "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in this scan"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const-string p1, "WifiTracker"

    const-string v0, "---- Done dumping AccessPoints that were not seen on this scan ----"

    .line 645
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_f
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 650
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 651
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 653
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->i()V

    return-void

    :catchall_1
    move-exception p1

    .line 651
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method static synthetic a(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    return p0
.end method

.method static synthetic a(Lcom/android/settingslib/wifi/WifiTracker;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->r:Z

    return p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result v0

    .line 1093
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v1

    .line 1094
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result v2

    .line 1096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 1101
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "PSK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1105
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "SUITE_B_192"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "SAE"

    .line 1110
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "OWE"

    .line 1111
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v0, :cond_6

    .line 1112
    :cond_5
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1113
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "filterScanResultsByCapabilities: Filtering SSID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with capabilities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WifiTracker"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v3
.end method

.method private b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;>;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 665
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 666
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 667
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    const/4 v5, 0x0

    .line 668
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 669
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v5, 0x1

    .line 670
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5718
    invoke-static {v3}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/settingslib/wifi/WifiTracker;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/wifi/a;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5720
    new-instance v5, Lcom/android/settingslib/wifi/a;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    invoke-direct {v5, v6, v3, v4, v2}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_1

    .line 5722
    :cond_1
    invoke-virtual {v5, v3}, Lcom/android/settingslib/wifi/a;->c(Landroid/net/wifi/WifiConfiguration;)V

    .line 5723
    invoke-virtual {v5, v4, v2}, Lcom/android/settingslib/wifi/a;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 675
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 8

    .line 6830
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 6832
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6833
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/a;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Z

    iget-wide v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->z:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 6839
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6840
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->i()V

    .line 6842
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic c(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic c()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->d()Z

    move-result v0

    return v0
.end method

.method private static d()Z
    .locals 2

    .line 95
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "WifiTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic d(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Z

    return v0
.end method

.method private static e()Landroid/content/IntentFilter;
    .locals 2

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic e(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->g()V

    return-void
.end method

.method static synthetic f(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 537
    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 539
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fetched scan results: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 544
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 817
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->i()V

    .line 819
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 1

    .line 1073
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->k:Lcom/android/settingslib/wifi/WifiTracker$c;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$c;->n_()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$a;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker$a;->a()V

    .line 304
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->o:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 424
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1352
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->v:Landroid/net/wifi/WifiInfo;

    .line 1353
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->u:Landroid/net/NetworkInfo;

    .line 1355
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->g()V

    .line 1359
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 321
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    .line 323
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "network_scoring_ui_enabled"

    .line 322
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->y:Z

    .line 326
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    .line 328
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/32 v3, 0x124f80

    const-string v5, "speed_label_cache_eviction_age_millis"

    .line 327
    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->z:J

    .line 332
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    .line 333
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->h:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$d;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$d;-><init>(Lcom/android/settingslib/wifi/WifiTracker;B)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Lcom/android/settingslib/wifi/WifiTracker$d;

    .line 337
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->j:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Lcom/android/settingslib/wifi/WifiTracker$d;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 339
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 390
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->m:Lcom/android/settingslib/wifi/WifiTracker$d;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->t:Z

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->w:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->x:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 1409
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->p:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1411
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2281
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 2282
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2283
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$a;->b()V

    .line 2284
    iput-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->e:Lcom/android/settingslib/wifi/WifiTracker$a;

    .line 2286
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2287
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->q:Z

    .line 398
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2286
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1411
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
