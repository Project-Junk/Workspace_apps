.class Lcom/android/internal/telephony/NetworkScanRequestTracker$1;
.super Landroid/os/Handler;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$700(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$600(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V

    return-void

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$500(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    return-void

    .line 85
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$400(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;I)V

    return-void

    .line 81
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$300(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    return-void

    .line 77
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Landroid/os/AsyncResult;)V

    return-void

    .line 73
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
