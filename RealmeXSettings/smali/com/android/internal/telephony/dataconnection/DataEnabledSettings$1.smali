.class Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DataEnabledSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$000(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$100(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSubscriptionsChanged subId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$000(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    .line 119
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$100(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$200(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$100(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$002(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)I

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->access$300(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V

    :cond_0
    return-void
.end method
