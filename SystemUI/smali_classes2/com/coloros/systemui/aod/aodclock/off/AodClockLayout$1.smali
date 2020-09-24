.class Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;
.super Ljava/lang/Object;
.source "AodClockLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isShowingCurvedDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Aod"

    const-string v1, "AodClockLayout"

    const-string v2, "postDelayed: STATE_DOZE_SUSPEND "

    .line 258
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->updateAodDozeStateAndStart(I)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setFirstTimeInAod(Z)V

    .line 272
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/AodManager;->releaseWakeLock()V

    return-void
.end method
