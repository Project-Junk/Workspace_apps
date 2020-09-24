.class Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;
.super Ljava/lang/Object;
.source "OppoBatteryMeterView.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 3

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)I

    move-result p1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpdate \uff0cshowPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "OppoBatteryMeterView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$100(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)V

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    new-instance v1, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;-><init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;I)V

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
