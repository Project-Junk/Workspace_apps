.class public Lcom/android/internal/telephony/dataconnection/ApnContext;
.super Ljava/lang/Object;
.source "ApnContext.java"


# static fields
.field protected static final DBG:Z = false

.field private static final SLOG_TAG:Ljava/lang/String; = "ApnContext"


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mApnSetting:Landroid/telephony/data/ApnSetting;

.field private final mApnType:Ljava/lang/String;

.field private mConcurrentVoiceAndDataAllowed:Z

.field private final mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLocalLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field mReason:Ljava/lang/String;

.field mReconnectAlarmIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private final mRefCountLock:Ljava/lang/Object;

.field private final mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

.field private final mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mState:Lcom/android/internal/telephony/DctConstants$State;

.field private final mStateLocalLog:Landroid/util/LocalLog;

.field public final priority:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCount:I

    .line 98
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    .line 407
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mStateLocalLog:Landroid/util/LocalLog;

    .line 482
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    .line 117
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    const-string v1, "dataEnabled"

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p4, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    iget p4, p4, Landroid/net/NetworkConfig;->priority:I

    iput p4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    .line 122
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 124
    new-instance p3, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {p3, p1, p2}, Lcom/android/internal/telephony/RetryManager;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    return-void
.end method

.method static getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 7

    .line 581
    iget-object v0, p0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 583
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 584
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xc

    .line 593
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    move v1, v2

    .line 596
    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    move v2, v5

    :cond_2
    move v1, v4

    .line 600
    :cond_3
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    const/4 v6, 0x4

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    move v2, v5

    :cond_4
    move v1, v6

    .line 604
    :cond_5
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    move v2, v5

    :cond_6
    const/16 v1, 0x8

    :cond_7
    const/4 v3, 0x3

    .line 608
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    move v2, v5

    :cond_8
    const/16 v1, 0x20

    .line 612
    :cond_9
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    move v2, v5

    :cond_a
    const/16 v1, 0x40

    :cond_b
    const/4 v3, 0x5

    .line 616
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v1, :cond_c

    move v2, v5

    :cond_c
    const/16 v1, 0x80

    :cond_d
    const/4 v3, 0x7

    .line 620
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v1, :cond_e

    move v2, v5

    :cond_e
    const/16 v1, 0x100

    :cond_f
    const/16 v3, 0xa

    .line 624
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    move v2, v5

    :cond_10
    const/16 v1, 0x200

    :cond_11
    const/16 v3, 0x17

    .line 628
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v1, :cond_12

    move v2, v5

    :cond_12
    const/16 v1, 0x400

    :cond_13
    const-string v0, "ApnContext"

    if-eqz v2, :cond_14

    const-string v2, "Multiple apn types specified in request - result is unspecified!"

    .line 637
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-nez v1, :cond_15

    .line 640
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v1
.end method

.method public static getApnTypeFromNetworkType(I)I
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x80

    return p0

    :pswitch_1
    const/16 p0, 0x40

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 p0, 0x200

    return p0

    :cond_1
    const/16 p0, 0x100

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    return v1

    :cond_4
    return v0

    :cond_5
    const/16 p0, 0x11

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFastRetryReason()Z
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    const-string v1, "nwTypeChanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    const-string v1, "apnChanged"

    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ApnContext:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 665
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 666
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter p2

    .line 667
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "NetworkRequests:"

    .line 669
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 671
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 672
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 676
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LocalLog;

    .line 678
    invoke-virtual {v2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v2, "-----"

    .line 679
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 681
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Historical APN state:"

    .line 682
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 684
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mStateLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 686
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "--------------------------"

    .line 687
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 688
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 1

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getApnTypeBitmask()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConnectionGeneration()I
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDelayForNextApn(Z)J
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isFastRetryReason()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->getDelayForNextApn(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetworkRequests()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNextApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getNextApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getReason()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReconnectIntent()Landroid/app/PendingIntent;
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRetryAfterDisconnectDelay()J
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryAfterDisconnectDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasRestrictedRequests(Z)Z
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    if-eqz p1, :cond_1

    .line 468
    iget-object v3, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x2

    .line 469
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    :cond_1
    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 475
    monitor-exit v0

    return p1

    .line 478
    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public incAndGetConnectionGeneration()I
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConnectionGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    monitor-enter p0

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnectable()Z
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isDependencyMet()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isProvisioningApn()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104043a

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public markApnPermanentFailed(Landroid/telephony/data/ApnSetting;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->markApnPermanentFailed(Landroid/telephony/data/ApnSetting;)V

    return-void
.end method

.method public declared-synchronized releaseDataConnection(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 170
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 172
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ApnContext.releaseNetwork can\'t find this log"

    .line 436
    invoke-virtual {p3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "ApnContext.releaseNetwork can\'t find this request ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz p1, :cond_2

    .line 448
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->reevaluateDataConnectionProperties()V

    .line 450
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "ApnContext.releaseNetwork left with "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requests."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {p3}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->disableApn(II)V

    .line 458
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestLog(Ljava/lang/String;)V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LocalLog;

    .line 412
    invoke-virtual {v2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;ILandroid/os/Message;Landroid/util/LocalLog;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRefCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mLocalLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mNetworkRequests:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-static {p4}, Landroid/telephony/data/ApnSetting;->getApnTypesBitmaskFromString(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApn(IILandroid/os/Message;)V

    .line 424
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    if-eqz p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->reevaluateDataConnectionProperties()V

    .line 429
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetErrorCodeRetries()V
    .locals 9

    const-string v0, "ApnContext.resetErrorCodeRetries"

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 493
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    const-string v6, ","

    .line 494
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 495
    array-length v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 499
    :try_start_1
    aget-object v5, v6, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    .line 500
    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v6, :cond_1

    if-lez v5, :cond_1

    .line 506
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :catch_0
    move-exception v5

    :cond_0
    const-string v6, "Exception parsing config_retries_per_error_code: "

    .line 509
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 512
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public restartOnError(I)Z
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    .line 531
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetriesLeftPerErrorCode:Landroid/util/SparseIntArray;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->resetErrorCodeRetries()V

    move v2, v3

    .line 535
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ApnContext.restartOnError("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and returned "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p1

    .line 535
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setApnSetting(Landroid/telephony/data/ApnSetting;)V
    .locals 0

    monitor-enter p0

    .line 206
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConcurrentVoiceAndDataAllowed(Z)V
    .locals 0

    monitor-enter p0

    .line 266
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mConcurrentVoiceAndDataAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    monitor-enter p0

    .line 160
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataConnection:Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setModemSuggestedDelay(J)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/RetryManager;->setModemSuggestedDelay(J)V

    return-void
.end method

.method public declared-synchronized setReason(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 324
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 0

    monitor-enter p0

    .line 188
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReconnectAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 3

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mStateLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State changed from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne p1, v0, :cond_1

    .line 292
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setWaitingApns(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->setWaitingApns(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 654
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mApnType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mWaitingApns={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 655
    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} mApnSetting={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDataEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDependencyMet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnContext;->mDependencyMet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
