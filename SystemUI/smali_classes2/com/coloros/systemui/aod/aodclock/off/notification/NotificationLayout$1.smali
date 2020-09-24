.class Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;
.super Ljava/lang/Object;
.source "NotificationLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 550
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    .line 551
    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->shouldShowOnKeguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurvedDisplay notification package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " show on keyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ongoing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    .line 555
    invoke-static {v3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Aod"

    const-string v4, "NotificationLayout"

    .line 553
    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$000(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$100(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 558
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    const-wide/16 v2, 0x1f40

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$200(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;JZ)V

    .line 559
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 560
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$300(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
