.class Lcom/coloros/systemui/qs/ColorBrightnessController$4;
.super Ljava/lang/Object;
.source "ColorBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1000(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1100(Lcom/coloros/systemui/qs/ColorBrightnessController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getBrightnessForVr(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1200(Lcom/coloros/systemui/qs/ColorBrightnessController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1300(Lcom/coloros/systemui/qs/ColorBrightnessController;I)I

    move-result v0

    .line 240
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateSliderRunnable value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "StatusBar.BrightnessController"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v3}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1200(Lcom/coloros/systemui/qs/ColorBrightnessController;)I

    move-result v3

    iget-object v4, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v4}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1400(Lcom/coloros/systemui/qs/ColorBrightnessController;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$4;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    .line 242
    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1400(Lcom/coloros/systemui/qs/ColorBrightnessController;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 241
    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
