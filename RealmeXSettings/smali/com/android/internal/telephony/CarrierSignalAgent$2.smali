.class Lcom/android/internal/telephony/CarrierSignalAgent$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CarrierSignalAgent;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierSignalAgent;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$200(Lcom/android/internal/telephony/CarrierSignalAgent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Default network available: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$000(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    .line 151
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "defaultNetworkAvailable"

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 156
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$202(Lcom/android/internal/telephony/CarrierSignalAgent;Z)Z

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Default network lost: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$000(Lcom/android/internal/telephony/CarrierSignalAgent;Ljava/lang/String;)V

    .line 162
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "defaultNetworkAvailable"

    .line 164
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent$2;->this$0:Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->access$202(Lcom/android/internal/telephony/CarrierSignalAgent;Z)Z

    return-void
.end method
