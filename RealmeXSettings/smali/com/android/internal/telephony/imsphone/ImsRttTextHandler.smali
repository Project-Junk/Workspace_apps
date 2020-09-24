.class public Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;
.super Landroid/os/Handler;
.source "ImsRttTextHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;,
        Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;
    }
.end annotation


# static fields
.field private static final APPEND_TO_NETWORK_BUFFER:I = 0x2

.field private static final ATTEMPT_SEND_TO_NETWORK:I = 0x4

.field private static final EXPIRE_SENT_CODEPOINT_COUNT:I = 0x5

.field private static final INITIALIZE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsRttTextHandler"

.field public static final MAX_BUFFERED_CHARACTER_COUNT:I = 0x5

.field public static final MAX_BUFFERING_DELAY_MILLIS:I = 0xc8

.field public static final MAX_CODEPOINTS_PER_SECOND:I = 0x1e

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final SEND_TO_INCALL:I = 0x3

.field private static final TEARDOWN:I = 0x270f


# instance fields
.field private mBufferedTextToIncall:Ljava/lang/StringBuffer;

.field private mBufferedTextToNetwork:Ljava/lang/StringBuffer;

.field private mCodepointsAvailableForTransmission:I

.field private final mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

.field private mReadNotifier:Ljava/util/concurrent/CountDownLatch;

.field private mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

.field private mRttTextStream:Landroid/telecom/Connection$RttTextStream;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x1e

    .line 110
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 111
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 115
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    .line 206
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReadNotifier:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public getNetworkBufferText()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "RTT text stream is null"

    const-string v3, "ImsRttTextHandler"

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    const/16 v7, 0x270f

    if-eq v0, v1, :cond_5

    const-wide/16 v1, 0x3e8

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v7, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->interrupt()V

    .line 193
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    .line 198
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    goto :goto_0

    .line 184
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 185
    iget p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    if-lez p1, :cond_4

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 164
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 164
    invoke-virtual {p1, v6, v0}, Ljava/lang/StringBuffer;->codePointCount(II)I

    move-result p1

    .line 166
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6, p1}, Ljava/lang/StringBuffer;->offsetByCodePoints(II)I

    move-result v0

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mNetworkWriter:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;->write(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mCodepointsAvailableForTransmission:I

    .line 180
    invoke-virtual {p0, v4, p1, v6}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 179
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_0
    return-void

    .line 135
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_6

    .line 137
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_6
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/telecom/Connection$RttTextStream;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "IOException encountered writing to in-call: %s"

    .line 143
    invoke-static {v3, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToIncall:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 150
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mBufferedTextToNetwork:Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Ljava/lang/StringBuffer;->codePointCount(II)I

    move-result p1

    if-lt p1, v4, :cond_8

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_8
    const-wide/16 v0, 0xc8

    .line 158
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    if-eqz v0, :cond_a

    goto :goto_1

    .line 126
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/Connection$RttTextStream;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez p1, :cond_b

    .line 128
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;-><init>(Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;Landroid/telecom/Connection$RttTextStream;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReaderThread:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$InCallReaderThread;->start()V

    return-void

    :cond_c
    :goto_1
    const-string p1, "RTT text stream already initialized. Ignoring."

    .line 123
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initialize(Landroid/telecom/Connection$RttTextStream;)V
    .locals 2

    .line 214
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Initializing: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRttTextHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendToInCall(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 210
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setReadNotifier(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->mReadNotifier:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public tearDown()V
    .locals 1

    const/16 v0, 0x270f

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
