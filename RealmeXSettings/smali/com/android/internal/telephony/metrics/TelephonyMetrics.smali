.class public Lcom/android/internal/telephony/metrics/TelephonyMetrics;
.super Ljava/lang/Object;
.source "TelephonyMetrics.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAX_COMPLETED_CALL_SESSIONS:I = 0x32

.field private static final MAX_COMPLETED_SMS_SESSIONS:I = 0x1f4

.field private static final MAX_TELEPHONY_EVENTS:I = 0x3e8

.field private static final SESSION_START_PRECISION_MINUTES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TelephonyMetrics"

.field private static final VDBG:Z = false

.field private static sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;


# instance fields
.field private final mCompletedCallSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletedSmsSessions:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressCallSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mInProgressSmsSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/metrics/InProgressSmsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastActiveSubscriptionInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastCarrierId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;",
            ">;"
        }
    .end annotation
.end field

.field private mLastEnabledModemBitmap:I

.field private final mLastImsCapabilities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastImsConnectionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastRilDataCallEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLastServiceState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSettings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastSimState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStartElapsedTimeMs:J

.field private mStartSystemTimeMs:J

.field private final mTelephonyEvents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyEventsDropped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    .line 147
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    .line 150
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    .line 159
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    .line 195
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    return-void
.end method

