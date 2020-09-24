.class public final Lcom/android/settings/fuelgauge/h;
.super Landroid/os/BatteryStats$Uid;
.source "FakeUid.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/settings/fuelgauge/h;->a:I

    return-void
.end method


# virtual methods
.method public final getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCpuActiveTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getCpuClusterTimes()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCpuFreqTimes(I)[J
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCpuFreqTimes(II)[J
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method

.method public final getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method

.method public final getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFullWifiLockTime(JI)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMobileRadioActiveCount(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getMobileRadioActiveTime(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getMobileRadioApWakeupCount(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkActivityBytes(II)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getNetworkActivityPackets(II)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProcessStateTime(IJI)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getScreenOffCpuFreqTimes(I)[J
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getScreenOffCpuFreqTimes(II)[J
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSystemCpuTimeUs(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getTimeAtCpuSpeed(III)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getUid()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/android/settings/fuelgauge/h;->a:I

    return v0
.end method

.method public final getUserActivityCount(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getUserCpuTimeUs(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWifiBatchedScanCount(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getWifiBatchedScanTime(IJI)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWifiMulticastTime(JI)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getWifiRadioApWakeupCount(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getWifiRunningTime(JI)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getWifiScanActualTime(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getWifiScanBackgroundCount(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getWifiScanBackgroundTime(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWifiScanCount(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getWifiScanTime(JI)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNetworkActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hasUserActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final noteActivityPausedLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteActivityResumedLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteFullWifiLockAcquiredLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteFullWifiLockReleasedLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteUserActivityLocked(I)V
    .locals 0

    return-void
.end method

.method public final noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0

    return-void
.end method

.method public final noteWifiBatchedScanStoppedLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteWifiMulticastDisabledLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteWifiMulticastEnabledLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteWifiRunningLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteWifiScanStartedLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteWifiScanStoppedLocked(J)V
    .locals 0

    return-void
.end method

.method public final noteWifiStoppedLocked(J)V
    .locals 0

    return-void
.end method
