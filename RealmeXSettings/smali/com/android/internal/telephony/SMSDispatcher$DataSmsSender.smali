.class public final Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
.super Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DataSmsSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method


# virtual methods
.method public final onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 9

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "data"

    .line 435
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [B

    const-string v1, "destPort"

    .line 436
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v3, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v4

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 442
    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$000(Landroid/app/PendingIntent;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object v2, p1

    .line 440
    invoke-interface/range {v2 .. v8}, Landroid/service/carrier/ICarrierMessagingService;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 444
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Exception sending the SMS: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    return-void
.end method
