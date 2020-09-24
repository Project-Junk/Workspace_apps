.class Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;
.super Ljava/lang/Object;
.source "BRPluginProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;


# direct methods
.method constructor <init>(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 686
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected, "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$802(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 690
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$900(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 691
    :try_start_0
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1002(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Z)Z

    .line 692
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p2}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$900(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 693
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 698
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1002(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Z)Z

    .line 700
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$802(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 701
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Bundle;

    move-result-object p1

    monitor-enter p1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 703
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
