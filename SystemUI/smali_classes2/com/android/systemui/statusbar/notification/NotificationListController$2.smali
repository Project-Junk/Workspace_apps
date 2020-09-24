.class Lcom/android/systemui/statusbar/notification/NotificationListController$2;
.super Ljava/lang/Object;
.source "NotificationListController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->access$200(Lcom/android/systemui/statusbar/notification/NotificationListController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 90
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->access$300(Lcom/android/systemui/statusbar/notification/NotificationListController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 91
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->initPanelEnableCallback()V

    :cond_0
    return-void
.end method
