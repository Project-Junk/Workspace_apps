.class Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$2;
.super Landroid/content/BroadcastReceiver;
.source "AodClockLayout.java"


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

    .line 276
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "Aod"

    const-string p2, "AodClockLayout"

    const-string v0, "wake Aod up"

    .line 279
    invoke-static {p1, p2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->access$102(Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;Z)Z

    .line 281
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->onDreamingStarted()V

    return-void
.end method
