.class public Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;
.super Lcom/android/settings/wifi/slice/WifiScanWorker;
.source "ContextualWifiScanWorker.java"


# static fields
.field private static e:J

.field private static f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static c()V
    .locals 2

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->e:J

    return-void
.end method

.method static g()V
    .locals 2

    .line 49
    sget-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->e:J

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->f:J

    return-void
.end method


# virtual methods
.method protected final h()V
    .locals 0

    return-void
.end method

.method protected final i()Z
    .locals 4

    .line 59
    sget-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->e:J

    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1152
    sput-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->c:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
