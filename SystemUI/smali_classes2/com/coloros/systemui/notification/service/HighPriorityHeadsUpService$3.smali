.class Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$3;
.super Ljava/lang/Object;
.source "HighPriorityHeadsUpService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->handleSend(Landroid/os/Message;)V
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

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$3;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "HighPriorityHeadsUpService"

    const-string v1, "mRequester Died"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService$3;->this$0:Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;

    invoke-static {p0}, Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;->access$000(Lcom/coloros/systemui/notification/service/HighPriorityHeadsUpService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
