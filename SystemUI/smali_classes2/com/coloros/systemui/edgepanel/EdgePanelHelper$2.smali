.class Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;
.super Ljava/lang/Object;
.source "EdgePanelHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/edgepanel/EdgePanelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSetupChanged()V
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSetupChanged() current userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgePanelHelper"

    const-string v2, "EdgePanel"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {v0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$300(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onUserSetupChanged() user has setup and execute bind service"

    .line 98
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {v0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$500(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelHelper$2;->this$0:Lcom/coloros/systemui/edgepanel/EdgePanelHelper;

    invoke-static {p0}, Lcom/coloros/systemui/edgepanel/EdgePanelHelper;->access$400(Lcom/coloros/systemui/edgepanel/EdgePanelHelper;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
