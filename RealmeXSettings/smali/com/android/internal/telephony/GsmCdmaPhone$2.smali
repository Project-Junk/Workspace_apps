.class Lcom/android/internal/telephony/GsmCdmaPhone$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mBroadcastReceiver: action "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GsmCdmaPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    if-ne v0, v1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p1, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    .line 299
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 301
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->access$000(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    return-void

    :cond_1
    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.telecom.intent.extra.TTY_PREFERRED"

    .line 303
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 305
    iget-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$2;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->access$100(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    :cond_2
    return-void
.end method
