.class Lcom/nearme/romupdate/Client$2;
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

    .line 51
    iput-object p1, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 58
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v0, "bugly service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p2}, Lcom/nearme/romupdate/ISwitchControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nearme/romupdate/ISwitchControl;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {v0}, Lcom/nearme/romupdate/Client;->access$600(Lcom/nearme/romupdate/Client;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nearme/romupdate/ISwitchControl;->isEnableBuglyLog(Ljava/lang/String;)Z

    move-result p2

    .line 63
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service: isBugly? "

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

    .line 65
    sget-object v0, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v1, "bugly remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    :goto_0
    sget-object p1, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string v0, "bugly callback begin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$500(Lcom/nearme/romupdate/Client;)Lcom/nearme/romupdate/Client$CallBack;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nearme/romupdate/Client$CallBack;->isEnableBugly(Z)V

    .line 70
    iget-object p1, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p1}, Lcom/nearme/romupdate/Client;->access$000(Lcom/nearme/romupdate/Client;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p2}, Lcom/nearme/romupdate/Client;->access$700(Lcom/nearme/romupdate/Client;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 71
    iget-object p1, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/nearme/romupdate/Client;->access$502(Lcom/nearme/romupdate/Client;Lcom/nearme/romupdate/Client$CallBack;)Lcom/nearme/romupdate/Client$CallBack;

    .line 72
    iget-object p0, p0, Lcom/nearme/romupdate/Client$2;->this$0:Lcom/nearme/romupdate/Client;

    invoke-static {p0, p2}, Lcom/nearme/romupdate/Client;->access$602(Lcom/nearme/romupdate/Client;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 54
    sget-object p0, Lcom/nearme/romupdate/Client;->TAG:Ljava/lang/String;

    const-string p1, "bugly service disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
