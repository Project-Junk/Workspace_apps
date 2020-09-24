.class Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;
.super Landroid/database/ContentObserver;
.source "AodStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string p1, "Aod"

    const-string v0, "AodStateHelper"

    const-string v1, "mAodCurvedDisplayNotificationObserver: "

    .line 233
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "oppo_aod_curved_display_notification_switch"

    invoke-static {p1, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 236
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v3, "ON"

    goto :goto_0

    :cond_0
    const-string v3, "OFF"

    :goto_0
    invoke-static {v1, v3}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadCurvedDisplayNotificationSwitch(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    if-ne p1, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setCurvedDisplaySwitchOn(Z)V

    .line 239
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$11;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$200(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)V

    return-void
.end method
