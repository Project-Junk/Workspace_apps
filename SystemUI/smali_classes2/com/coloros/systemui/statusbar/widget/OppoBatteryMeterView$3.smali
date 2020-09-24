.class Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$3;
.super Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;
.source "OppoBatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/BatteryEstimatesLastUpdateTimeObserver;->onChange(Z)V

    .line 199
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$3;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$600(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
