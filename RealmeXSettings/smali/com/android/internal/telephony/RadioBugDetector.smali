.class public Lcom/android/internal/telephony/RadioBugDetector;
.super Ljava/lang/Object;
.source "RadioBugDetector.java"


# static fields
.field private static final DEFAULT_SYSTEM_ERROR_COUNT_THRESHOLD:I = 0x64

.field private static final DEFAULT_WAKELOCK_TIMEOUT_COUNT_THRESHOLD:I = 0xa

.field private static final RADIO_BUG_NONE:I = 0x0

.field protected static final RADIO_BUG_REPETITIVE_SYSTEM_ERROR:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RADIO_BUG_REPETITIVE_WAKELOCK_TIMEOUT_ERROR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContinuousWakelockTimoutCount:I

.field private mRadioBugStatus:I

.field private mSlotId:I

.field private mSysErrRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemErrorThreshold:I

.field private mWakelockTimeoutThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    .line 50
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    .line 52
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I

    .line 53
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSlotId:I

    .line 61
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioBugDetector;->init()V

    return-void
.end method

.method private declared-synchronized broadcastBug(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioBugDetector;->isFrequentSystemError()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 116
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    iget v1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    .line 120
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 128
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    .line 129
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.ACTION_REPORT_RADIO_BUG"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "slotId"

    .line 131
    iget v1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "radioBugType"

    .line 132
    iget v1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private init()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio_bug_wakelock_timeout_count_threshold"

    const/16 v2, 0xa

    .line 65
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I

    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "radio_bug_system_error_count_threshold"

    const/16 v2, 0x64

    .line 69
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    return-void
.end method

.method private isFrequentSystemError()Z
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 142
    iget v3, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public declared-synchronized detectRadioBug(II)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 89
    :try_start_0
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    const/16 v1, 0x27

    if-ne p2, v1, :cond_0

    .line 91
    iget-object p2, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioBugDetector;->broadcastBug(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSysErrRecord:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/RadioBugDetector;->isFrequentSystemError()Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRadioBugStatus()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 152
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mRadioBugStatus:I

    return v0
.end method

.method public getSystemErrorThreshold()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 162
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mSystemErrorThreshold:I

    return v0
.end method

.method public getWakelockTimeoutThreshold()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mWakelockTimeoutThreshold:I

    return v0
.end method

.method public getWakelockTimoutCount()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    return v0
.end method

.method public processWakelockTimeout()V
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RadioBugDetector;->mContinuousWakelockTimoutCount:I

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RadioBugDetector;->broadcastBug(Z)V

    return-void
.end method
