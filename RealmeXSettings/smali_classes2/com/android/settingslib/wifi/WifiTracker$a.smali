.class final Lcom/android/settingslib/wifi/WifiTracker$a;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/wifi/WifiTracker;

.field private b:I


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 934
    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->b:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 937
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "Scanner resume"

    .line 938
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 940
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$a;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 941
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$a;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method final b()V
    .locals 2

    .line 946
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiTracker"

    const-string v1, "Scanner pause"

    .line 947
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 949
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->b:I

    .line 950
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$a;->removeMessages(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 960
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    return-void

    .line 961
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->c(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 962
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->b:I

    goto :goto_0

    .line 963
    :cond_1
    iget p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->b:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->b:I

    const/4 v2, 0x3

    if-lt p1, v2, :cond_3

    .line 964
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->b:I

    .line 965
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->g(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 966
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$a;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->g(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settingslib/e$h;->wifi_fail_to_scan:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-wide/16 v1, 0x2710

    .line 970
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
