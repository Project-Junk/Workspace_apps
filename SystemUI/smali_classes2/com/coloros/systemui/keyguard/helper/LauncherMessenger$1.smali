.class Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;
.super Ljava/lang/Object;
.source "LauncherMessenger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$002(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 51
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$100(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$000(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Messenger;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$100(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 54
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$100(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Message;

    move-result-object p1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$100(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;)Landroid/os/Message;

    move-result-object p1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 55
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    invoke-static {p0, p2}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$200(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected RemoteException = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherMessenger"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->access$002(Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
