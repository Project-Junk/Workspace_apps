.class Lcom/android/internal/telephony/LocaleTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LocaleTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LocaleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LocaleTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LocaleTracker;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "phone"

    .line 125
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/LocaleTracker;->access$000(Lcom/android/internal/telephony/LocaleTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/LocaleTracker$1;->this$0:Lcom/android/internal/telephony/LocaleTracker;

    const/4 v1, 0x3

    const-string v2, "android.telephony.extra.SIM_STATE"

    .line 128
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 127
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/LocaleTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
