.class final Lcom/android/settings/fuelgauge/d$1;
.super Ljava/lang/Object;
.source "BatteryInfo.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/util/SparseIntArray;

.field b:J

.field c:I

.field d:B

.field final synthetic e:Lcom/android/settings/widget/UsageView;

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/android/settings/fuelgauge/d;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/d;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/d$1;->e:Lcom/android/settings/widget/UsageView;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/d$1;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcom/android/settings/fuelgauge/d$1;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->e:Lcom/android/settings/widget/UsageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/UsageView;->a(Landroid/util/SparseIntArray;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    .line 72
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/d$1;->b:J

    .line 73
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    sub-long/2addr p3, p1

    .line 1042
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/d;->l:J

    .line 74
    iget-object p1, p0, Lcom/android/settings/fuelgauge/d$1;->e:Lcom/android/settings/widget/UsageView;

    .line 1091
    iget-object p1, p1, Lcom/android/settings/widget/UsageView;->a:Lcom/android/settings/widget/UsageGraph;

    invoke-virtual {p1}, Lcom/android/settings/widget/UsageGraph;->a()V

    .line 76
    iget-object p1, p0, Lcom/android/settings/fuelgauge/d$1;->e:Lcom/android/settings/widget/UsageView;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    .line 2042
    iget-wide p2, p2, Lcom/android/settings/fuelgauge/d;->l:J

    long-to-int p2, p2

    const/16 p3, 0x64

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/widget/UsageView;->a(II)V

    return-void
.end method

.method public final a(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 0

    long-to-int p1, p1

    .line 81
    iput p1, p0, Lcom/android/settings/fuelgauge/d$1;->c:I

    .line 82
    iget-byte p1, p3, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte p1, p0, Lcom/android/settings/fuelgauge/d$1;->d:B

    .line 83
    iget-object p1, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    iget p2, p0, Lcom/android/settings/fuelgauge/d$1;->c:I

    iget-byte p3, p0, Lcom/android/settings/fuelgauge/d$1;->d:B

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/d$1;->a()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/d$1;->f:Landroid/content/Context;

    .line 101
    invoke-virtual {v0, v2}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    .line 106
    iget v0, p0, Lcom/android/settings/fuelgauge/d$1;->c:I

    if-ltz v0, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    iget-byte v3, p0, Lcom/android/settings/fuelgauge/d$1;->d:B

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    .line 3042
    iget-wide v2, v2, Lcom/android/settings/fuelgauge/d;->l:J

    .line 108
    iget-object v4, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/d;->e:J

    .line 109
    invoke-static {v4, v5}, Lcom/android/settingslib/utils/b;->a(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/d$1;->g:Lcom/android/settings/fuelgauge/d;

    .line 4042
    iget-boolean v3, v3, Lcom/android/settings/fuelgauge/d;->j:Z

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 108
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 118
    iget-object v2, p0, Lcom/android/settings/fuelgauge/d$1;->e:Lcom/android/settings/widget/UsageView;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/widget/UsageView;->a(II)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/fuelgauge/d$1;->e:Lcom/android/settings/widget/UsageView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/d$1;->a:Landroid/util/SparseIntArray;

    .line 4099
    iget-object v0, v0, Lcom/android/settings/widget/UsageView;->a:Lcom/android/settings/widget/UsageGraph;

    .line 4140
    iget-object v2, v0, Lcom/android/settings/widget/UsageGraph;->a:Landroid/util/SparseIntArray;

    iget-object v3, v0, Lcom/android/settings/widget/UsageGraph;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->a(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :cond_2
    return-void
.end method
