.class Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkScanRequestScheduler"
.end annotation


# instance fields
.field private mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field private mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

.field final synthetic this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$1;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->receiveResult(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doStopScan(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->stopScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptScanDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I
    .locals 3

    .line 325
    sget-object v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "ScanRequestTracker"

    packed-switch v0, :pswitch_data_0

    .line 351
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "commandExceptionErrorToScanError: Unexpected CommandExceptionError "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2710

    return p1

    :pswitch_0
    const-string p1, "commandExceptionErrorToScanError: DEVICE_IN_USE"

    .line 348
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1

    :pswitch_1
    const-string p1, "commandExceptionErrorToScanError: INVALID_ARGUMENTS"

    .line 345
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :pswitch_2
    const-string p1, "commandExceptionErrorToScanError: OPERATION_NOT_ALLOWED"

    .line 342
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_3
    const-string p1, "commandExceptionErrorToScanError: MODEM_ERR"

    .line 339
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_4
    const-string p1, "commandExceptionErrorToScanError: INTERNAL_ERR"

    .line 336
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_5
    const-string p1, "commandExceptionErrorToScanError: NO_MEMORY"

    .line 333
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_6
    const-string p1, "commandExceptionErrorToScanError: REQUEST_NOT_SUPPORTED"

    .line 330
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    return p1

    :pswitch_7
    const-string p1, "commandExceptionErrorToScanError: RADIO_NOT_AVAILABLE"

    .line 327
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    .locals 2

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 552
    iget-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x3

    invoke-static {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x2

    invoke-static {p3, p1, v1, p2, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 559
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 560
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz p1, :cond_2

    .line 561
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    .line 562
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized doInterruptScan(I)V
    .locals 3

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 493
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->stopNetworkScan(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "ScanRequestTracker"

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doInterruptScan: scan "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private doStartScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V
    .locals 4

    const-string v0, "ScanRequestTracker"

    if-nez p1, :cond_0

    const-string p1, "CMD_START_NETWORK_SCAN: nsri is null"

    .line 359
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0, p1, v3, v3, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    return-void

    .line 367
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getIsBinderDead()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "CMD_START_NETWORK_SCAN: Binder has died"

    .line 368
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 373
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->cacheScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    const/4 v1, 0x3

    invoke-static {v0, p1, v3, v1, v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    :cond_3
    return-void
.end method

.method private declared-synchronized doStopScan(I)V
    .locals 4

    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 458
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 459
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 458
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->stopNetworkScan(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 461
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 463
    iput-object v3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "ScanRequestTracker"

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopScan: scan "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized interruptLiveScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 4

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_0

    .line 518
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 519
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->doInterruptScan(I)V

    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mPendingRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 522
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const/4 v1, 0x2

    const/16 v2, 0x2712

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 524
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 526
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private interruptScanDone(Landroid/os/AsyncResult;)V
    .locals 2

    .line 501
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez p1, :cond_0

    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_INTERRUPT_NETWORK_SCAN_DONE: nsri is null"

    .line 503
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 507
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    return-void
.end method

.method private receiveResult(Landroid/os/AsyncResult;)V
    .locals 7

    .line 408
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_0

    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_RECEIVE_NETWORK_SCAN_RESULT: nsri is null"

    .line 410
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_0
    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 415
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$2000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 416
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 417
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    const/16 v2, 0x2710

    .line 418
    invoke-virtual {v1, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    const-string v3, "NetworkScanTracker#onResult"

    .line 419
    invoke-virtual {v1, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v1

    .line 421
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v4, 0x1

    if-nez v3, :cond_6

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 422
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanResult;

    .line 424
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 423
    invoke-static {v2, v1}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v1

    sget-object v2, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    .line 429
    :goto_1
    iget v2, p1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    if-nez v2, :cond_3

    .line 430
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v5, p1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 431
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v5

    iget-object v6, p1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 430
    invoke-static {v2, v0, v1, v5, v6}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 432
    iget p1, p1, Lcom/android/internal/telephony/NetworkScanResult;->scanStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 433
    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 434
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    return-void

    .line 437
    :cond_3
    iget-object v2, p1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget v3, p1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    .line 439
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result v3

    iget-object v5, p1, Lcom/android/internal/telephony/NetworkScanResult;->networkInfos:Ljava/util/List;

    .line 438
    invoke-static {v2, v0, v1, v3, v5}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    .line 441
    :cond_4
    iget p1, p1, Lcom/android/internal/telephony/NetworkScanResult;->scanError:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->rilErrorToScanError(I)I

    move-result p1

    invoke-direct {p0, v0, p1, v4}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 442
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    :cond_5
    return-void

    .line 445
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 446
    invoke-direct {p0, v0, v2, v4}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    .line 447
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    return-void
.end method

.method private rilErrorToScanError(I)I
    .locals 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const-string v1, "ScanRequestTracker"

    if-eq p1, v0, :cond_7

    const/4 v2, 0x6

    if-eq p1, v2, :cond_6

    const/16 v2, 0x28

    if-eq p1, v2, :cond_5

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_4

    const/16 v2, 0x36

    if-eq p1, v2, :cond_3

    const/16 v2, 0x40

    if-eq p1, v2, :cond_2

    const/16 v2, 0x25

    if-eq p1, v2, :cond_1

    const/16 v2, 0x26

    if-eq p1, v2, :cond_0

    .line 319
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "rilErrorToScanError: Unexpected RadioError "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2710

    return p1

    :cond_0
    const-string p1, "rilErrorToScanError: INTERNAL_ERR"

    .line 304
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p1, "rilErrorToScanError: NO_MEMORY"

    .line 301
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const-string p1, "rilErrorToScanError: DEVICE_IN_USE"

    .line 316
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    return p1

    :cond_3
    const-string p1, "rilErrorToScanError: OPERATION_NOT_ALLOWED"

    .line 310
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const-string p1, "rilErrorToScanError: INVALID_ARGUMENTS"

    .line 313
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1

    :cond_5
    const-string p1, "rilErrorToScanError: MODEM_ERR"

    .line 307
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const-string p1, "rilErrorToScanError: REQUEST_NOT_SUPPORTED"

    .line 298
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    return p1

    :cond_7
    const-string p1, "rilErrorToScanError: RADIO_NOT_AVAILABLE"

    .line 295
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized startNewScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 4

    monitor-enter p0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_0

    .line 537
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    .line 538
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->getRequest()Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 539
    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 538
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/Phone;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 540
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 542
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized startScanDone(Landroid/os/AsyncResult;)V
    .locals 3

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-nez v0, :cond_0

    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: nsri is null"

    .line 384
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->mLiveRequestInfo:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 393
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 396
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 397
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 398
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 400
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: ar.exception can not be null!"

    .line 402
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    :try_start_4
    const-string p1, "ScanRequestTracker"

    const-string v0, "EVENT_START_NETWORK_SCAN_DONE: nsri does not match mLiveRequestInfo"

    .line 388
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private stopScanDone(Landroid/os/AsyncResult;)V
    .locals 4

    .line 470
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    const-string v1, "ScanRequestTracker"

    if-nez v0, :cond_0

    const-string p1, "EVENT_STOP_NETWORK_SCAN_DONE: nsri is null"

    .line 472
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 475
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 476
    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V

    .line 479
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 480
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 481
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->commandExceptionErrorToScanError(Lcom/android/internal/telephony/CommandException$Error;)I

    move-result p1

    invoke-direct {p0, v0, p1, v3}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->deleteScanAndMayNotify(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IZ)V

    goto :goto_0

    :cond_2
    const-string p1, "EVENT_STOP_NETWORK_SCAN_DONE: ar.exception can not be null!"

    .line 484
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkScanResult(Landroid/os/Handler;)V

    return-void
.end method
