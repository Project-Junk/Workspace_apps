.class Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;
.super Ljava/lang/Object;
.source "OppoBatteryMeterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->accept(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

.field final synthetic val$showPercentType:I


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;I)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->val$showPercentType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->val$showPercentType:I

    invoke-static {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$300(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;I)V

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    iget-object v1, v1, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$400(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->this$1:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;

    iget-object v1, v1, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1;->this$0:Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$200(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget p0, p0, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView$1$1;->val$showPercentType:I

    invoke-static {v0, v1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;->access$500(Lcom/coloros/systemui/statusbar/widget/OppoBatteryMeterView;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
