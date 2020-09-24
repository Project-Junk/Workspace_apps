.class public final Lcom/android/settings/fuelgauge/batterytip/g;
.super Ljava/lang/Object;
.source "HighUsageDataParser.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/d$a;


# instance fields
.field public a:I

.field public b:I

.field private final c:J

.field private d:J

.field private e:B

.field private f:B


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/g;->c:J

    .line 44
    iput p3, p0, Lcom/android/settings/fuelgauge/batterytip/g;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    .line 49
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batterytip/g;->d:J

    return-void
.end method

.method public final a(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 54
    iget-wide p1, p3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/g;->d:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batterytip/g;->c:J

    sub-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    .line 57
    :cond_0
    iget-byte p1, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p1, p0, Lcom/android/settings/fuelgauge/batterytip/g;->f:B

    .line 59
    :cond_1
    iget-byte p1, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p1, p0, Lcom/android/settings/fuelgauge/batterytip/g;->e:B

    return-void
.end method

.method public final b()V
    .locals 2

    .line 69
    iget-byte v0, p0, Lcom/android/settings/fuelgauge/batterytip/g;->f:B

    iget-byte v1, p0, Lcom/android/settings/fuelgauge/batterytip/g;->e:B

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/g;->b:I

    return-void
.end method
