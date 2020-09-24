.class public Lcom/coloros/systemui/aod/aodclock/util/AodDailyStatisticProxy;
.super Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;
.source "AodDailyStatisticProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatistic(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodStatic(Landroid/content/Context;)V

    return-void
.end method
