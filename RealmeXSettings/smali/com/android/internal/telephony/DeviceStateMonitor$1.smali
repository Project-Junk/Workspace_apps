.class Lcom/android/internal/telephony/DeviceStateMonitor$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DeviceStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mWifiNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/DeviceStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DeviceStateMonitor;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 98
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const-string v2, "Wifi (default) connected"

    invoke-static {v1, v2, v4}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->mWifiNetworks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 120
    iget-object p1, p0, Lcom/android/internal/telephony/DeviceStateMonitor$1;->this$0:Lcom/android/internal/telephony/DeviceStateMonitor;

    const-string v1, "Wifi (default) disconnected"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/DeviceStateMonitor;->access$000(Lcom/android/internal/telephony/DeviceStateMonitor;Ljava/lang/String;Z)V

    .line 122
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
