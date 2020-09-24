.class public Lcom/android/internal/telephony/test/ModelInterpreter;
.super Ljava/lang/Object;
.source "ModelInterpreter.java"

# interfaces
.implements Lcom/android/internal/telephony/test/SimulatedRadioControl;
.implements Ljava/lang/Runnable;


# static fields
.field static final CONNECTING_PAUSE_MSEC:I = 0x1f4

.field static final LOG_TAG:Ljava/lang/String; = "ModelInterpreter"

.field static final MAX_CALLS:I = 0x6

.field static final PROGRESS_CALL_STATE:I = 0x1

.field static final sDefaultResponses:[[Ljava/lang/String;


# instance fields
.field private mFinalResponse:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mIn:Ljava/io/InputStream;

.field mLineReader:Lcom/android/internal/telephony/test/LineReader;

.field mOut:Ljava/io/OutputStream;

.field mPausedResponseCount:I

.field mPausedResponseMonitor:Ljava/lang/Object;

.field mSS:Ljava/net/ServerSocket;

.field mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1f

    .line 657
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "E0Q0V1"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "+CMEE=2"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "+CREG=2"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "+CGREG=2"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "+CCWA=1"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "+COPS=0"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "+CFUN=1"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "+CGMI"

    const-string v2, "+CGMI: Android Model AT Interpreter\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "+CGMM"

    const-string v2, "+CGMM: Android Model AT Interpreter\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "+CGMR"

    const-string v2, "+CGMR: 1.0\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "+CGSN"

    const-string v2, "000000000000000\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "+CIMI"

    const-string v2, "320720000000000\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "+CSCS=?"

    const-string v2, "+CSCS: (\"HEX\",\"UCS2\")\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "+CFUN?"

    const-string v2, "+CFUN: 1\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "+COPS=3,0;+COPS?;+COPS=3,1;+COPS?;+COPS=3,2;+COPS?"

    const-string v2, "+COPS: 0,0,\"Android\"\r+COPS: 0,1,\"Android\"\r+COPS: 0,2,\"310995\"\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "+CREG?"

    const-string v2, "+CREG: 2,5, \"0113\", \"6614\"\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "+CGREG?"

    const-string v2, "+CGREG: 2,0\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "+CSQ"

    const-string v2, "+CSQ: 16,99\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "+CNMI?"

    const-string v2, "+CNMI: 1,2,2,1,1\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "+CLIR?"

    const-string v2, "+CLIR: 1,3\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "%CPVWI=2"

    const-string v2, "%CPVWI: 0\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "+CUSD=1,\"#646#\""

    const-string v2, "+CUSD=0,\"You have used 23 minutes\"\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "+CRSM=176,12258,0,0,10"

    const-string v2, "+CRSM: 144,0,981062200050259429F6\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "+CRSM=192,12258,0,0,15"

    const-string v2, "+CRSM: 144,0,0000000A2FE204000FF55501020000\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "+CRSM=192,28474,0,0,15"

    const-string v2, "+CRSM: 144,0,0000005a6f3a040011f5220102011e\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,1,4,30"

    const-string v2, "+CRSM: 144,0,437573746f6d65722043617265ffffff07818100398799f7ffffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,2,4,30"

    const-string v2, "+CRSM: 144,0,566f696365204d61696cffffffffffff07918150367742f3ffffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,3,4,30"

    const-string v2, "+CRSM: 144,0,4164676a6dffffffffffffffffffffff0b918188551512c221436587ff01\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28474,4,4,30"

    const-string v2, "+CRSM: 144,0,810101c1ffffffffffffffffffffffff068114455245f8ffffffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "+CRSM=192,28490,0,0,15"

    const-string v2, "+CRSM: 144,0,000000416f4a040011f5550102010d\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "+CRSM=178,28490,1,4,13"

    const-string v2, "+CRSM: 144,0,0206092143658709ffffffffff\r"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ModelInterpreter"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    return-void
.end method

.method private onAnswer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 450
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onCHLD(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    const/4 v0, 0x6

    .line 476
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x7

    .line 479
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 482
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onChld(CC)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 485
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v0, "ERROR"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onCLCC()V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->getClccLines()Ljava/util/List;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 509
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDial(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onDial(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 497
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v0, "ERROR"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onHangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->onAnswer()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NO CARRIER"

    .line 465
    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    return-void

    .line 462
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onSMSSend(Ljava/lang/String;)V
    .locals 0

    const-string p1, "> "

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->print(Ljava/lang/String;)V

    .line 519
    iget-object p1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    invoke-virtual {p1}, Lcom/android/internal/telephony/test/LineReader;->getNextLineCtrlZ()Ljava/lang/String;

    const-string p1, "+CMGS: 1"

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public pauseResponses()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    .line 424
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method print(Ljava/lang/String;)V
    .locals 1

    .line 623
    monitor-enter p0

    :try_start_0
    const-string v0, "US-ASCII"

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 631
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 633
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method println(Ljava/lang/String;)V
    .locals 1

    .line 606
    monitor-enter p0

    :try_start_0
    const-string v0, "US-ASCII"

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 613
    iget-object p1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 615
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 617
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method processLine(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->splitCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 531
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_a

    .line 532
    aget-object v2, p1, v1

    const-string v3, "A"

    .line 534
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onAnswer()V

    goto :goto_3

    :cond_0
    const-string v3, "H"

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onHangup()V

    goto :goto_3

    :cond_1
    const-string v3, "+CHLD="

    .line 538
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCHLD(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v3, "+CLCC"

    .line 540
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 541
    invoke-direct {p0}, Lcom/android/internal/telephony/test/ModelInterpreter;->onCLCC()V

    goto :goto_3

    :cond_3
    const-string v3, "D"

    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 543
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/test/ModelInterpreter;->onDial(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v3, "+CMGS="

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 545
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/test/ModelInterpreter;->onSMSSend(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v3, v0

    .line 549
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_7

    .line 550
    aget-object v4, v4, v3

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 551
    sget-object v2, Lcom/android/internal/telephony/test/ModelInterpreter;->sDefaultResponses:[[Ljava/lang/String;

    aget-object v2, v2, v3

    aget-object v2, v2, v6

    if-eqz v2, :cond_8

    .line 553
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v6, v0

    :cond_8
    :goto_2
    if-eqz v6, :cond_9

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_9
    new-instance p1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v0, "ERROR"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return-void
.end method

.method public progressConnectingCallState()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingCallState()V

    return-void
.end method

.method public progressConnectingToActive()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->progressConnectingToActive()V

    return-void
.end method

.method public resumeResponses()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    .line 434
    iget v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 437
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    .line 214
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "ModelInterpreter"

    const-string v1, "New connection accepted"

    .line 221
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ModelInterpreter"

    const-string v2, "IOException on accepted socket(); re-listening"

    .line 216
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ModelInterpreter"

    const-string v2, "IOException on socket.accept(); stopping"

    .line 207
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 225
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/test/LineReader;

    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/test/LineReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    const-string v0, "Welcome"

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mLineReader:Lcom/android/internal/telephony/test/LineReader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/LineReader;->getNextLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :catch_2
    :goto_3
    :try_start_2
    iget v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v2, :cond_2

    .line 243
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mPausedResponseMonitor:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 247
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    monitor-enter p0

    :try_start_5
    const-string v1, "OK"

    .line 251
    iput-object v1, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->processLine(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mFinalResponse:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/android/internal/telephony/test/InterpreterEx; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 257
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "ERROR"

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 255
    iget-object v0, v0, Lcom/android/internal/telephony/test/InterpreterEx;->mResult:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 260
    :goto_4
    monitor-exit p0

    goto :goto_2

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 247
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_3
    const-string v0, "ModelInterpreter"

    const-string v1, "Disconnected"

    .line 263
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSS:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    return-void
.end method

.method public sendUnsolicited(Ljava/lang/String;)V
    .locals 0

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 380
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAutoProgressConnectingCall(Z)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setAutoProgressConnectingCall(Z)V

    return-void
.end method

.method public setNextCallFailCause(I)V
    .locals 0

    return-void
.end method

.method public setNextDialFailImmediately(Z)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->setNextDialFailImmediately(Z)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 647
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method splitCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/test/InterpreterEx;
        }
    .end annotation

    const-string v0, "AT"

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 577
    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 580
    new-array v0, v0, [Ljava/lang/String;

    .line 583
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0

    .line 572
    :cond_1
    new-instance p1, Lcom/android/internal/telephony/test/InterpreterEx;

    const-string v0, "ERROR"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/test/InterpreterEx;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public triggerHangupAll()V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupAll()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NO CARRIER"

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public triggerHangupBackground()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NO CARRIER"

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public triggerHangupForeground()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerHangupForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NO CARRIER"

    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public triggerIncomingSMS(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public triggerIncomingUssd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public triggerRing(Ljava/lang/String;)V
    .locals 1

    .line 280
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/ModelInterpreter;->mSimulatedCallState:Lcom/android/internal/telephony/test/SimulatedGsmCallState;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/test/SimulatedGsmCallState;->triggerRing(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RING"

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/test/ModelInterpreter;->println(Ljava/lang/String;)V

    .line 288
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public triggerSsn(II)V
    .locals 0

    return-void
.end method
