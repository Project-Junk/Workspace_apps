.class Lcom/coloros/systemui/qs/ColorBrightnessController$7;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ColorBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/ColorBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;Landroid/content/Context;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$7;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$7;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$7;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$000(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$7;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$7;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$200(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
