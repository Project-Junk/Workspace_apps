.class Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$2;
.super Landroid/os/Handler;
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

    .line 61
    iput-object p1, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$2;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$2;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->access$200(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$2;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->access$100(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;Landroid/os/Message;)V

    :goto_0
    return-void
.end method
