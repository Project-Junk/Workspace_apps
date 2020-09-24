.class public final Lcom/android/internal/telephony/NewNitzStateMachine;
.super Ljava/lang/Object;
.source "NewNitzStateMachine.java"

# interfaces
.implements Lcom/android/internal/telephony/NitzStateMachine;


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "NitzStateMachine"


# instance fields
.field private final mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private mGotCountryCode:Z

.field private mLatestNitzSignal:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;"
        }
    .end annotation
.end field

.field private mNitzTimeZoneDetectionSuccessful:Z

.field private final mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field private mSavedNitzTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTimeZoneId:Ljava/lang/String;

.field private final mTimeLog:Landroid/util/LocalLog;

.field private final mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

.field private final mTimeZoneLog:Landroid/util/LocalLog;

.field private final mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3

    .line 94
    new-instance v0, Lcom/android/internal/telephony/NewTimeServiceHelper;

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/NewTimeServiceHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    new-instance v2, Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-direct {v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;-><init>()V

    .line 94
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/NewNitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/NewTimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/NewTimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mGotCountryCode:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    .line 83
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    .line 84
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "NitzStateMachine"

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    iput-object p3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 111
    iput-object p4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 112
    iput-object p2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    .line 113
    iget-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    new-instance p2, Lcom/android/internal/telephony/NewNitzStateMachine$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/NewNitzStateMachine$1;-><init>(Lcom/android/internal/telephony/NewNitzStateMachine;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/NewTimeServiceHelper;->setListener(Lcom/android/internal/telephony/NewTimeServiceHelper$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NewNitzStateMachine;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/NewNitzStateMachine;->handleAutoTimeZoneEnabled()V

    return-void
.end method

.method private countryUsesUtc(Ljava/lang/String;Landroid/util/TimestampedValue;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)Z"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 271
    invoke-virtual {p2}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/NitzData;

    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v1

    .line 269
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->countryUsesUtc(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method private handleAutoTimeZoneEnabled()V
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAutoTimeZoneEnabled: Reverting to NITZ TimeZone: mSavedTimeZoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    .line 409
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NewNitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isNitzSignalOffsetInfoBogus(Landroid/util/TimestampedValue;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 257
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    .line 263
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 264
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/NewNitzStateMachine;->countryUsesUtc(Ljava/lang/String;Landroid/util/TimestampedValue;)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 2

    .line 395
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAndBroadcastNetworkSetTimeZone: zoneId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/NewTimeServiceHelper;->setDeviceTimeZone(Ljava/lang/String;)V

    .line 399
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setAndBroadcastNetworkSetTimeZone: called setDeviceTimeZone() zoneId="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTimeFromNitz()V
    .locals 11

    const-string v0, "SST"

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getIgnoreNitz()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "updateTimeFromNitz: Not suggesting system clock because gsm.ignore-nitz is set"

    .line 309
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 318
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NewTimeServiceHelper;->elapsedRealtime()J

    move-result-wide v2

    .line 322
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto/16 :goto_0

    .line 332
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 335
    new-instance v2, Landroid/util/TimestampedValue;

    .line 336
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    .line 337
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NitzData;

    invoke-virtual {v5}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/util/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 342
    iget-object v3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    if-eqz v3, :cond_2

    .line 343
    iget-object v3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateSpacingMillis()I

    move-result v3

    .line 344
    iget-object v4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateDiffMillis()I

    move-result v4

    .line 347
    invoke-virtual {v2}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    .line 348
    invoke-virtual {v7}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 352
    invoke-virtual {v2}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v9}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    sub-long/2addr v7, v5

    int-to-long v9, v3

    cmp-long v5, v5, v9

    if-gtz v5, :cond_2

    .line 359
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    int-to-long v7, v4

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateTimeFromNitz: not setting time. NITZ signal is too similar to previous value received  mSavedNitzTime="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", nitzSignal="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", nitzUpdateSpacing="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nitzUpdateDiff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeFromNitz: suggesting system clock update nitzSignal="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", newNitzTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mSavedNitzTime= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/NewTimeServiceHelper;->suggestDeviceTime(Landroid/util/TimestampedValue;)V

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 382
    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 381
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNITZEvent(IJ)V

    .line 385
    iput-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 325
    :cond_3
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateTimeFromNitz: not setting time, unexpected elapsedRealtime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nitzSignal="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeFromNitz: Processing NITZ data nitzSignal="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ex="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTimeZoneFromCountryAndNitz()V
    .locals 12

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    .line 147
    invoke-virtual {v2}, Lcom/android/internal/telephony/NewTimeServiceHelper;->isTimeZoneSettingInitialized()Z

    move-result v2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeZoneFromCountryAndNitz: isTimeZoneSettingInitialized="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " nitzSignal="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isoCountryCode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "SST"

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/NitzData;

    .line 160
    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 161
    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 162
    :cond_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mGotCountryCode:Z

    if-eqz v8, :cond_4

    .line 165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    iget-object v8, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v3

    const-string/jumbo v8, "updateTimeZoneFromCountryAndNitz: lookupByNitz returned lookupResult="

    .line 171
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v10, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v10, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 179
    iget-object v9, v3, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    if-nez v8, :cond_2

    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: No cached NITZ data available, not setting zone"

    .line 182
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/NewNitzStateMachine;->isNitzSignalOffsetInfoBogus(Landroid/util/TimestampedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateTimeZoneFromCountryAndNitz: Received NITZ looks bogus,  isoCountryCode="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v8, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v8, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-virtual {v8, v3, v0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v8

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "updateTimeZoneFromCountryAndNitz: using lookupByNitzCountry(nitzData, isoCountryCode), nitzData="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lookupResult="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_4

    .line 208
    iget-object v9, v8, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    .line 212
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " zoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isTimeZoneDetectionEnabled()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    .line 218
    invoke-virtual {v4}, Lcom/android/internal/telephony/NewTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v9, :cond_6

    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: zoneId="

    .line 224
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    invoke-virtual {v3}, Lcom/android/internal/telephony/NewTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/NewNitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: skip changing zone as isTimeZoneDetectionEnabled() is false"

    .line 230
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_1
    iput-object v9, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 235
    iput-boolean v3, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return-void

    :cond_6
    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: zoneId == null, do nothing"

    .line 238
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateTimeZoneFromCountryAndNitz: Processing NITZ data nitzSignal="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isTimeZoneSettingInitialized="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTimeZoneFromNetworkCountryCode(Ljava/lang/String;)V
    .locals 5

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    .line 454
    invoke-virtual {v1}, Lcom/android/internal/telephony/NewTimeServiceHelper;->currentTimeMillis()J

    move-result-wide v1

    .line 453
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    move-result-object v0

    const-string v1, " lookupResult="

    const-string v2, "SST"

    if-eqz v0, :cond_1

    .line 455
    iget-boolean v3, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    if-eqz v3, :cond_1

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeZoneFromNetworkCountryCode: tz result found iso="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 463
    iget-object p1, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/NewTimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NewTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NewNitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 467
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    return-void

    .line 470
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeZoneFromNetworkCountryCode: no good zone for iso="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dumpLogs(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, " Time Logs:"

    .line 435
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, " Time zone Logs:"

    .line 440
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpState(Ljava/io/PrintWriter;)V
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSavedTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mLatestNitzSignal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mGotCountryCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSavedTimeZoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNitzTimeZoneDetectionSuccessful="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mWakeLock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final getCachedNitzData()Lcom/android/internal/telephony/NitzData;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNitzTimeZoneDetectionSuccessful()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return v0
.end method

.method public final getSavedTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public final handleNetworkAvailable()V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleNetworkAvailable: mNitzTimeZoneDetectionSuccessful="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Setting mNitzTimeZoneDetectionSuccessful=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return-void
.end method

.method public final handleNetworkCountryCodeSet(Z)V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mGotCountryCode:Z

    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mGotCountryCode:Z

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    if-nez v2, :cond_0

    .line 130
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NewNitzStateMachine;->updateTimeZoneFromNetworkCountryCode(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    if-nez v0, :cond_2

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/NewNitzStateMachine;->updateTimeZoneFromCountryAndNitz()V

    :cond_2
    return-void
.end method

.method public final handleNetworkCountryCodeUnavailable()V
    .locals 2

    const-string v0, "SST"

    const-string v1, "handleNetworkCountryCodeUnavailable"

    .line 287
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mGotCountryCode:Z

    .line 291
    iput-boolean v0, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return-void
.end method

.method public final handleNitzReceived(Landroid/util/TimestampedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Lcom/android/internal/telephony/NitzData;",
            ">;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/android/internal/telephony/NewNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    .line 299
    invoke-direct {p0}, Lcom/android/internal/telephony/NewNitzStateMachine;->updateTimeZoneFromCountryAndNitz()V

    .line 300
    invoke-direct {p0}, Lcom/android/internal/telephony/NewNitzStateMachine;->updateTimeFromNitz()V

    return-void
.end method
