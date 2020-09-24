.class Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$1;
.super Lcom/coloros/notification/IHighPriorityHeadsUpService$Stub;
.source "HighPriorityHeadsUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$1;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-direct {p0}, Lcom/coloros/notification/IHighPriorityHeadsUpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissHeadsUp()V
    .locals 3

    const-string v0, "Notification"

    const-string v1, "HighPriorityHeadsUpService"

    const-string v2, "dismissHeadsUp"

    .line 56
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$1;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->access$000(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showHeadsUp(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Notification"

    const-string v1, "HighPriorityHeadsUpService"

    const-string v2, "showHeadsUp"

    .line 51
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$1;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->access$000(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
