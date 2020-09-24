.class public Lcom/android/internal/telephony/RIL$RilHandler;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mRadioProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 338
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 339
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 340
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList()V

    goto :goto_0

    .line 317
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 325
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 326
    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    iget-object v1, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 328
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    return-void

    .line 309
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_4
    :goto_0
    return-void

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 290
    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget v1, v1, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 291
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 292
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioBugDetector;->processWakelockTimeout()V

    .line 295
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const-string v2, "RILJ"

    const-string v3, "WAKE_LOCK_TIMEOUT  mRequestList="

    .line 296
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ge v1, p1, :cond_7

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/RIL$RilHandler;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    const-string v3, "RILJ"

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 301
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
