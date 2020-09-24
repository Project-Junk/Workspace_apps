.class Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellularNetworkValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityNetworkCallback"
.end annotation


# instance fields
.field private final mSubId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CellularNetworkValidator;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CellularNetworkValidator;I)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 205
    iput p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 212
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network onAvailable "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$000(Ljava/lang/String;)V

    .line 213
    iget p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$100(Lcom/android/internal/telephony/CellularNetworkValidator;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeNetworkValidate(I)V

    :cond_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const/16 p1, 0x10

    .line 240
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onValidated"

    .line 241
    invoke-static {p1}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$000(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/CellularNetworkValidator;

    const/4 p2, 0x1

    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$200(Lcom/android/internal/telephony/CellularNetworkValidator;ZI)V

    :cond_0
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "network onLosing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " maxMsToLive "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$000(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/CellularNetworkValidator;

    iget p2, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$200(Lcom/android/internal/telephony/CellularNetworkValidator;ZI)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network onLost "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$000(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/CellularNetworkValidator;

    iget v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$200(Lcom/android/internal/telephony/CellularNetworkValidator;ZI)V

    return-void
.end method

.method public onUnavailable()V
    .locals 3

    const-string v0, "onUnavailable"

    .line 233
    invoke-static {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$000(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->this$0:Lcom/android/internal/telephony/CellularNetworkValidator;

    iget v1, p0, Lcom/android/internal/telephony/CellularNetworkValidator$ConnectivityNetworkCallback;->mSubId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/CellularNetworkValidator;->access$200(Lcom/android/internal/telephony/CellularNetworkValidator;ZI)V

    return-void
.end method
