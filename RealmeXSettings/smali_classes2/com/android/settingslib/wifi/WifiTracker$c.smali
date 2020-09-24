.class final Lcom/android/settingslib/wifi/WifiTracker$c;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$b;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;

.field private final b:Lcom/android/settingslib/wifi/WifiTracker$b;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$b;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker$b;

    return-void
.end method

.method private a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .line 1023
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$c$xdQz9L1kA3h0n-b3gUYkceYEZvk;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$c$xdQz9L1kA3h0n-b3gUYkceYEZvk;-><init>(Lcom/android/settingslib/wifi/WifiTracker$c;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->a(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    .line 1026
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker$b;

    invoke-interface {v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$b;->a(I)V

    return-void
.end method

.method public static synthetic lambda$1hSxmIYhJ8HswPPq08iizWSFRdc(Lcom/android/settingslib/wifi/WifiTracker$c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$c;->b(I)V

    return-void
.end method

.method public static synthetic lambda$xdQz9L1kA3h0n-b3gUYkceYEZvk(Lcom/android/settingslib/wifi/WifiTracker$c;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/WifiTracker$c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1008
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$c$1hSxmIYhJ8HswPPq08iizWSFRdc;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$c$1hSxmIYhJ8HswPPq08iizWSFRdc;-><init>(Lcom/android/settingslib/wifi/WifiTracker$c;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1009
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invoking onWifiStateChanged callback with state %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1008
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$c;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final n_()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$NChFAPi4Rjj3vO00ycCFNgeUpBs;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$NChFAPi4Rjj3vO00ycCFNgeUpBs;-><init>(Lcom/android/settingslib/wifi/WifiTracker$b;)V

    const-string v0, "Invoking onAccessPointsChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$c;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final o_()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$c;->b:Lcom/android/settingslib/wifi/WifiTracker$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$WeraEIlqb4w4JsfJlZInMD9K6ts;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$WeraEIlqb4w4JsfJlZInMD9K6ts;-><init>(Lcom/android/settingslib/wifi/WifiTracker$b;)V

    const-string v0, "Invoking onConnectedChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$c;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
