.class Lcom/android/internal/telephony/PhoneSwitcher$3;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/os/Looper;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$400(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 6

    .line 254
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$500(Lcom/android/internal/telephony/PhoneSwitcher;)I

    move-result p1

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$502(Lcom/android/internal/telephony/PhoneSwitcher;I)I

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->access$600(Lcom/android/internal/telephony/PhoneSwitcher;)[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 260
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->access$700(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/PhoneSwitcher;->access$700(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$502(Lcom/android/internal/telephony/PhoneSwitcher;I)I

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneSwitcher;->access$500(Lcom/android/internal/telephony/PhoneSwitcher;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneIdInVoiceCall changed from"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 268
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$500(Lcom/android/internal/telephony/PhoneSwitcher;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$3;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method
