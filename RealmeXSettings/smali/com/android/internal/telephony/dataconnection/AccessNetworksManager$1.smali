.class Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    .line 97
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$000(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
