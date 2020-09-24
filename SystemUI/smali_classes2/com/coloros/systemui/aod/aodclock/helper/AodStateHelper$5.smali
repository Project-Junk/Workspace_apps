.class Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;
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

    .line 166
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string p1, "Aod"

    const-string v0, "AodStateHelper"

    const-string v1, "mAodTimeSetObserver: "

    .line 169
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Setting_AodUserSetTime"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "ON"

    goto :goto_0

    :cond_0
    const-string v1, "OFF"

    :goto_0
    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/AodUploadStatistic;->uploadAodUserSetTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$5;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setAodEnableTime(I)V

    return-void
.end method
