.class public Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;
.super Ljava/lang/Thread;
.source "ReqSigninAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/ReqSigninAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReqThread"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field appKey:Ljava/lang/String;

.field appSecret:Ljava/lang/String;

.field password:Ljava/lang/String;

.field final synthetic this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->accountName:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->appKey:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->appSecret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$100()Lcom/c/a/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 156
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 159
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/Utilities;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/service/accountsdk/Utilities;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heytap/service/accountsdk/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    iget-object v2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->unbindNearMeService()V

    if-eqz v0, :cond_1

    .line 169
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$200(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 171
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$200(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$ReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$202(Lcom/heytap/service/accountsdk/ReqSigninAgent;Landroid/os/Handler;)Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    .line 159
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
