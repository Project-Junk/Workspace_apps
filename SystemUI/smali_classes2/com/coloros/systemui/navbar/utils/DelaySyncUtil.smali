.class public Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;
.super Ljava/lang/Object;
.source "DelaySyncUtil.java"


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private final mDelayDuration:J

.field private final mHandler:Landroid/os/Handler;

.field private mHasScheduled:Z

.field private mHasStarted:Z

.field private mLastSyncTime:J

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasStarted:Z

    .line 13
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasScheduled:Z

    .line 16
    new-instance v0, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$JectU9YV9y9sEtSSdeHTfQOkJxo;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$JectU9YV9y9sEtSSdeHTfQOkJxo;-><init>(Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mRunnable:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHandler:Landroid/os/Handler;

    .line 20
    iput-wide p2, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mDelayDuration:J

    return-void
.end method

.method public static synthetic lambda$JectU9YV9y9sEtSSdeHTfQOkJxo(Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->syncCallback()V

    return-void
.end method

.method private scheduleCallback(Ljava/lang/Runnable;)V
    .locals 7

    .line 31
    iput-object p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mCallback:Ljava/lang/Runnable;

    .line 32
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasStarted:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 33
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasStarted:Z

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->syncCallback()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 37
    iget-wide v3, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mLastSyncTime:J

    sub-long/2addr v1, v3

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mDelayDuration:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->syncCallback()V

    goto :goto_0

    .line 44
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasScheduled:Z

    if-nez p1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mRunnable:Ljava/lang/Runnable;

    sub-long/2addr v5, v1

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasScheduled:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private syncCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHasScheduled:Z

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mLastSyncTime:J

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/navbar/utils/-$$Lambda$DelaySyncUtil$ZMucB1JFjNTEbsGQMVOH2hlHVwE;-><init>(Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$addCallback$0$DelaySyncUtil(Ljava/lang/Runnable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;->scheduleCallback(Ljava/lang/Runnable;)V

    return-void
.end method
