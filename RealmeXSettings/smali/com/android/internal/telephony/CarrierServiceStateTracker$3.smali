.class Lcom/android/internal/telephony/CarrierServiceStateTracker$3;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "carrier_config"

    .line 286
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 287
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$000(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 289
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$400(Lcom/android/internal/telephony/CarrierServiceStateTracker;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;

    .line 291
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker$NotificationType;->setDelay(Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->access$500(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    return-void
.end method
