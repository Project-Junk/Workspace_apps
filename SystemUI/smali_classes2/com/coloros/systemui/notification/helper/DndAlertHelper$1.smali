.class Lcom/coloros/systemui/notification/helper/DndAlertHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DndAlertHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/DndAlertHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/DndAlertHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/DndAlertHelper;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_click_close_dnd"

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "DndAlertHelper"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 111
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->access$000(Lcom/coloros/systemui/notification/helper/DndAlertHelper;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "action_agree_dnd"

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->access$000(Lcom/coloros/systemui/notification/helper/DndAlertHelper;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
