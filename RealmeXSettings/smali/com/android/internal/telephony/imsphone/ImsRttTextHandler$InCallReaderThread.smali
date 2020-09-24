.class Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;
.super Ljava/lang/Thread;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCallReaderThread"
.end annotation


# instance fields
.field private final mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ImsRttTextHandler"

    :cond_0
    :goto_0
    const/16 v1, 0x270f

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->mReaderThreadRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v2}, Landroid/telecom/Connection$RttTextStream;->read()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    const-string v2, "RttReaderThread - Stream closed unexpectedly. Attempt to reinitialize."

    .line 93
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 98
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->access$000(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->access$000(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RttReaderThread - IOException encountered reading from in-call: "

    .line 87
    invoke-static {v0, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->this$0:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_1
    const-string v1, "RttReaderThread - Thread interrupted. Finishing."

    .line 84
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
