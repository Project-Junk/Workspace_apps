.class Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;
.super Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;
.source "CircleBatteryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 2

    .line 286
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;->onChange(Z)V

    .line 287
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getPowerSavingModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->access$002(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;Z)Z

    .line 289
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange() mPowerSavingModeObserver mBatterySavingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    .line 290
    invoke-static {v1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->access$000(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    .line 289
    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->access$100(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)Lcom/coloros/systemui/statusbar/widget/CircleBatteryProgressView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 292
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->access$200(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;->access$300(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView;I)V

    :cond_1
    return-void
.end method
