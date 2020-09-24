.class final Lcom/android/settings/wifi/slice/WifiScanWorker$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiScanWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/slice/WifiScanWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/slice/WifiScanWorker;

.field private final b:Landroid/net/Network;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Landroid/net/Network;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 208
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->b:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Network;)Z
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->b:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->c:Z

    .line 218
    iget-boolean v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->d:Z

    .line 219
    iget-boolean v2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->e:Z

    const/16 v3, 0x11

    .line 221
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->c:Z

    const/16 v3, 0x18

    .line 222
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->d:Z

    const/16 v3, 0x10

    .line 223
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->e:Z

    .line 225
    iget-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->c:Z

    if-ne v0, p2, :cond_1

    iget-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->d:Z

    if-ne v1, p2, :cond_1

    iget-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->e:Z

    if-ne v2, p2, :cond_1

    return-void

    .line 231
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->a(Lcom/android/settings/wifi/slice/WifiScanWorker;)V

    if-nez v0, :cond_2

    .line 234
    iget-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->c:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a:Lcom/android/settings/wifi/slice/WifiScanWorker;

    .line 235
    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->b(Lcom/android/settings/wifi/slice/WifiScanWorker;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p2

    .line 1428
    iget-object p2, p2, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 235
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a:Lcom/android/settings/wifi/slice/WifiScanWorker;

    .line 236
    invoke-virtual {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {v0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->c(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.net.extra.NETWORK"

    .line 238
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$a;->a:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->c(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;

    move-result-object p2

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method
