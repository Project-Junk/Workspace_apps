.class Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingState"
.end annotation


# instance fields
.field private mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V
    .locals 0

    .line 529
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "entering Waiting state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "exiting Waiting state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$500(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendEmptyMessage(I)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WaitingState.processMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 551
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 578
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/InboundSmsTracker;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    .line 567
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 569
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 570
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$800(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    if-eqz v0, :cond_4

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Defer sms broadcast due to undelivered sms,  messageCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 556
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 557
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->mLastDeliveredSmsTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 558
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1500(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1400(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/util/LocalLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 563
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return v2
.end method
