.class Lcom/oppo/music/manager/AsyncRequestManager$1;
.super Ljava/lang/Object;
.source "AsyncRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/music/manager/AsyncRequestManager;->request(Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/music/manager/AsyncRequestManager;

.field final synthetic val$listener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

.field final synthetic val$request:Lcom/oppo/music/manager/Request;


# direct methods
.method constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/Request;Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    iput-object p2, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$request:Lcom/oppo/music/manager/Request;

    iput-object p3, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$listener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$request:Lcom/oppo/music/manager/Request;

    invoke-virtual {v0}, Lcom/oppo/music/manager/Request;->execute()V

    .line 100
    iget-object v0, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-static {v0}, Lcom/oppo/music/manager/AsyncRequestManager;->access$100(Lcom/oppo/music/manager/AsyncRequestManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-static {v1}, Lcom/oppo/music/manager/AsyncRequestManager;->access$200(Lcom/oppo/music/manager/AsyncRequestManager;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 103
    :try_start_1
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-static {v1}, Lcom/oppo/music/manager/AsyncRequestManager;->access$100(Lcom/oppo/music/manager/AsyncRequestManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "AsyncRequestManager"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request() has been interrupted! thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    new-instance v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;

    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V

    .line 112
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$request:Lcom/oppo/music/manager/Request;

    iput-object v1, v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mRequest:Lcom/oppo/music/manager/Request;

    .line 113
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->val$listener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    iput-object v1, v0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    .line 114
    iget-object v1, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-static {v1}, Lcom/oppo/music/manager/AsyncRequestManager;->access$400(Lcom/oppo/music/manager/AsyncRequestManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 115
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/oppo/music/manager/AsyncRequestManager$1;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-static {p0}, Lcom/oppo/music/manager/AsyncRequestManager;->access$400(Lcom/oppo/music/manager/AsyncRequestManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 109
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
