.class Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;
.super Ljava/lang/Object;
.source "OppoBatteryMeterView.java"

# interfaces
.implements Lcom/coloros/systemui/common/multiluser/IMultiUserListener;


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

    .line 214
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitched(I)V
    .locals 2

    .line 217
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$802(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)I

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$000(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)I

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$300(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)V

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$400(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$5;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$500(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
