.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DcNetworkAgent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;
    }
.end annotation


# static fields
.field private static sSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;

.field private mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private final mNetCapsLocalLog:Landroid/util/LocalLog;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTag:Ljava/lang/String;

.field private mTransportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2419
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkInfo;ILandroid/net/NetworkMisc;II)V
    .locals 12

    move-object v10, p0

    move-object v11, p2

    .line 2424
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2425
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    move-object v0, p0

    move-object v3, p2

    move-object/from16 v4, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 2424
    invoke-direct/range {v0 .. v9}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;I)V

    .line 2413
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->keepaliveTracker:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent$DcKeepaliveTracker;

    .line 2417
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetCapsLocalLog:Landroid/util/LocalLog;

    .line 2427
    iput-object v11, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTag:Ljava/lang/String;

    move-object v0, p3

    .line 2428
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2429
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    move/from16 v0, p8

    .line 2430
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTransportType:I

    move-object v0, p1

    .line 2431
    iput-object v0, v10, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " created for data connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V
    .locals 0

    .line 2404
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;Ljava/lang/String;)V
    .locals 0

    .line 2404
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static createDcNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkInfo;ILandroid/net/NetworkMisc;II)Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    .locals 11

    .line 2452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DcNetworkAgent-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sSerialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2453
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkInfo;ILandroid/net/NetworkMisc;II)V

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    .line 2647
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized acquireOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .locals 0

    monitor-enter p0

    .line 2465
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2466
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTransportType:I

    .line 2467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " acquired the ownership of this agent."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2633
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2634
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Net caps logs:"

    .line 2636
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetCapsLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2638
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method protected declared-synchronized networkStatus(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2515
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "networkStatus called on no-owner DcNetworkAgent!"

    .line 2516
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    monitor-exit p0

    return-void

    .line 2520
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "validation status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with redirection URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V

    .line 2521
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTransportType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x4202c

    const/4 v2, 0x0

    .line 2523
    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2525
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2527
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized pollLceData()V
    .locals 3

    monitor-enter p0

    .line 2501
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string v0, "pollLceData called on no-owner DcNetworkAgent!"

    .line 2502
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2503
    monitor-exit p0

    return-void

    .line 2506
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLceStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTransportType:I

    if-ne v0, v1, :cond_1

    .line 2508
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x4000e

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->pullLceData(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2511
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2

    monitor-enter p0

    .line 2474
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "releaseOwnership called on no-owner DcNetworkAgent!"

    .line 2475
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2476
    monitor-exit p0

    return-void

    .line 2477
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eq v0, p1, :cond_1

    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "releaseOwnership: This agent belongs to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2479
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ignored the request from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2478
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2480
    monitor-exit p0

    return-void

    .line 2482
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Data connection "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " released the ownership."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2483
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2484
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1

    monitor-enter p0

    .line 2554
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "sendLinkProperties called on no-owner DcNetworkAgent!"

    .line 2555
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2556
    monitor-exit p0

    return-void

    .line 2557
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eq v0, p2, :cond_1

    .line 2558
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendLinkProperties: This agent belongs to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2559
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignored the request from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2560
    monitor-exit p0

    return-void

    .line 2562
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2563
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendNetworkCapabilities(Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1

    monitor-enter p0

    .line 2531
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "sendNetworkCapabilities called on no-owner DcNetworkAgent!"

    .line 2532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2533
    monitor-exit p0

    return-void

    .line 2534
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eq v0, p2, :cond_1

    .line 2535
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendNetworkCapabilities: This agent belongs to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2536
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignored the request from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2537
    monitor-exit p0

    return-void

    .line 2540
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2541
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Changed from "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Data RAT="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2543
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dc="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2544
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2545
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetCapsLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2547
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2549
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2550
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendNetworkInfo(Landroid/net/NetworkInfo;Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1

    monitor-enter p0

    .line 2578
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "sendNetworkInfo called on no-owner DcNetworkAgent!"

    .line 2579
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2580
    monitor-exit p0

    return-void

    .line 2581
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eq v0, p2, :cond_1

    .line 2582
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendNetworkInfo: This agent belongs to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2583
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignored the request from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2582
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2584
    monitor-exit p0

    return-void

    .line 2586
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2587
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendNetworkScore(ILcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1

    monitor-enter p0

    .line 2566
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "sendNetworkScore called on no-owner DcNetworkAgent!"

    .line 2567
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    monitor-exit p0

    return-void

    .line 2569
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eq v0, p2, :cond_1

    .line 2570
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendNetworkScore: This agent belongs to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2571
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignored the request from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2570
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2572
    monitor-exit p0

    return-void

    .line 2574
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sendNetworkScore(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2575
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized startSocketKeepalive(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    .line 2591
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "startSocketKeepalive called on no-owner DcNetworkAgent!"

    .line 2592
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    monitor-exit p0

    return-void

    .line 2596
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/net/NattKeepalivePacketData;

    if-eqz v0, :cond_1

    .line 2597
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v1, 0x40015

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2598
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 2600
    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, -0x1e

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->onSocketKeepaliveEvent(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2602
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized stopSocketKeepalive(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    .line 2606
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string p1, "stopSocketKeepalive called on no-owner DcNetworkAgent!"

    .line 2607
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    monitor-exit p0

    return-void

    .line 2611
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v1, 0x40016

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2612
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2613
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DcNetworkAgent: mDataConnection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2619
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mTransportType:I

    .line 2621
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized unwanted()V
    .locals 4

    monitor-enter p0

    .line 2488
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-nez v0, :cond_0

    const-string v0, "Unwanted found called on no-owner DcNetworkAgent!"

    .line 2489
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    monitor-exit p0

    return-void

    .line 2493
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unwanted called. Now tear down the data connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2494
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2493
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->logd(Ljava/lang/String;)V

    .line 2495
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "releasedByConnectivityService"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
