.class Lcom/android/internal/telephony/NetworkRegistrationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$1;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$1;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    .line 78
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$000(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$1;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const-string p2, "Carrier config changed. Try to bind network service."

    invoke-static {p1, p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$1;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
