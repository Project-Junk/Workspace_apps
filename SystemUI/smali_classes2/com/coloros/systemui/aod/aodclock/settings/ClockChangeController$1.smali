.class Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;
.super Landroid/database/ContentObserver;
.source "ClockChangeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 49
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->access$000(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Setting_AodPreviewClockMode"

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: changeMode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "ClockChangeController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->access$100(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;)Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$1;->this$0:Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;->access$100(Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController;)Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/ClockChangeController$ClockPreviewChangeCallBack;->updateView(I)V

    :cond_0
    return-void
.end method
