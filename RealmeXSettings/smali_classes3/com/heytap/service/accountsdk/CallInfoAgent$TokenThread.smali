.class public Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;
.super Ljava/lang/Thread;
.source "CallInfoAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/CallInfoAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TokenThread"
.end annotation


# instance fields
.field private reqCode:I

.field final synthetic this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/CallInfoAgent;I)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->reqCode:I

    .line 215
    iput p2, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->reqCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_0
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$200()Lcom/c/a/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 223
    :try_start_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$100(Lcom/heytap/service/accountsdk/CallInfoAgent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 225
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 228
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    new-instance v0, Lcom/c/a/f;

    invoke-direct {v0}, Lcom/c/a/f;-><init>()V

    .line 232
    iget v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->reqCode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqCheckPwd()Lcom/c/a/f;

    move-result-object v0

    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqSignin()Lcom/c/a/f;

    move-result-object v0

    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->callReqToken()Lcom/c/a/f;

    move-result-object v0

    .line 246
    :goto_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/CallInfoAgent$TokenThread;->this$0:Lcom/heytap/service/accountsdk/CallInfoAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/CallInfoAgent;->unbindNearMeService()V

    if-eqz v0, :cond_4

    .line 248
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 249
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 250
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 251
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 252
    invoke-static {}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$300()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    const/4 v0, 0x0

    .line 262
    invoke-static {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$202(Lcom/c/a/c;)Lcom/c/a/c;

    .line 263
    invoke-static {v0}, Lcom/heytap/service/accountsdk/CallInfoAgent;->access$302(Landroid/os/Handler;)Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    .line 228
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
