.class public final Lcom/android/internal/telephony/OldNitzStateMachine;
.super Ljava/lang/Object;
.source "OldNitzStateMachine.java"

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

.field private final mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

.field private final mTimeZoneLog:Landroid/util/LocalLog;

.field private final mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 3

    .line 95
    new-instance v0, Lcom/android/internal/telephony/OldTimeServiceHelper;

    .line 96
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/OldTimeServiceHelper;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    new-instance v2, Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-direct {v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;-><init>()V

    .line 95
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/OldNitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/OldTimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/OldTimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mGotCountryCode:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    .line 84
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    .line 85
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "power"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "NitzStateMachine"

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iput-object p3, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 112
    iput-object p4, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    new-instance p2, Lcom/android/internal/telephony/OldNitzStateMachine$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/OldNitzStateMachine$1;-><init>(Lcom/android/internal/telephony/OldNitzStateMachine;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/OldTimeServiceHelper;->setListener(Lcom/android/internal/telephony/OldTimeServiceHelper$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/OldNitzStateMachine;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/OldNitzStateMachine;->handleAutoTimeEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/OldNitzStateMachine;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/OldNitzStateMachine;->handleAutoTimeZoneEnabled()V

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

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    .line 279
    invoke-virtual {p2}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/NitzData;

    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v1

    .line 277
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->countryUsesUtc(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method private handleAutoTimeEnabled()V
    .locals 7

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAutoTimeEnabled: Reverting to NITZ Time: mSavedNitzTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OldTimeServiceHelper;->elapsedRealtime()J

    move-result-wide v0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mSavedNitzTime: Reverting to NITZ time elapsedRealtime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mSavedNitzTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v3}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    .line 440
    invoke-virtual {v5}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    .line 441
    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/telephony/OldNitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    :cond_0
    return-void
.end method

.method private handleAutoTimeZoneEnabled()V
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleAutoTimeZoneEnabled: Reverting to NITZ TimeZone: mSavedTimeZoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    .line 452
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/OldNitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

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

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzData;

    .line 271
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

    .line 272
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/OldNitzStateMachine;->countryUsesUtc(Ljava/lang/String;Landroid/util/TimestampedValue;)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    const-string v1, "SST"

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setAndBroadcastNetworkSetTime: Wake lock not held while setting device time (msg="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setAndBroadcastNetworkSetTime: [Setting time to time="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/OldTimeServiceHelper;->setDeviceTime(J)V

    .line 422
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNITZEvent(IJ)V

    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 2

    .line 400
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAndBroadcastNetworkSetTimeZone: zoneId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/OldTimeServiceHelper;->setDeviceTimeZone(Ljava/lang/String;)V

    .line 404
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setAndBroadcastNetworkSetTimeZone: called setDeviceTimeZone() zoneId="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTimeFromNitz()V
    .locals 13

    const-string v0, "SST"

    .line 312
    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getIgnoreNitz()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "updateTimeFromNitz: Not setting clock because gsm.ignore-nitz is set"

    .line 317
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 326
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 329
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OldTimeServiceHelper;->elapsedRealtime()J

    move-result-wide v2

    .line 331
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    goto/16 :goto_2

    .line 343
    :cond_1
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/NitzData;

    invoke-virtual {v2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 344
    iget-object v6, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v6}, Lcom/android/internal/telephony/OldTimeServiceHelper;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    .line 346
    iget-object v8, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OldTimeServiceHelper;->isTimeDetectionEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateTimeFromNitz: nitzSignal="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " adjustedCurrentTimeMillis="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " millisSinceNitzReceived= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " gained="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    iget-object v5, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    if-nez v5, :cond_2

    .line 354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": First update received."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/telephony/OldNitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v5}, Lcom/android/internal/telephony/OldTimeServiceHelper;->elapsedRealtime()J

    move-result-wide v8

    iget-object v5, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    .line 358
    invoke-virtual {v5}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 359
    iget-object v5, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateSpacingMillis()I

    move-result v5

    .line 360
    iget-object v10, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v10}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNitzUpdateDiffMillis()I

    move-result v10

    int-to-long v11, v5

    cmp-long v5, v8, v11

    if-gtz v5, :cond_4

    .line 362
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    int-to-long v7, v10

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    goto :goto_0

    .line 369
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Update throttled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 365
    :cond_4
    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": New update received."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-direct {p0, v4, v2, v3}, Lcom/android/internal/telephony/OldNitzStateMachine;->setAndBroadcastNetworkSetTime(Ljava/lang/String;J)V

    .line 385
    :cond_5
    :goto_1
    new-instance v2, Landroid/util/TimestampedValue;

    .line 386
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    .line 387
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/NitzData;

    invoke-virtual {v5}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/util/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 334
    :cond_6
    :goto_2
    :try_start_5
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 389
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    .line 392
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

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    .line 154
    iget-object v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    .line 155
    invoke-virtual {v2}, Lcom/android/internal/telephony/OldTimeServiceHelper;->isTimeZoneSettingInitialized()Z

    move-result v2

    .line 158
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

    .line 165
    :try_start_0
    invoke-virtual {v1}, Landroid/util/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/NitzData;

    .line 168
    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    .line 169
    invoke-virtual {v3}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 170
    :cond_0
    iget-boolean v8, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mGotCountryCode:Z

    if-eqz v8, :cond_4

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 178
    iget-object v8, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v3

    const-string/jumbo v8, "updateTimeZoneFromCountryAndNitz: lookupByNitz returned lookupResult="

    .line 179
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v10, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v10, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 187
    iget-object v9, v3, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    if-nez v8, :cond_2

    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: No cached NITZ data available, not setting zone"

    .line 190
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/OldNitzStateMachine;->isNitzSignalOffsetInfoBogus(Landroid/util/TimestampedValue;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateTimeZoneFromCountryAndNitz: Received NITZ looks bogus,  isoCountryCode="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v8, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v8, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    invoke-virtual {v8, v3, v0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object v8

    .line 210
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

    .line 216
    iget-object v9, v8, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    .line 220
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

    iget-object v4, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    .line 226
    invoke-virtual {v4}, Lcom/android/internal/telephony/OldTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    iget-object v4, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v4, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v9, :cond_6

    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: zoneId="

    .line 232
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v3}, Lcom/android/internal/telephony/OldTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/OldNitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: skip changing zone as isTimeZoneDetectionEnabled() is false"

    .line 238
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_1
    iput-object v9, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 243
    iput-boolean v3, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return-void

    :cond_6
    const-string/jumbo v3, "updateTimeZoneFromCountryAndNitz: zoneId == null, do nothing"

    .line 246
    invoke-static {v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 251
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

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/TimeZoneLookupHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/telephony/OldTimeServiceHelper;->currentTimeMillis()J

    move-result-wide v1

    .line 496
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    move-result-object v0

    const-string v1, " lookupResult="

    const-string v2, "SST"

    if-eqz v0, :cond_1

    .line 498
    iget-boolean v3, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    if-eqz v3, :cond_1

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTimeZoneFromNetworkCountryCode: tz result found iso="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 506
    iget-object p1, v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeServiceHelper:Lcom/android/internal/telephony/OldTimeServiceHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/OldTimeServiceHelper;->isTimeZoneDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/OldNitzStateMachine;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 510
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    return-void

    .line 513
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

    .line 478
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, " Time zone Logs:"

    .line 483
    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mTimeZoneLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpState(Ljava/io/PrintWriter;)V
    .locals 2

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSavedTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mLatestNitzSignal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mGotCountryCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSavedTimeZoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mNitzTimeZoneDetectionSuccessful="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mWakeLock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final getCachedNitzData()Lcom/android/internal/telephony/NitzData;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

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

    .line 521
    iget-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return v0
.end method

.method public final getSavedTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mSavedTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public final handleNetworkAvailable()V
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleNetworkAvailable: mNitzTimeZoneDetectionSuccessful="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Setting mNitzTimeZoneDetectionSuccessful=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SST"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    return-void
.end method

.method public final handleNetworkCountryCodeSet(Z)V
    .locals 3

    .line 133
    iget-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mGotCountryCode:Z

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mGotCountryCode:Z

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getNetworkCountryIsoForPhone()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

    if-nez v2, :cond_0

    .line 138
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/OldNitzStateMachine;->updateTimeZoneFromNetworkCountryCode(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    if-nez v0, :cond_2

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/OldNitzStateMachine;->updateTimeZoneFromCountryAndNitz()V

    :cond_2
    return-void
.end method

.method public final handleNetworkCountryCodeUnavailable()V
    .locals 2

    const-string v0, "SST"

    const-string v1, "handleNetworkCountryCodeUnavailable"

    .line 295
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mGotCountryCode:Z

    .line 299
    iput-boolean v0, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mNitzTimeZoneDetectionSuccessful:Z

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

    .line 305
    iput-object p1, p0, Lcom/android/internal/telephony/OldNitzStateMachine;->mLatestNitzSignal:Landroid/util/TimestampedValue;

    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/OldNitzStateMachine;->updateTimeZoneFromCountryAndNitz()V

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/OldNitzStateMachine;->updateTimeFromNitz()V

    return-void
.end method
