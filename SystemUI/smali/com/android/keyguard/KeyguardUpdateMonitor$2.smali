.class Lcom/android/keyguard/KeyguardUpdateMonitor$2;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    .line 529
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 525
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 479
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedWakingUp()V

    goto/16 :goto_1

    .line 424
    :pswitch_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 520
    :pswitch_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto/16 :goto_1

    .line 517
    :pswitch_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 514
    :pswitch_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 511
    :pswitch_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAssistantVisible(Z)V

    goto/16 :goto_1

    .line 508
    :pswitch_8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 505
    :pswitch_9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_1

    :pswitch_a
    const-string p1, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    .line 500
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 501
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 502
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    .line 497
    :pswitch_b
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 494
    :pswitch_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    goto/16 :goto_1

    .line 491
    :pswitch_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    .line 488
    :pswitch_e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_1

    :pswitch_f
    const-string v0, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    .line 483
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 484
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    .line 485
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    .line 454
    :pswitch_10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_1

    .line 466
    :pswitch_11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    goto/16 :goto_1

    .line 469
    :pswitch_12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    goto/16 :goto_1

    :pswitch_13
    const-string p1, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    .line 472
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 473
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    .line 474
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    .line 463
    :pswitch_14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 460
    :pswitch_15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 448
    :pswitch_16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 457
    :pswitch_17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 451
    :pswitch_18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 445
    :pswitch_19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/os/IRemoteCallback;)V

    goto :goto_1

    .line 442
    :pswitch_1a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 439
    :pswitch_1b
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_1

    .line 436
    :pswitch_1c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto :goto_1

    .line 433
    :pswitch_1d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_1

    .line 430
    :pswitch_1e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 427
    :pswitch_1f
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_1

    .line 421
    :pswitch_20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