.method private declared-synchronized addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    .locals 2

    monitor-enter p0

    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1081
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    .locals 1

    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-eqz p3, :cond_0

    .line 916
    invoke-virtual {p3, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    .locals 1

    monitor-enter p0

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-eqz p3, :cond_0

    .line 931
    invoke-virtual {p3, p1, p2, p4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;
    .locals 7

    monitor-enter p0

    .line 657
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;-><init>()V

    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 661
    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->eventsDropped:Z

    .line 664
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 665
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->callSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->smsSessions:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 672
    invoke-static {}, Lcom/android/internal/telephony/RIL;->getTelephonyRILTimingHistograms()Ljava/util/List;

    move-result-object v1

    .line 673
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    iput-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    const/4 v2, 0x0

    move v3, v2

    .line 674
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 675
    iget-object v4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    new-instance v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    invoke-direct {v5}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;-><init>()V

    aput-object v5, v4, v3

    .line 676
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 677
    iget-object v5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->histograms:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;

    aget-object v5, v5, v3

    .line 679
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getCategory()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->category:I

    .line 680
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->id:I

    .line 681
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getMinTime()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->minTimeMillis:I

    .line 682
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getMaxTime()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->maxTimeMillis:I

    .line 683
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getAverageTime()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->avgTimeMillis:I

    .line 684
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getSampleCount()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->count:I

    .line 685
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getBucketCount()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCount:I

    .line 686
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getBucketEndPoints()[I

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketEndPoints:[I

    .line 687
    invoke-virtual {v4}, Landroid/telephony/TelephonyHistogram;->getBucketCounters()[I

    move-result-object v4

    iput-object v4, v5, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyHistogram;->bucketCounters:[I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->modemPowerStats:Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    const-string v1, "ro.boot.revision"

    const-string v3, ""

    .line 694
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->hardwareRevision:Ljava/lang/String;

    .line 697
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 698
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 699
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->startTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    iget-wide v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    .line 701
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$Time;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    .line 702
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->systemTimestampMillis:J

    .line 703
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->endTime:Lcom/android/internal/telephony/nano/TelephonyProto$Time;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$Time;->elapsedTimestampMillis:J

    .line 706
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 707
    new-array v3, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move v4, v2

    .line 709
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 710
    iget-object v5, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 711
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    aput-object v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    .line 714
    aget-object v4, v3, v2

    if-nez v4, :cond_2

    .line 715
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->makeInvalidSubscriptionInfo(I)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 718
    :cond_3
    iput-object v3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->lastActiveSubscriptionInfo:[Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static callSessionEventToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 368
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "AUDIO_CODEC"

    return-object p0

    :pswitch_1
    const-string p0, "NITZ_TIME"

    return-object p0

    :pswitch_2
    const-string p0, "PHONE_STATE_CHANGED"

    return-object p0

    :pswitch_3
    const-string p0, "IMS_CALL_HANDOVER_FAILED"

    return-object p0

    :pswitch_4
    const-string p0, "IMS_CALL_HANDOVER"

    return-object p0

    :pswitch_5
    const-string p0, "IMS_CALL_TERMINATED"

    return-object p0

    :pswitch_6
    const-string p0, "IMS_CALL_STATE_CHANGED"

    return-object p0

    :pswitch_7
    const-string p0, "IMS_CALL_RECEIVE"

    return-object p0

    :pswitch_8
    const-string p0, "IMS_COMMAND_COMPLETE"

    return-object p0

    :pswitch_9
    const-string p0, "IMS_COMMAND_FAILED"

    return-object p0

    :pswitch_a
    const-string p0, "IMS_COMMAND_RECEIVED"

    return-object p0

    :pswitch_b
    const-string p0, "IMS_COMMAND"

    return-object p0

    :pswitch_c
    const-string p0, "RIL_CALL_LIST_CHANGED"

    return-object p0

    :pswitch_d
    const-string p0, "RIL_CALL_SRVCC"

    return-object p0

    :pswitch_e
    const-string p0, "RIL_CALL_RING"

    return-object p0

    :pswitch_f
    const-string p0, "RIL_RESPONSE"

    return-object p0

    :pswitch_10
    const-string p0, "RIL_REQUEST"

    return-object p0

    :pswitch_11
    const-string p0, "DATA_CALL_LIST_CHANGED"

    return-object p0

    :pswitch_12
    const-string p0, "IMS_CAPABILITIES_CHANGED"

    return-object p0

    :pswitch_13
    const-string p0, "IMS_CONNECTION_STATE_CHANGED"

    return-object p0

    :pswitch_14
    const-string p0, "RIL_SERVICE_STATE_CHANGED"

    return-object p0

    :pswitch_15
    const-string p0, "SETTINGS_CHANGED"

    return-object p0

    :pswitch_16
    const-string p0, "EVENT_UNKNOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V
    .locals 4

    .line 1456
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isIncoming()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1457
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    goto :goto_0

    .line 1459
    :cond_0
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    .line 1461
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 1490
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x9

    .line 1487
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8

    .line 1484
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    .line 1481
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x6

    .line 1478
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    .line 1475
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    .line 1472
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x3

    .line 1469
    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    .line 1466
    :pswitch_7
    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    goto :goto_1

    .line 1463
    :pswitch_8
    iput v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    .line 1493
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getDisconnectCause()I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    .line 1494
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    .line 1495
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getPreciseDisconnectCause()I

    move-result p1

    iput p1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method private convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)[",
            "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;"
        }
    .end annotation

    .line 1446
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    const/4 v1, 0x0

    .line 1447
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1448
    new-instance v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v2, v0, v1

    .line 1449
    aget-object v2, v0, v1

    iput v1, v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1450
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    aget-object v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertGsmCdmaCodec(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x6

    return p1

    :pswitch_2
    const/4 p1, 0x5

    return p1

    :pswitch_3
    const/4 p1, 0x4

    return p1

    :pswitch_4
    const/16 p1, 0xa

    return p1

    :pswitch_5
    const/16 p1, 0x9

    return p1

    :pswitch_6
    const/16 p1, 0x8

    return p1

    :pswitch_7
    const/4 p1, 0x2

    return p1

    :pswitch_8
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method private convertImsCodec(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/16 p1, 0x14

    return p1

    :pswitch_1
    const/16 p1, 0x13

    return p1

    :pswitch_2
    const/16 p1, 0x12

    return p1

    :pswitch_3
    const/16 p1, 0x11

    return p1

    :pswitch_4
    const/16 p1, 0x10

    return p1

    :pswitch_5
    const/16 p1, 0xf

    return p1

    :pswitch_6
    const/16 p1, 0xe

    return p1

    :pswitch_7
    const/16 p1, 0xd

    return p1

    :pswitch_8
    const/16 p1, 0xc

    return p1

    :pswitch_9
    const/16 p1, 0xb

    return p1

    :pswitch_a
    const/16 p1, 0xa

    return p1

    :pswitch_b
    const/16 p1, 0x9

    return p1

    :pswitch_c
    const/16 p1, 0x8

    return p1

    :pswitch_d
    const/4 p1, 0x7

    return p1

    :pswitch_e
    const/4 p1, 0x6

    return p1

    :pswitch_f
    const/4 p1, 0x5

    return p1

    :pswitch_10
    const/4 p1, 0x4

    return p1

    :pswitch_11
    const/4 p1, 0x3

    return p1

    :pswitch_12
    const/4 p1, 0x2

    return p1

    :pswitch_13
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private static convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;
    .locals 1

    .line 577
    invoke-static {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 576
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertSmsFormat(Ljava/lang/String;)I
    .locals 4

    .line 2378
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x18bf94

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x2ff331e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "3gpp2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2
.end method

.method private disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z
    .locals 4

    .line 1439
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1440
    iget v3, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private declared-synchronized finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V
    .locals 3

    monitor-enter p0

    .line 1030
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;-><init>()V

    .line 1031
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 1032
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1033
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    .line 1034
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    .line 1035
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isEventsDropped()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    .line 1036
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->phoneId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const-string p1, "Call session finished"

    .line 1041
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
    .locals 3

    .line 1059
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;-><init>()V

    .line 1060
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 1061
    iget-object v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->events:Ljava/util/Deque;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-interface {v1, v2}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1062
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startSystemTimeMin:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    .line 1063
    iget v1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    .line 1064
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->isEventsDropped()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    .line 1066
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/16 v1, 0x1f4

    if-lt p1, v1, :cond_0

    .line 1067
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 1069
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private declared-synchronized finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    .locals 1

    monitor-enter p0

    .line 1050
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->getNumExpectedResponses()I

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->phoneId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const-string p1, "SMS session finished"

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getCallId(Landroid/telephony/ims/ImsCallSession;)I
    .locals 1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1873
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    monitor-enter v0

    .line 228
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 232
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->sInstance:Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$updateActiveSubscriptionInfoList$0(ILjava/lang/Integer;)Z
    .locals 0

    .line 742
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static makeInvalidSubscriptionInfo(I)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;
    .locals 1

    .line 772
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    .line 773
    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    const/4 p0, -0x1

    .line 774
    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    .line 775
    iput p0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    return-object v0
.end method

.method private static mapSimStateToProto(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method private declared-synchronized printAllMetrics(Ljava/io/PrintWriter;)V
    .locals 13

    monitor-enter p0

    .line 410
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "Telephony metrics proto:"

    .line 412
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "------------------------------------------"

    .line 413
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Telephony events:"

    .line 414
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 417
    iget-wide v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const-string v3, " ["

    .line 418
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 419
    iget v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v3, "] "

    .line 420
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "T="

    .line 422
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 423
    iget v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-ne v3, v2, :cond_0

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(Data RAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v3, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Voice RAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v3, v3, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Channel Number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_0
    iget v1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    invoke-static {v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->telephonyEventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    const-string v1, ""

    .line 433
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Call sessions:"

    .line 437
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 440
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Start time in minutes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->startTimeMinutes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ", phone: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->phoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 443
    iget-boolean v5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    if-eqz v5, :cond_2

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Events dropped: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->eventsDropped:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string v5, " Events: "

    .line 447
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 449
    iget-object v1, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    array-length v5, v1

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_7

    aget-object v7, v1, v6

    .line 450
    iget v8, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v8, " T="

    .line 451
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 452
    iget v8, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-ne v8, v2, :cond_3

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "(Data RAT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v9, v9, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Voice RAT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v9, v9, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Channel Number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    iget v7, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 458
    :cond_3
    iget v8, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-ne v8, v3, :cond_5

    .line 459
    iget v8, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v8}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 461
    iget-object v7, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v8, v7

    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 462
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ". Type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->state:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " End Reason "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->callEndReason:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " Precise Disconnect Cause "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->preciseDisconnectCause:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " isMultiparty = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v10, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->isMultiparty:Z

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 467
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_5

    .line 468
    :cond_5
    iget v8, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    const/16 v9, 0x16

    if-ne v8, v9, :cond_6

    .line 469
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 472
    :cond_6
    iget v7, v7, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    invoke-static {v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->callSessionEventToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 475
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_2

    .line 478
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Sms sessions:"

    .line 479
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 483
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v4

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    const/4 v6, 0x1

    add-int/2addr v1, v6

    .line 485
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] Start time in minutes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->startTimeMinutes:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 487
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", phone: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->phoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 488
    iget-boolean v7, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    if-eqz v7, :cond_9

    .line 489
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", events dropped: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->eventsDropped:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const-string v7, ""

    .line 491
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    const-string v7, "Events: "

    .line 493
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 495
    iget-object v5, v5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;->events:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    array-length v7, v5

    move v8, v4

    :goto_8
    if-ge v8, v7, :cond_13

    aget-object v9, v5, v8

    .line 496
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v10, " T="

    .line 497
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 498
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    invoke-static {v10}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->smsSessionEventToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_f

    .line 501
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 502
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eq v10, v6, :cond_d

    if-eq v10, v2, :cond_c

    const/4 v11, 0x3

    if-eq v10, v11, :cond_b

    const/4 v11, 0x4

    if-eq v10, v11, :cond_a

    goto :goto_9

    :cond_a
    const-string v10, "Type: WAP PUSH"

    .line 513
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    const-string v10, "Type: zero"

    .line 510
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    const-string v10, "Type: Voicemail indication"

    .line 507
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const-string v10, "Type: SMS-PP"

    .line 504
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 518
    :goto_9
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v10, :cond_e

    .line 519
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "E="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 521
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_b

    .line 522
    :cond_f
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_11

    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_10

    goto :goto_a

    .line 530
    :cond_10
    iget v10, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-ne v10, v3, :cond_12

    .line 531
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 532
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Received: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    iget v11, v11, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    iget v9, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_b

    .line 524
    :cond_11
    :goto_a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 525
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ReqId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "E="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RilE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ImsE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v9, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_12
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 537
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto/16 :goto_6

    .line 540
    :cond_14
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Modem power stats:"

    .line 541
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 543
    new-instance p1, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    move-result-object p1

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Power log duration (battery time) (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Energy consumed by modem (mAh): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of packets sent (tx): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of bytes sent (tx): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of packets received (rx): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of bytes received (rx): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time kernel is active because of cellular data (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time spent in very poor rx signal level (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time modem is in sleep (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time modem is in idle (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time modem is in rx (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time modem is in tx (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time phone spent in various Radio Access Technologies (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 559
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Amount of time phone spent in various cellular rx signal strength levels (ms): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 562
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Energy consumed across measured modem rails (mAh): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    .line 564
    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Hardware Version: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.boot.revision"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized reset()V
    .locals 8

    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEvents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedCallSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mCompletedSmsSessions:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    .line 588
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mTelephonyEventsDropped:Z

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartSystemTimeMs:J

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    move v1, v0

    .line 595
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 598
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 599
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 600
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 603
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 606
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 607
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 608
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 611
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 612
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 614
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 615
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 616
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 619
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 621
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    .line 622
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 623
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    .line 626
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 627
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 628
    new-instance v3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    .line 629
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 630
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    .line 633
    :goto_5
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 634
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 635
    :goto_6
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 636
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, 0x1

    .line 637
    new-array v5, v5, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 638
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    aput-object v4, v5, v0

    .line 639
    new-instance v4, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v6, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v4, v6, v7, v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    .line 640
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v4

    .line 639
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 643
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    .line 644
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSimStateChange(Landroid/util/SparseArray;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 643
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 646
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mStartElapsedTimeMs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(JI)V

    iget v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 647
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setEnabledModemBitmap(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 646
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static roundSessionStart(J)I
    .locals 2

    const-wide/32 v0, 0x493e0

    .line 786
    div-long/2addr p0, v0

    const-wide/16 v0, 0x5

    mul-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static smsSessionEventToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 400
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "INCOMPLETE_SMS_RECEIVED"

    return-object p0

    :pswitch_2
    const-string p0, "SMS_RECEIVED"

    return-object p0

    :pswitch_3
    const-string p0, "SMS_SEND_RESULT"

    return-object p0

    :pswitch_4
    const-string p0, "SMS_SEND"

    return-object p0

    :pswitch_5
    const-string p0, "DATA_CALL_LIST_CHANGED"

    return-object p0

    :pswitch_6
    const-string p0, "IMS_CAPABILITIES_CHANGED"

    return-object p0

    :pswitch_7
    const-string p0, "IMS_CONNECTION_STATE_CHANGED"

    return-object p0

    :pswitch_8
    const-string p0, "RIL_SERVICE_STATE_CHANGED"

    return-object p0

    :pswitch_9
    const-string p0, "SETTINGS_CHANGED"

    return-object p0

    :pswitch_a
    const-string p0, "EVENT_UNKNOWN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;
    .locals 6

    monitor-enter p0

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez v0, :cond_2

    const-string v0, "Starting a new call session on phone "

    .line 944
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 945
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;-><init>(I)V

    .line 946
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 950
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_0

    .line 952
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 954
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 952
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 957
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_1

    .line 959
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 961
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 959
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 964
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz p1, :cond_2

    .line 966
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance v3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 968
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p1

    .line 966
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 6

    .line 997
    new-instance v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;-><init>(I)V

    .line 1001
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_0

    .line 1003
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1005
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1003
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_1

    .line 1010
    iget-wide v2, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1012
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v1

    .line 1010
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1015
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz p1, :cond_2

    .line 1017
    iget-wide v1, v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->startElapsedTimeMs:J

    new-instance v3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1019
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p1

    .line 1017
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    :cond_2
    return-object v0
.end method

.method private declared-synchronized startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;
    .locals 2

    monitor-enter p0

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-nez v0, :cond_0

    const-string v0, "Starting a new sms session on phone "

    .line 983
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 984
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object v0

    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static telephonyEventToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 309
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CARRIER_ID_MATCHING"

    return-object p0

    :pswitch_1
    const-string p0, "NITZ_TIME"

    return-object p0

    :pswitch_2
    const-string p0, "MODEM_RESTART"

    return-object p0

    :pswitch_3
    const-string p0, "DATA_STALL_ACTION"

    return-object p0

    :pswitch_4
    const-string p0, "DATA_CALL_DEACTIVATE_RESPONSE"

    return-object p0

    :pswitch_5
    const-string p0, "DATA_CALL_DEACTIVATE"

    return-object p0

    :pswitch_6
    const-string p0, "DATA_CALL_LIST_CHANGED"

    return-object p0

    :pswitch_7
    const-string p0, "DATA_CALL_SETUP_RESPONSE"

    return-object p0

    :pswitch_8
    const-string p0, "DATA_CALL_SETUP"

    return-object p0

    :pswitch_9
    const-string p0, "IMS_CAPABILITIES_CHANGED"

    return-object p0

    :pswitch_a
    const-string p0, "IMS_CONNECTION_STATE_CHANGED"

    return-object p0

    :pswitch_b
    const-string p0, "RIL_SERVICE_STATE_CHANGED"

    return-object p0

    :pswitch_c
    const-string p0, "SETTINGS_CHANGED"

    return-object p0

    :pswitch_d
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private toCallSessionRilRequest(I)I
    .locals 2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0x24

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1628
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown RIL request: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    const/4 p1, 0x5

    return p1

    :pswitch_2
    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x6

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;
    .locals 2

    .line 1979
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 1981
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1982
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1983
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1985
    iput-object p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private toPdpType(Ljava/lang/String;)I
    .locals 7

    .line 1306
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "UNSTRUCTURED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_2
    const-string v0, "PPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "NON-IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v0, "IPV4V6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 1320
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unknown type: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p1, 0x6

    return p1

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    return v4

    :cond_5
    return v5

    :cond_6
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x7edefc9b -> :sswitch_5
        -0x766897b9 -> :sswitch_4
        0x927 -> :sswitch_3
        0x13650 -> :sswitch_2
        0x226607 -> :sswitch_1
        0x139cccaa -> :sswitch_0
    .end sparse-switch
.end method

.method static toPrivacyFuzzedTimeInterval(JJ)I
    .locals 0

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 p0, 0xa

    cmp-long p0, p2, p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-wide/16 p0, 0x14

    cmp-long p0, p2, p0

    if-gtz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-wide/16 p0, 0x32

    cmp-long p0, p2, p0

    if-gtz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-wide/16 p0, 0x64

    cmp-long p0, p2, p0

    if-gtz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-wide/16 p0, 0xc8

    cmp-long p0, p2, p0

    if-gtz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-wide/16 p0, 0x1f4

    cmp-long p0, p2, p0

    if-gtz p0, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-wide/16 p0, 0x3e8

    cmp-long p0, p2, p0

    if-gtz p0, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-wide/16 p0, 0x7d0

    cmp-long p0, p2, p0

    if-gtz p0, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    const-wide/16 p0, 0x1388

    cmp-long p0, p2, p0

    if-gtz p0, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_9
    const-wide/16 p0, 0x2710

    cmp-long p0, p2, p0

    if-gtz p0, :cond_a

    const/16 p0, 0xa

    return p0

    :cond_a
    const-wide/16 p0, 0x7530

    cmp-long p0, p2, p0

    if-gtz p0, :cond_b

    const/16 p0, 0xb

    return p0

    :cond_b
    const-wide/32 p0, 0xea60

    cmp-long p0, p2, p0

    if-gtz p0, :cond_c

    const/16 p0, 0xc

    return p0

    :cond_c
    const-wide/32 p0, 0x2bf20

    cmp-long p0, p2, p0

    if-gtz p0, :cond_d

    const/16 p0, 0xd

    return p0

    :cond_d
    const-wide/32 p0, 0x927c0

    cmp-long p0, p2, p0

    if-gtz p0, :cond_e

    const/16 p0, 0xe

    return p0

    :cond_e
    const-wide/32 p0, 0x1b7740

    cmp-long p0, p2, p0

    if-gtz p0, :cond_f

    const/16 p0, 0xf

    return p0

    :cond_f
    const-wide/32 p0, 0x36ee80

    cmp-long p0, p2, p0

    if-gtz p0, :cond_10

    const/16 p0, 0x10

    return p0

    :cond_10
    const-wide/32 p0, 0x6ddd00

    cmp-long p0, p2, p0

    if-gtz p0, :cond_11

    const/16 p0, 0x11

    return p0

    :cond_11
    const-wide/32 p0, 0xdbba00

    cmp-long p0, p2, p0

    if-gtz p0, :cond_12

    const/16 p0, 0x12

    return p0

    :cond_12
    const/16 p0, 0x13

    return p0
.end method

.method private toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;
    .locals 3

    .line 866
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    .line 868
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRoamingType:I

    .line 869
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRoamingType:I

    .line 871
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 873
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 877
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 878
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 881
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 882
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 885
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    .line 887
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 888
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaLong:Ljava/lang/String;

    .line 891
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 892
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->alphaShort:Ljava/lang/String;

    .line 895
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 896
    iget-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataOperator:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState$TelephonyOperator;->numeric:Ljava/lang/String;

    .line 899
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->voiceRat:I

    .line 900
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->dataRat:I

    .line 901
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getChannelNumber()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->channelNumber:I

    return-object v0
.end method

.method private writeIncomingSmsSessionWithType(IIZLjava/lang/String;[JZZ)V
    .locals 7

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logged SMS session consisting of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parts, over IMS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " blocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 2219
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2220
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v2, p5, v1

    .line 2221
    new-instance v4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2223
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :cond_0
    move v6, v5

    .line 2224
    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    xor-int/2addr v5, p7

    .line 2226
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 2228
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSmsType(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 2229
    invoke-virtual {v4, p6}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setBlocked(Z)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v4

    .line 2230
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(JLcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2232
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method private writeIncomingSmsWithType(IILjava/lang/String;Z)V
    .locals 2

    .line 2155
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2156
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2157
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 2158
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSmsType(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    xor-int/lit8 p3, p4, 0x1

    .line 2159
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2156
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method private writeOnCallSolicitedResponse(IIII)V
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 1677
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeOnCallSolicitedResponse: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1679
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1681
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toCallSessionRilRequest(I)I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p4

    .line 1682
    invoke-virtual {p4, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    .line 1683
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilError(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1679
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method private writeOnDeactivateDataCallResponse(II)V
    .locals 1

    .line 1752
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    add-int/lit8 p2, p2, 0x1

    .line 1753
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCallResponse(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1752
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method private writeOnSetupDataCallResponse(IIIILandroid/telephony/data/DataCallResponse;)V
    .locals 1

    .line 1644
    new-instance p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    .line 1645
    new-instance p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {p3}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    if-eqz p5, :cond_1

    .line 1648
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    move p4, v0

    goto :goto_0

    .line 1649
    :cond_0
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p4

    :goto_0
    iput p4, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->status:I

    .line 1650
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result p4

    iput p4, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->suggestedRetryTimeMillis:I

    .line 1652
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p4

    iput p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1653
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result p4

    add-int/2addr p4, v0

    iput p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->type:I

    .line 1655
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 1656
    invoke-virtual {p5}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->iframe:Ljava/lang/String;

    .line 1659
    :cond_1
    iput-object p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;->call:Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1661
    new-instance p3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1662
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCallResponse(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1661
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method private declared-synchronized writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V
    .locals 2

    monitor-enter p0

    .line 1698
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-nez p1, :cond_0

    .line 1700
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "SMS session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 1705
    :try_start_1
    iget v0, p4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 1708
    :cond_1
    new-instance p4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x7

    invoke-direct {p4, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1710
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    .line 1711
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 1712
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1708
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1715
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1716
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1718
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    if-eqz p3, :cond_8

    .line 243
    array-length p1, p3

    if-lez p1, :cond_8

    .line 245
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    aget-object p1, p3, v1

    const-string v2, "--keep"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 249
    :goto_0
    aget-object p3, p3, v0

    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x746ad8dd

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    const v0, 0x1ea00b52

    if-eq v3, v0, :cond_2

    const v0, 0x38a4a0a5

    if-eq v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "--metricsproto"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "--metricsprototext"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    move v0, v5

    goto :goto_2

    :cond_3
    const-string v3, "--metrics"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_3

    .line 260
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 254
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertProtoToBase64String(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyLog;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 256
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->reset()V

    return-void

    .line 251
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->printAllMetrics(Ljava/io/PrintWriter;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public declared-synchronized updateActiveSubscriptionInfoList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 735
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 736
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 741
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 742
    new-instance v4, Lcom/android/internal/telephony/metrics/-$$Lambda$TelephonyMetrics$tQOsX1lKb2eTuPp-1rpkeIAEOoY;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/metrics/-$$Lambda$TelephonyMetrics$tQOsX1lKb2eTuPp-1rpkeIAEOoY;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 743
    new-instance v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    .line 744
    iput v3, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->slotIndex:I

    .line 745
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    iput v5, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->isOpportunistic:I

    .line 746
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v2

    iput v2, v4, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;->carrierId:I

    .line 747
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    .line 748
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 747
    invoke-static {v2, v4}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->messageNanoEquals(Lcom/android/internal/telephony/protobuf/nano/MessageNano;Lcom/android/internal/telephony/protobuf/nano/MessageNano;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 749
    new-instance v2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 750
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v2

    .line 749
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 752
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 756
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastActiveSubscriptionInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 758
    new-instance v1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 759
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->makeInvalidSubscriptionInfo(I)Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setActiveSubscriptionInfoChange(Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 758
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 761
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateEnabledModemBitmap(I)V
    .locals 1

    .line 765
    iget v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    if-ne v0, p1, :cond_0

    return-void

    .line 766
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 767
    new-instance p1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    iget v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastEnabledModemBitmap:I

    .line 768
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setEnabledModemBitmap(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 767
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public updateSimState(II)V
    .locals 2

    .line 725
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mapSimStateToProto(I)I

    move-result p2

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 727
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    new-instance p1, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSimState:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSimStateChange(Landroid/util/SparseArray;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    :cond_1
    return-void
.end method

.method public writeAudioCodecGsmCdma(II)V
    .locals 2

    .line 2507
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 2509
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2513
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertGsmCdmaCodec(I)I

    move-result p2

    .line 2514
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2516
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v0

    .line 2514
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 2518
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Logged Audio Codec event. Value: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 3

    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 2484
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2488
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2490
    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertImsCodec(I)I

    move-result v0

    .line 2491
    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2493
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2494
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setAudioCodec(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2491
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 2496
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Logged Audio Codec event. Value: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public writeCarrierIdMatchingEvent(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2346
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    .line 2347
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;-><init>()V

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 2351
    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->carrierId:I

    if-eqz p5, :cond_1

    .line 2354
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 2355
    iput-object p5, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->gid1:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 2360
    iput-object p4, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;->mccmnc:Ljava/lang/String;

    .line 2364
    :cond_1
    :goto_0
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->cidTableVersion:I

    .line 2365
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;->result:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;

    .line 2367
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierIdMatching(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    .line 2368
    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 2369
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastCarrierId:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2370
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeCarrierKeyEvent(IIZ)V
    .locals 1

    .line 798
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    .line 799
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->keyType:I

    .line 800
    iput-boolean p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;->isDownloadSuccessful:Z

    .line 801
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setCarrierKeyChange(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 802
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 803
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeDataStallEvent(II)V
    .locals 1

    .line 1124
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1125
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataStallRecoveryAction(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1124
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeDataSwitch(ILcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)V
    .locals 1

    .line 1807
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    .line 1808
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeDroppedIncomingMultipartSms(ILjava/lang/String;II)V
    .locals 2

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logged dropped multipart SMS: received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 2133
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    .line 2134
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->receivedParts:I

    .line 2135
    iput p4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;->totalParts:I

    .line 2137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2138
    new-instance p3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 p4, 0xa

    invoke-direct {p3, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2140
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2141
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setIncompleteSms(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2138
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    return-void
.end method

.method public writeImsCallState(ILandroid/telephony/ims/ImsCallSession;Lcom/android/internal/telephony/Call$State;)V
    .locals 2

    .line 1889
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    const/4 p3, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p3, 0x9

    goto :goto_0

    :pswitch_1
    const/16 p3, 0x8

    goto :goto_0

    :pswitch_2
    const/4 p3, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p3, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p3, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p3, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p3, 0x3

    goto :goto_0

    :pswitch_7
    const/4 p3, 0x2

    goto :goto_0

    :pswitch_8
    const/4 p3, 0x1

    .line 1912
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 1914
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1916
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1918
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1919
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1916
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public declared-synchronized writeImsServiceSendSms(ILjava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 2069
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2070
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    const/4 v1, 0x3

    .line 2071
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object v0

    .line 2072
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 2073
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertSmsFormat(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2070
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2076
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2077
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeImsSetFeatureValue(IIII)V
    .locals 4

    .line 1137
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    move v2, v3

    .line 1144
    :cond_1
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverLteEnabled:Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    move v2, v3

    .line 1141
    :cond_3
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isEnhanced4GLteModeEnabled:Z

    goto :goto_0

    :cond_4
    if-ne p3, v3, :cond_9

    if-eq p2, v3, :cond_7

    if-eq p2, v1, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    move v2, v3

    .line 1153
    :cond_6
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isVtOverWifiEnabled:Z

    goto :goto_0

    :cond_7
    if-eqz p4, :cond_8

    move v2, v3

    .line 1150
    :cond_8
    iput-boolean v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->isWifiCallingEnabled:Z

    .line 1160
    :cond_9
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 1161
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    .line 1162
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    .line 1161
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_a

    return-void

    .line 1166
    :cond_a
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1168
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1169
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1171
    iget-wide p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v1, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1173
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v1

    .line 1171
    invoke-direct {p0, p3, p4, p1, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1174
    iget-wide p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p4, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {p4, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1176
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p4

    .line 1174
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    return-void
.end method

.method public writeIncomingSMSPP(ILjava/lang/String;Z)V
    .locals 2

    .line 2172
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Logged SMS-PP session. Result = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2173
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsWithType(IILjava/lang/String;Z)V

    return-void
.end method

.method public writeIncomingSmsError(IZI)V
    .locals 4

    .line 2273
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Incoming SMS error = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/16 p3, 0x18

    goto :goto_0

    :cond_1
    const/16 p3, 0xd

    .line 2292
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSession(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2294
    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2296
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    if-eqz p2, :cond_2

    move v0, v1

    .line 2297
    :cond_2
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2299
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2300
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSession(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;

    :cond_3
    return-void
.end method

.method public writeIncomingSmsSession(IZLjava/lang/String;[JZ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 2261
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSessionWithType(IIZLjava/lang/String;[JZZ)V

    return-void
.end method

.method public writeIncomingSmsTypeZero(ILjava/lang/String;)V
    .locals 2

    const-string v0, "Logged Type-0 SMS message."

    .line 2196
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 2197
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsWithType(IILjava/lang/String;Z)V

    return-void
.end method

.method public writeIncomingVoiceMailSms(ILjava/lang/String;)V
    .locals 2

    const-string v0, "Logged VoiceMail message."

    .line 2184
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 2185
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsWithType(IILjava/lang/String;Z)V

    return-void
.end method

.method public writeIncomingWapPush(IZLjava/lang/String;[JZ)V
    .locals 8

    const/4 v2, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 2246
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSessionWithType(IIZLjava/lang/String;[JZZ)V

    return-void
.end method

.method public writeModemRestartEvent(ILjava/lang/String;)V
    .locals 2

    .line 2326
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    .line 2327
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2328
    iput-object v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->basebandVersion:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 2329
    iput-object p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;->reason:Ljava/lang/String;

    .line 2330
    :cond_1
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setModemRestart(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 2331
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 2332
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeNITZEvent(IJ)V
    .locals 4

    .line 2310
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object v0

    .line 2311
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 2313
    iget-wide v0, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2316
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setNITZ(J)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2313
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeNetworkValidate(I)V
    .locals 1

    .line 1797
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    .line 1798
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setNetworkValidate(I)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1797
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public declared-synchronized writeNewCBSms(IIIZZIIJ)V
    .locals 1

    monitor-enter p0

    .line 2094
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    const/4 p4, 0x3

    .line 2105
    :goto_0
    new-instance p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {p5}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    .line 2106
    iput p2, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgFormat:I

    add-int/2addr p3, v0

    .line 2107
    iput p3, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgPriority:I

    .line 2108
    iput p4, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->msgType:I

    .line 2109
    iput p6, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serviceCategory:I

    .line 2110
    iput p7, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->serialNumber:I

    .line 2111
    iput-wide p8, p5, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;->deliveredTimestampMillis:J

    .line 2113
    new-instance p2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/16 p3, 0x9

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2114
    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setCellBroadcastMessage(Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2113
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)V
    .locals 1

    .line 1816
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>()V

    .line 1817
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1816
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeOnImsCallHandoverEvent(IILandroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 2026
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2028
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2030
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2031
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrcAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2032
    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setTargetAccessTech(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2033
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2028
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeOnImsCallHeld(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallHoldFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallHoldReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallProgressing(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallReceive(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 2

    .line 1945
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 1947
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1949
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1947
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeOnImsCallResumeFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallResumeReceived(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallResumed(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallStart(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 2

    .line 1930
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 1932
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1934
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    const/4 v0, 0x1

    .line 1935
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1932
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeOnImsCallStartFailed(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallStarted(ILandroid/telephony/ims/ImsCallSession;)V
    .locals 0

    return-void
.end method

.method public writeOnImsCallTerminated(ILandroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 2000
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 2002
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2004
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 2006
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2007
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toImsReasonInfoProto(Landroid/telephony/ims/ImsReasonInfo;)Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsReasonInfo(Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 2004
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized writeOnImsCapabilities(IILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 4

    monitor-enter p0

    .line 1258
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-nez p2, :cond_0

    .line 1261
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverLte:Z

    .line 1263
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverLte:Z

    .line 1265
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverLte:Z

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 1269
    invoke-virtual {p3, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->voiceOverWifi:Z

    .line 1271
    invoke-virtual {p3, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->videoOverWifi:Z

    .line 1273
    invoke-virtual {p3, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result p2

    iput-boolean p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->utOverWifi:Z

    .line 1277
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1280
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    .line 1281
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p3}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    .line 1282
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1281
    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 1283
    monitor-exit p0

    return-void

    .line 1286
    :cond_2
    :try_start_1
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsCapabilities:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1287
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1289
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    invoke-direct {p3, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1292
    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p3

    .line 1289
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1293
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {p3, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 1296
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsCapabilities(Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1293
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeOnImsCommand(ILandroid/telephony/ims/ImsCallSession;I)V
    .locals 2

    .line 1961
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 1963
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1965
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1967
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getCallId(Landroid/telephony/ims/ImsCallSession;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setCallIndex(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1968
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsCommand(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1965
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 4

    monitor-enter p0

    .line 1210
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    .line 1211
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->state:I

    if-eqz p3, :cond_1

    .line 1214
    new-instance p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    .line 1216
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->reasonCode:I

    .line 1217
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v1

    iput v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraCode:I

    .line 1218
    invoke-virtual {p3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1220
    iput-object p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;->extraMessage:Ljava/lang/String;

    .line 1223
    :cond_0
    iput-object p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 1227
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    .line 1228
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    .line 1229
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    .line 1228
    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 1230
    monitor-exit p0

    return-void

    .line 1233
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastImsConnectionState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1236
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1237
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1239
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x3

    invoke-direct {p3, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1242
    invoke-virtual {p3, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p3

    .line 1239
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1243
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance p3, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {p3, v2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 1246
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsConnectionState(Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1243
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeOnImsServiceSmsSolicitedResponse(III)V
    .locals 2

    monitor-enter p0

    .line 1729
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressSmsSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    if-nez p1, :cond_0

    .line 1731
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string p2, "SMS session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1734
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 1736
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setImsServiceErrno(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1737
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setErrorCode(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1734
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 1740
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->decreaseExpectedResponse()V

    .line 1741
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishSmsSessionIfNeeded(Lcom/android/internal/telephony/metrics/InProgressSmsSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1743
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V
    .locals 7

    const/16 v0, 0xa

    if-eq p4, v0, :cond_2

    const/16 v0, 0x57

    if-eq p4, v0, :cond_1

    const/16 v0, 0x71

    if-eq p4, v0, :cond_1

    const/16 v0, 0x28

    if-eq p4, v0, :cond_2

    const/16 v0, 0x29

    if-eq p4, v0, :cond_0

    packed-switch p4, :pswitch_data_0

    packed-switch p4, :pswitch_data_1

    goto :goto_0

    .line 1769
    :pswitch_0
    move-object v6, p5

    check-cast v6, Landroid/telephony/data/DataCallResponse;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1770
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSetupDataCallResponse(IIIILandroid/telephony/data/DataCallResponse;)V

    return-void

    .line 1773
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDeactivateDataCallResponse(II)V

    return-void

    .line 1786
    :cond_1
    :pswitch_1
    check-cast p5, Lcom/android/internal/telephony/SmsResponse;

    .line 1787
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnSmsSolicitedResponse(IIILcom/android/internal/telephony/SmsResponse;)V

    :goto_0
    return-void

    .line 1780
    :cond_2
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnCallSolicitedResponse(IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeOnRilTimeoutResponse(III)V
    .locals 0

    return-void
.end method

.method public writePhoneState(ILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 3

    .line 1828
    sget-object v0, Lcom/android/internal/telephony/metrics/TelephonyMetrics$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1843
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_3

    .line 1845
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writePhoneState: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1850
    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->setLastKnownPhoneState(I)V

    if-ne v0, v2, :cond_4

    .line 1852
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->containsCsCalls()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1853
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    .line 1855
    :cond_4
    new-instance p2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x14

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1857
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setPhoneState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1855
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeRilAnswer(II)V
    .locals 2

    .line 1569
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 1571
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeRilAnswer: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1573
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 v1, 0x2

    .line 1575
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v0

    .line 1576
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1573
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeRilCallList(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)V"
        }
    .end annotation

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logging CallList Changed Connections Size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1423
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeRilCallList: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1425
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionsToRilCalls(Ljava/util/ArrayList;)[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object p2

    .line 1426
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1429
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v0

    .line 1426
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    const-string v0, "Logged Call list changed"

    .line 1431
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->isPhoneIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->disconnectReasonsKnown([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1433
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->finishCallSession(Lcom/android/internal/telephony/metrics/InProgressCallSession;)V

    :cond_1
    return-void
.end method

.method public writeRilCallRing(I[C)V
    .locals 3

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 1534
    iget-wide v0, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance p2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v2, 0x8

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public writeRilDataCallEvent(IIII)V
    .locals 3

    const/4 v0, 0x1

    .line 1388
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 1389
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1390
    aget-object v1, v0, v2

    iput p2, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->cid:I

    .line 1391
    aget-object v1, v0, v2

    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->apnTypeBitmask:I

    .line 1392
    aget-object p3, v0, v2

    iput p4, p3, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->state:I

    .line 1395
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1397
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    .line 1399
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p3}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p3

    aget-object p4, v0, v2

    .line 1400
    invoke-static {p4}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p4

    .line 1398
    invoke-static {p3, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1403
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    goto :goto_0

    .line 1405
    :cond_1
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 1408
    :goto_0
    aget-object p4, v0, v2

    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1409
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastRilDataCallEvents:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1410
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDataCalls([Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeRilDeactivateDataCall(IIII)V
    .locals 0

    .line 1359
    new-instance p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    .line 1360
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->cid:I

    const/4 p3, 0x1

    if-eq p4, p3, :cond_2

    const/4 p3, 0x2

    if-eq p4, p3, :cond_1

    const/4 p3, 0x3

    if-eq p4, p3, :cond_0

    const/4 p3, 0x0

    .line 1372
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    .line 1369
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_0

    .line 1366
    :cond_1
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    goto :goto_0

    .line 1363
    :cond_2
    iput p3, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;->reason:I

    .line 1375
    :goto_0
    new-instance p3, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setDeactivateDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 1376
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeRilDial(ILcom/android/internal/telephony/GsmCdmaConnection;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 3

    .line 1508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewCallSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressCallSession;

    move-result-object p1

    .line 1509
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "Logging Dial Connection = "

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1511
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeRilDial: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1513
    new-array p4, p3, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1514
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p4, v1

    .line 1515
    aget-object v0, p4, v1

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1516
    aget-object v0, p4, v1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1517
    iget-wide v0, p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;->startElapsedTimeMs:J

    new-instance p2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v2, 0x6

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    .line 1519
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1520
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1517
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(JLcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    const-string p1, "Logged Dial event"

    .line 1521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public writeRilHangup(ILcom/android/internal/telephony/GsmCdmaConnection;I)V
    .locals 3

    .line 1546
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 1548
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeRilHangup: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1550
    new-array v0, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 1551
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1552
    aget-object v1, v0, v2

    iput p3, v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->index:I

    .line 1553
    aget-object p3, v0, v2

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->convertConnectionToRilCall(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)V

    .line 1554
    new-instance p2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    const/4 p3, 0x3

    .line 1556
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilRequest(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1557
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setRilCalls([Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1554
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    const-string p1, "Logged Hangup event"

    .line 1558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->logv(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized writeRilSendSms(IIII)V
    .locals 2

    monitor-enter p0

    .line 2046
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->startNewSmsSessionIfNeeded(I)Lcom/android/internal/telephony/metrics/InProgressSmsSession;

    move-result-object p1

    .line 2048
    new-instance v0, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    .line 2049
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setTech(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p3

    .line 2050
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setRilRequestId(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2051
    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setFormat(I)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 2048
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->addEvent(Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V

    .line 2054
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/InProgressSmsSession;->increaseExpectedResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2055
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeRilSrvcc(II)V
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mInProgressCallSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/metrics/InProgressCallSession;

    if-nez p1, :cond_0

    .line 1589
    sget-object p1, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "writeRilSrvcc: Call session is missing"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1591
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    add-int/lit8 p2, p2, 0x1

    .line 1593
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setSrvccState(I)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object p2

    .line 1591
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/InProgressCallSession;->addEvent(Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    return-void
.end method

.method public declared-synchronized writeServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 5

    monitor-enter p0

    .line 1094
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    .line 1095
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->toServiceStateProto(Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p2

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    .line 1099
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1100
    invoke-static {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1099
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1101
    monitor-exit p0

    return-void

    .line 1104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastServiceState:Landroid/util/SparseArray;

    iget-object v1, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1105
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    .line 1107
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;-><init>(I)V

    iget-object v4, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1110
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/CallSessionEventBuilder;

    move-result-object v2

    .line 1107
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressCallSession(JILcom/android/internal/telephony/metrics/CallSessionEventBuilder;)V

    .line 1111
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    new-instance v2, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;-><init>(I)V

    iget-object p2, p2, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 1114
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;->setServiceState(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;)Lcom/android/internal/telephony/metrics/SmsSessionEventBuilder;

    move-result-object p2

    .line 1111
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->annotateInProgressSmsSession(JILcom/android/internal/telephony/metrics/SmsSessionEventBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeSetPreferredNetworkType(II)V
    .locals 2

    .line 1186
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    add-int/lit8 p2, p2, 0x1

    .line 1187
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->preferredNetworkMode:I

    .line 1190
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    .line 1191
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    invoke-static {p2}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object p2

    .line 1192
    invoke-static {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1191
    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1196
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->mLastSettings:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1198
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSettings(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method

.method public writeSetupDataCall(IIILjava/lang/String;I)V
    .locals 1

    .line 1336
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    .line 1337
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->rat:I

    add-int/lit8 p3, p3, 0x1

    .line 1338
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->dataProfile:I

    if-eqz p4, :cond_0

    .line 1340
    iput-object p4, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->apn:Ljava/lang/String;

    :cond_0
    add-int/lit8 p5, p5, 0x1

    .line 1343
    iput p5, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;->type:I

    .line 1345
    new-instance p2, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->setSetupDataCall(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;)Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;

    move-result-object p1

    .line 1346
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/TelephonyEventBuilder;->build()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p1

    .line 1345
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->addTelephonyEvent(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;)V

    return-void
.end method
