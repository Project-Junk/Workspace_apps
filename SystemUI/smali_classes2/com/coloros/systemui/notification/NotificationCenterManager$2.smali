.class Lcom/coloros/systemui/notification/NotificationCenterManager$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationCenterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/NotificationCenterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/NotificationCenterManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager$2;->this$0:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 272
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 273
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager$2;->this$0:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->access$000(Lcom/coloros/systemui/notification/NotificationCenterManager;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
