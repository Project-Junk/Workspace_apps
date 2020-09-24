.class Lcom/coloros/notification/NotificationInfoService$1;
.super Lcom/coloros/notification/INotificationInterface$Stub;
.source "NotificationInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/notification/NotificationInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/notification/NotificationInfoService;


# direct methods
.method constructor <init>(Lcom/coloros/notification/NotificationInfoService;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/coloros/notification/NotificationInfoService$1;->this$0:Lcom/coloros/notification/NotificationInfoService;

    invoke-direct {p0}, Lcom/coloros/notification/INotificationInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sbnIsFold(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowHeadsup(Ljava/lang/String;I)Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->shouldShowHeadsup(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public shouldShowOnKeyguard(Ljava/lang/String;)Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->shouldShowOnKeguard(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
