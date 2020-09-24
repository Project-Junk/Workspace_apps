.class Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;
.super Ljava/util/TimerTask;
.source "NetworkSpeedMonitorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field mIncrementRxBytes:J

.field mOldRxBytes:J

.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)V
    .locals 2

    .line 240
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const-wide/16 v0, 0x0

    .line 241
    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mOldRxBytes:J

    .line 242
    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mIncrementRxBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$1;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;-><init>(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 246
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->shouldShowNetworkSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "NetworkSpeedMonitorCtrl"

    const-string v4, "Statusbar"

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$400(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/coloros/systemui/statusbar/utils/TrafficStatsHelper;->getTotalBytes(Landroid/content/Context;ZZ)J

    move-result-wide v5

    .line 248
    iget-wide v7, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mOldRxBytes:J

    sub-long v7, v5, v7

    iput-wide v7, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mIncrementRxBytes:J

    .line 249
    iput-wide v5, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mOldRxBytes:J

    .line 251
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$500(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_0

    const-string v0, "NetWorkSpeed is first load."

    .line 252
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-wide v7, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mIncrementRxBytes:J

    .line 254
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$502(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Z)Z

    .line 256
    :cond_0
    iget-wide v9, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mIncrementRxBytes:J

    cmp-long v0, v9, v7

    if-gez v0, :cond_1

    .line 257
    iput-wide v7, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mIncrementRxBytes:J

    .line 259
    :cond_1
    iget-wide v7, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->mIncrementRxBytes:J

    const-wide/16 v9, 0x4

    div-long/2addr v7, v9

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0, v7, v8}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$002(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;J)J

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWorkSpeed refresh totalBytes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", incrementPs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mSpeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    .line 262
    invoke-static {v2}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$000(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$600(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "run_myTimerTask.cancel()"

    .line 265
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$600(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->cancel()Z

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$700(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0, v2}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$502(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;Z)Z

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$800(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 273
    iput v1, v0, Landroid/os/Message;->what:I

    .line 274
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$MyTimerTask;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->access$800(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "send MSG_UPDATE_NETWORTSPEED"

    .line 275
    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
