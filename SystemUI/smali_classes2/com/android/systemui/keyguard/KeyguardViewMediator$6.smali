.class Lcom/android/systemui/keyguard/KeyguardViewMediator$6;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1855
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1927
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1871
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1887
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    .line 1882
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1883
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1884
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_2

    :pswitch_4
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 1890
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1891
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1892
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_2

    :pswitch_5
    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 1922
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string p0, "KeyguardViewMediator"

    const-string p1, "Timeout while waiting for activity drawn!"

    .line 1923
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_2

    .line 1917
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1918
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v3, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4600(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    .line 1919
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->onSucccessfulUnlock()V

    goto/16 :goto_2

    .line 1913
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;

    .line 1914
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$DismissMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1908
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 1909
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1910
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_9
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 1903
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1904
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {p0, v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 1905
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    :pswitch_a
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 1898
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1899
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1900
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 1895
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    :pswitch_c
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    .line 1877
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1878
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1879
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 1874
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    :pswitch_e
    const-string p1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 1866
    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1867
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 1868
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 1863
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    .line 1860
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_2

    .line 1857
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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
        :pswitch_0
    .end packed-switch
.end method
