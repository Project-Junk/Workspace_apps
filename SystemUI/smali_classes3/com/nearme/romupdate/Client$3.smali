.class Lcom/nearme/romupdate/Client$3;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/romupdate/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/romupdate/Client;


# direct methods
.method constructor <init>(Lcom/nearme/romupdate/Client;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 83
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v0, "debug service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p2}, Lcom/nearme/romupdate/ISwitchControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/romupdate/ISwitchControl;

    move-result-object p1

    const/4 p2, 0x0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {v0}, Lcom/nearme/romupdate/Client;->access$200(Lcom/nearme/romupdate/Client;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nearme/romupdate/ISwitchControl;->isDebug(Ljava/lang/String;)Z

    move-result p2

    .line 88
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service: isDebug? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    sget-object v0, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v1, "debug remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    :goto_0
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v0, "debug callback begin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$100(Lcom/nearme/romupdate/Client;)Lcom/nearme/romupdate/Client$DebugCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nearme/romupdate/Client$DebugCallback;->isDebug(Z)V

    .line 95
    iget-object p1, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$000(Lcom/nearme/romupdate/Client;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p2}, Lcom/nearme/romupdate/Client;->access$300(Lcom/nearme/romupdate/Client;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    iget-object p1, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/nearme/romupdate/Client;->access$202(Lcom/nearme/romupdate/Client;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object p0, p0, Lcom/nearme/romupdate/Client$3;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p0, p2}, Lcom/nearme/romupdate/Client;->access$102(Lcom/nearme/romupdate/Client;Lcom/nearme/romupdate/Client$DebugCallback;)Lcom/nearme/romupdate/Client$DebugCallback;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 79
    sget-object p0, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string p1, "debug service disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
