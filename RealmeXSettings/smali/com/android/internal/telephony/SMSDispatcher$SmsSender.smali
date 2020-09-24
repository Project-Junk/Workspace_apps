.class public abstract Lcom/android/internal/telephony/SMSDispatcher$SmsSender;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SmsSender"
.end annotation


# instance fields
.field protected volatile mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

.field protected final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    return-void
.end method


# virtual methods
.method public sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V
    .locals 1

    .line 373
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    .line 374
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p2, p2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const-string p2, "SMSDispatcher"

    if-nez p1, :cond_0

    const-string p1, "bindService() for carrier messaging service failed"

    .line 375
    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mSenderCallback:Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->onSendSmsComplete(II)V

    return-void

    :cond_0
    const-string p1, "bindService() for carrier messaging service succeeded"

    .line 380
    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
