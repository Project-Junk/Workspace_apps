.class public Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;
.super Ljava/lang/Object;
.source "ApduSender.java"


# static fields
.field private static final INS_GET_MORE_RESPONSE:I = 0xc0

.field private static final LOG_TAG:Ljava/lang/String; = "ApduSender"

.field private static final STATUS_NO_ERROR:I = 0x9000

.field private static final SW1_MORE_RESPONSE:I = 0x61


# instance fields
.field private final mAid:Ljava/lang/String;

.field private final mChannelLock:Ljava/lang/Object;

.field private mChannelOpened:Z

.field private final mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

.field private final mOpenChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

.field private final mSupportExtendedApdu:Z

.field private final mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Z)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelLock:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mAid:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mSupportExtendedApdu:Z

    .line 73
    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mOpenChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

    .line 74
    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    .line 75
    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelOpened:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mAid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mSupportExtendedApdu:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->closeAndReturn(I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/util/List;ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->sendCommand(Ljava/util/List;ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->getCompleteResponse(ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private closeAndReturn(I[BLjava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/lang/Throwable;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mCloseChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$4;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;[B)V

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/internal/telephony/uicc/euicc/apdu/CloseLogicalChannelInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private getCompleteResponse(ILcom/android/internal/telephony/uicc/IccIoResult;Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/IccIoResult;",
            "Ljava/io/ByteArrayOutputStream;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Lcom/android/internal/telephony/uicc/IccIoResult;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    if-nez p3, :cond_0

    .line 200
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    .line 201
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v1, :cond_1

    .line 203
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :catch_0
    :cond_1
    iget v1, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2

    .line 209
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v1, p4

    .line 210
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_2
    move-object/from16 v8, p0

    move-object/from16 v1, p4

    .line 214
    iget-object v9, v8, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    new-instance v7, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    const/4 v12, 0x0

    const/16 v13, 0xc0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const-string v17, ""

    move-object v10, v7

    move/from16 v11, p1

    move/from16 v16, v0

    invoke-direct/range {v10 .. v17}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;-><init>(IIIIIILjava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;

    move-object v2, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p4

    move-object v1, v7

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$3;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;ILjava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    move-object/from16 v2, p5

    invoke-virtual {v9, v1, v0, v2}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ApduSender"

    .line 53
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendCommand(Ljava/util/List;ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;",
            ">;I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;

    .line 152
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mTransmitApdu:Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;

    new-instance v9, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-object v5, p4

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$2;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduCommand;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;ILjava/util/List;)V

    invoke-virtual {v8, v0, v9, p4}, Lcom/android/internal/telephony/uicc/euicc/apdu/TransmitApduLogicalChannelInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelOpened:Z

    if-eqz v1, :cond_0

    .line 96
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    const-string v1, "Logical channel has already been opened."

    invoke-direct {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->throwException(Ljava/lang/Throwable;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    .line 99
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mChannelOpened:Z

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mOpenChannel:Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->mAid:Ljava/lang/String;

    new-instance v2, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/internal/telephony/uicc/euicc/apdu/OpenLogicalChannelInvocation;->invoke(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    :catchall_0
    move-exception p1

    .line 102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
