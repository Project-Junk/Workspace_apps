.class Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoOpenNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {p2}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$000(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$100(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {v0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$200(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$300(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$400(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$200(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler$1;->this$0:Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;->access$500(Lcom/coloros/systemui/notification/envelope/AutoOpenNotificationHandler;)V

    .line 107
    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
