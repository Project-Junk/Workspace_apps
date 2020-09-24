.class Lcom/coloros/systemui/notification/helper/AdbHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "AdbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/AdbHelper;->initAlarmReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/AdbHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p2, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-static {p2, p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$100(Lcom/coloros/systemui/notification/helper/AdbHelper;Landroid/content/Context;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$002(Lcom/coloros/systemui/notification/helper/AdbHelper;Z)Z

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$000(Lcom/coloros/systemui/notification/helper/AdbHelper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->cancelAutoCloseAlarm()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object p2, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$002(Lcom/coloros/systemui/notification/helper/AdbHelper;Z)Z

    .line 87
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$200(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->setAutoCloseAlarm()V

    goto :goto_0

    :cond_1
    const-string v0, "com.oppo.intent.action.ACTION_CLOSE_ADB"

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 91
    iget-object p2, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-static {p2, p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$100(Lcom/coloros/systemui/notification/helper/AdbHelper;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 92
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->closeAdb()V

    :cond_2
    :goto_0
    return-void
.end method
