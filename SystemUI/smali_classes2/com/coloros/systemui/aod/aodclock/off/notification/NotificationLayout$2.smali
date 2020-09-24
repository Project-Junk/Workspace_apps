.class Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$2;
.super Landroid/os/Handler;
.source "NotificationLayout.java"


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

    .line 661
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 664
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string p1, "Aod"

    const-string v0, "NotificationLayout"

    const-string v1, "removeCurvedDisplayView"

    .line 665
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$2;->this$0:Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->access$400(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->removeCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    return-void
.end method
