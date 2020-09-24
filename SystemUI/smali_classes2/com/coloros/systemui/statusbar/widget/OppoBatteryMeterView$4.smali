.class Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;
.super Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;
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

    .line 202
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/PowerSavingModeObserver;->onChange(Z)V

    .line 206
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getPowerSavingModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$702(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Z)Z

    .line 207
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange() mPowerSavingModeObserver mBatterySavingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$700(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$4;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$400(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
