.class Lcom/coloros/systemui/aod/AodService$1;
.super Landroid/os/Handler;
.source "AodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/AodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/AodService;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/AodService;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 431
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 432
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$000(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$000(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->showClock()V

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$100(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 452
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$100(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->showClock()V

    .line 456
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$200(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 457
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p0}, Lcom/coloros/systemui/aod/AodService;->access$200(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->showClock()V

    goto :goto_0

    .line 434
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$000(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 435
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$000(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->hideClock()V

    .line 437
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$100(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 438
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$100(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->hideClock()V

    .line 442
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p1}, Lcom/coloros/systemui/aod/AodService;->access$200(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 443
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService$1;->this$0:Lcom/coloros/systemui/aod/AodService;

    invoke-static {p0}, Lcom/coloros/systemui/aod/AodService;->access$200(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->hideClock()V

    :cond_6
    :goto_0
    return-void
.end method
