.class Lcom/coloros/systemui/qs/ColorBrightnessController$5;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "ColorBrightnessController.java"


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

    .line 247
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$5;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 2

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$5;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
