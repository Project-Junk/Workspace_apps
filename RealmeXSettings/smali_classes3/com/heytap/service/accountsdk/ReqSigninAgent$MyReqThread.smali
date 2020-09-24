.class public Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;
.super Ljava/lang/Thread;
.source "ReqSigninAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/service/accountsdk/ReqSigninAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyReqThread"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field appCode:Ljava/lang/String;

.field appKey:Ljava/lang/String;

.field appSecret:Ljava/lang/String;

.field password:Ljava/lang/String;

.field final synthetic this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;


# direct methods
.method constructor <init>(Lcom/heytap/service/accountsdk/ReqSigninAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->accountName:Ljava/lang/String;

    .line 312
    iput-object p3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    .line 313
    iput-object p4, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appKey:Ljava/lang/String;

    .line 314
    iput-object p5, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appSecret:Ljava/lang/String;

    .line 315
    iput-object p6, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 320
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    .line 321
    :try_start_0
    invoke-static {}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$300()Lcom/c/a/b;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 323
    :try_start_1
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$000(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 325
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 328
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/Utilities;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/heytap/service/accountsdk/Utilities;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/heytap/service/accountsdk/HmacHelper;->signMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    iget-object v2, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    iget-object v3, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->appCode:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->callReqSignin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-virtual {v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->myUnbindNearMeService()V

    if-eqz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$200(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 340
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    invoke-static {v0}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$200(Lcom/heytap/service/accountsdk/ReqSigninAgent;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/heytap/service/accountsdk/ReqSigninAgent$MyReqThread;->this$0:Lcom/heytap/service/accountsdk/ReqSigninAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/heytap/service/accountsdk/ReqSigninAgent;->access$202(Lcom/heytap/service/accountsdk/ReqSigninAgent;Landroid/os/Handler;)Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    .line 328
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
