.class Lcom/android/internal/telephony/ServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 p2, 0x39

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendEmptyMessage(I)Z

    return-void

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/ServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result p1

    if-nez p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " received on CDMA phone"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 493
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    return-void

    .line 494
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 495
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->access$802(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    .line 496
    iget-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely()V

    :cond_3
    return-void
.end method
