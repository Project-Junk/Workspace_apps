.class Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Landroid/os/Looper;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$000(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$100(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;J)V

    :goto_0
    return-void
.end method
