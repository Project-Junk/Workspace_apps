.class public Lcom/android/internal/telephony/metrics/ModemPowerMetrics;
.super Ljava/lang/Object;
.source "ModemPowerMetrics.java"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "batterystats"

    .line 37
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method private getStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public buildProto()Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;
    .locals 8

    .line 46
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;-><init>()V

    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/ModemPowerMetrics;->getStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getLoggingDurationMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->loggingDurationMs:J

    .line 50
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->energyConsumedMah:D

    .line 52
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getNumPacketsTx()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsTx:J

    .line 53
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getKernelActiveTimeMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->cellularKernelActiveTimeMs:J

    .line 54
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRxSignalStrengthLevelMs()[J

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRxSignalStrengthLevelMs()[J

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRxSignalStrengthLevelMs()[J

    move-result-object v2

    aget-wide v6, v2, v3

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInVeryPoorRxSignalLevelMs:J

    .line 58
    :cond_0
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getSleepTimeMs()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->sleepTimeMs:J

    .line 59
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getIdleTimeMs()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->idleTimeMs:J

    .line 60
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getRxTimeMs()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->rxTimeMs:J

    .line 61
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getTxTimeMs()[J

    move-result-object v2

    .line 62
    array-length v6, v2

    new-array v6, v6, [J

    iput-object v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    .line 63
    iget-object v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->txTimeMs:[J

    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getNumBytesTx()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesTx:J

    .line 65
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getNumPacketsRx()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numPacketsRx:J

    .line 66
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getNumBytesRx()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->numBytesRx:J

    .line 67
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRatMs()[J

    move-result-object v2

    .line 68
    array-length v6, v2

    new-array v6, v6, [J

    iput-object v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    .line 69
    iget-object v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRatMs:[J

    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getTimeInRxSignalStrengthLevelMs()[J

    move-result-object v2

    .line 71
    array-length v6, v2

    new-array v6, v6, [J

    iput-object v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    .line 72
    iget-object v6, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->timeInRxSignalStrengthLevelMs:[J

    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    invoke-virtual {v1}, Landroid/os/connectivity/CellularBatteryStats;->getMonitoredRailChargeConsumedMaMs()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v4

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/TelephonyProto$ModemPowerStats;->monitoredRailEnergyConsumedMah:D

    :cond_1
    return-object v0
.end method
