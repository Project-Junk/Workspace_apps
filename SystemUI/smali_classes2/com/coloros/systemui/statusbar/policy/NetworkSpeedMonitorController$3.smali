.class Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$3;
.super Landroid/database/ContentObserver;
.source "NetworkSpeedMonitorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Landroid/os/Handler;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 234
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$300(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)V

    const-string p1, "Statusbar"

    const-string v0, "NetworkSpeedMonitorCtrl"

    const-string v1, "mNetworkSpeedObserver_refreshSpeedView"

    .line 235
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->refreshSpeedStatus()V

    return-void
.end method
