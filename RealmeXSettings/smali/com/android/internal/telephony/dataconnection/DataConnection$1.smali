.class Lcom/android/internal/telephony/dataconnection/DataConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 541
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mBroadcastReceiver - "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const-string v0, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    .line 543
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "subscription"

    .line 544
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 546
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "got ACTION_DDS_SWITCH_DONE, new DDS = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update network score"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 548
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const p2, 0x4001b

    .line 550
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 549
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
