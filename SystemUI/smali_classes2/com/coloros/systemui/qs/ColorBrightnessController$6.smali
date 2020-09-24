.class Lcom/coloros/systemui/qs/ColorBrightnessController$6;
.super Landroid/os/Handler;
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

    .line 255
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1502(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)Z

    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 281
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {v2, v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1800(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)V

    goto :goto_3

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_3

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_3

    .line 269
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_3

    .line 265
    :cond_6
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 266
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    goto :goto_3

    .line 262
    :cond_7
    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    invoke-static {v2, v1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1600(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_3
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1502(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$6;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1502(Lcom/coloros/systemui/qs/ColorBrightnessController;Z)Z

    .line 285
    throw p1
.end method
