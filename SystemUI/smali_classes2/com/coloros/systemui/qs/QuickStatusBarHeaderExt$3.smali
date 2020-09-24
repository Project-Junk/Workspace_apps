.class Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;
.super Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;
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

    .line 430
    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 4

    .line 433
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/observer/PowerPercentObserver;->onChange(Z)V

    .line 434
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$400(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "display_power_percent"

    .line 434
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$1102(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)Z

    .line 436
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerPercentObserver onChange mBatteryPercentShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {v1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$1100(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$700(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    .line 438
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$3;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p0}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$1100(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$1000(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)V

    return-void
.end method
