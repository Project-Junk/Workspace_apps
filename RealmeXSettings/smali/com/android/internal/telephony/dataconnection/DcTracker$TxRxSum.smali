.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field public txPkts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->reset()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-wide p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 452
    iput-wide p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;)V
    .locals 2

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 457
    iget-wide v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 461
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 462
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{txSum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTcpTxRxSum()V
    .locals 2

    .line 474
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 475
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method

.method public updateTotalTxRxSum()V
    .locals 2

    .line 482
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->txPkts:J

    .line 483
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxSum;->rxPkts:J

    return-void
.end method
