.class Lcom/coloros/systemui/qs/ColorBrightnessController$2;
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

    .line 189
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$2;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$2;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$500(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->stopObserving()V

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$2;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$600(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$2;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
