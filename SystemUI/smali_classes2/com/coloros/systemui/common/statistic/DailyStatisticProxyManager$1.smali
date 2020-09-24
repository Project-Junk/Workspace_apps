.class Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager$1;
.super Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;
.source "DailyStatisticProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager$1;->this$0:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    invoke-direct {p0}, Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager$1;->this$0:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->access$000(Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;Landroid/content/Context;)V

    return-void
.end method
