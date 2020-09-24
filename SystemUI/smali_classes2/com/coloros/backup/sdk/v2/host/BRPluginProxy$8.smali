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

    .line 685
    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$802(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 692
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$900(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 693
    :try_start_0
    iget-object p2, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1002(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Z)Z

    .line 694
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$900(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 695
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BRPluginProxy"

    invoke-static {v0, p1}, Lcom/coloros/backup/sdk/v2/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1002(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Z)Z

    .line 702
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$802(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 703
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p1}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Bundle;

    move-result-object p1

    monitor-enter p1

    .line 704
    :try_start_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy$8;->this$0:Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;

    invoke-static {p0}, Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;->access$1100(Lcom/coloros/backup/sdk/v2/host/BRPluginProxy;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 705
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
