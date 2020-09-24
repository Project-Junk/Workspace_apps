.class Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;
.super Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;
.source "QuickStatusBarHeaderExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 3

    .line 416
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/CircleBatteryShowObserver;->onChange(Z)V

    .line 417
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$400(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 418
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "display_ring_power_switch"

    .line 417
    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 419
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$500(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    .line 420
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleBatterSwitchObserver onChange mIsCircleBatteryShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {v2}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$500(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    invoke-static {v2, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$502(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)Z

    .line 422
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$600(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    .line 423
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$700(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    .line 424
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$800(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Lcom/coloros/systemui/qs/widget/ColorQuickQSStatusBarContainer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$900(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Landroid/view/View;)V

    .line 425
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$2;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$500(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$1000(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)V

    :cond_1
    return-void
.end method
