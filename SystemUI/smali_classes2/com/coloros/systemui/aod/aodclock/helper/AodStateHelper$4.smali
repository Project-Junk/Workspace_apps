.class Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;
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

    .line 156
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string p1, "Aod"

    const-string v0, "AodStateHelper"

    const-string v1, "mAodTimeSetEndMinObserver: "

    .line 159
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Setting_AodSetTimeEndMin"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setEndMin(I)V

    .line 162
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$4;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$100(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)V

    return-void
.end method
