.class Lcom/coloros/systemui/qs/ColorBrightnessController$3;
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

    .line 203
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$800(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getBrightnessMode(Landroid/content/Context;)I

    move-result v0

    .line 209
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$902(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)Z

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result p0

    invoke-virtual {v0, v1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 215
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$3;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method
