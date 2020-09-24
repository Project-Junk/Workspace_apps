.class public Lcom/android/internal/telephony/SmsDispatchersController;
.super Landroid/os/Handler;
.source "SmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    }
.end annotation


# static fields
.field private static final EVENT_IMS_STATE_CHANGED:I = 0xc

.field private static final EVENT_IMS_STATE_DONE:I = 0xd

.field private static final EVENT_PARTIAL_SEGMENT_TIMER_EXPIRY:I = 0xf

.field private static final EVENT_RADIO_ON:I = 0xb

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0xe

.field protected static final EVENT_SMS_HANDLER_EXITING_WAITING_STATE:I = 0x11

.field private static final EVENT_USER_UNLOCKED:I = 0x10

.field private static final INVALID_TIME:J = -0x1L

.field private static final PARTIAL_SEGMENT_WAIT_DURATION:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "SmsDispatchersController"

.field private static final VDBG:Z = false


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentWaitElapsedDuration:J

.field private mCurrentWaitStartTime:J

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private mIms:Z

.field private mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

.field private mImsSmsFormat:Ljava/lang/String;

.field private mLastInServiceTime:J

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 4

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, -0x1

    .line 86
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v2, 0x0

    .line 88
    iput-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 90
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    const-string/jumbo v0, "unknown"

    .line 107
    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/SmsDispatchersController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsDispatchersController$1;-><init>(Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "SmsDispatchersController"

    const-string v1, "SmsDispatchersController created"

    .line 111
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 115
    iget-object p3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    new-instance p3, Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p3, p1, p0}, Lcom/android/internal/telephony/ImsSmsDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    .line 121
    new-instance p3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {p3, p1, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {p3, p2, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 126
    new-instance p2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iget-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-static {p2, p3, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->registerNewMessageNotificationActionHandler(Landroid/content/Context;)V

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x0

    const/16 p3, 0xb

    invoke-interface {p1, p0, p3, p2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p3, 0xc

    invoke-interface {p1, p0, p3, p2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "user"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 135
    invoke-virtual {p1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 p3, 0xe

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    .line 146
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_UNLOCKED"

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 784
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result p1

    .line 785
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private handleGsmStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 791
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 795
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v0

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    const/4 v0, 0x1

    move v1, v0

    .line 801
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    .line 803
    :goto_0
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private handleInService(J)V
    .locals 5

    .line 260
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    :cond_0
    const/16 v0, 0xf

    .line 264
    iget-wide v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 265
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    iget-wide v3, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long/2addr v1, v3

    .line 264
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private handleOutOfService(J)V
    .locals 0

    const-wide/16 p1, -0x1

    .line 279
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    return-void
.end method

.method private handlePartialSegmentTimerExpiry(J)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitingState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 302
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "handlePartialSegmentTimerExpiry: ignoring timer expiry as InboundSmsHandler is in WaitingState"

    .line 285
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private isInService()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmsDispatchersController"

    .line 831
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reevaluateTimerStatus()V
    .locals 6

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->removeMessages(I)V

    .line 232
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 233
    iget-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    .line 241
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 243
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    return-void

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleInService(J)V

    return-void

    .line 248
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handleOutOfService(J)V

    return-void
.end method

.method private resetPartialSegmentWaitTimer()V
    .locals 4

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0xf

    .line 308
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->removeMessages(I)V

    .line 309
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isInService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 315
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    .line 316
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 317
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    .line 316
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 324
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitStartTime:J

    .line 325
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mLastInServiceTime:J

    :goto_0
    const-wide/16 v0, 0x0

    .line 328
    iput-wide v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCurrentWaitElapsedDuration:J

    return-void
.end method

.method private setImsSmsFormat(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "unknown"

    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, "3gpp2"

    .line 342
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, "3gpp"

    .line 339
    iput-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-void
.end method

.method private triggerDeliveryIntent(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Z
    .locals 2

    .line 808
    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "pdu"

    .line 810
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p3, "format"

    .line 811
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 3

    .line 351
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v0, 0x1

    .line 352
    aget v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setImsSmsFormat(I)V

    const/4 v1, 0x0

    .line 353
    aget p1, p1, v1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IMS registration state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsDispatchersController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispose()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispose()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 211
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->resetPartialSegmentWaitTimer()V

    return-void

    .line 204
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->handlePartialSegmentTimerExpiry(J)V

    return-void

    .line 200
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->reevaluateTimerStatus()V

    return-void

    .line 188
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 190
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->updateImsInfo(Landroid/os/AsyncResult;)V

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IMS State query failed with exp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsDispatchersController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleSmsStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 774
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleCdmaStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 777
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->handleGsmStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;Z)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "SmsDispatchersController"

    const-string v1, "SmsDispatchersController:injectSmsPdu"

    .line 388
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "injectSmsPdu: createFromPdu returned null"

    .line 391
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object p4

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-eq p4, v2, :cond_1

    const-string p1, "injectSmsPdu: not class 1"

    .line 398
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void

    .line 403
    :cond_1
    new-instance p4, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p4, p3, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v2, "3gpp"

    .line 405
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    const-string v4, ", format="

    const-string v5, "SmsDispatchersController:injectSmsText Sending msg="

    if-eqz v2, :cond_2

    .line 406
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "to mGsmInboundSmsHandler"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-virtual {p1, v3, p4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_2
    const-string v2, "3gpp2"

    .line 409
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "to mCdmaInboundSmsHandler"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-virtual {p1, v3, p4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "Invalid pdu format: "

    .line 415
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "injectSmsPdu failed: "

    .line 419
    invoke-static {v0, p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    invoke-interface {p3, v1}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    return-void
.end method

.method public injectSmsPdu([BLjava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 371
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;Z)V

    return-void
.end method

.method public isCdmaFormat(Ljava/lang/String;)Z
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isCdmaMo()Z
    .locals 2

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIms()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mIms:Z

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11

    move-object v0, p0

    .line 586
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 593
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    move-object v0, p0

    .line 713
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void

    .line 724
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14

    .line 430
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    if-nez v2, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 441
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SmsDispatchersController"

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    if-nez v0, :cond_2

    const-string v0, "old format matched new format processing over IMS"

    .line 443
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 447
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "old format matched new format (cdma)"

    .line 448
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :cond_3
    const-string v0, "old format matched new format (gsm)"

    .line 452
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 460
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "scAddr"

    .line 465
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_10

    const-string v4, "destAddr"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string/jumbo v7, "text"

    .line 466
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "destPort"

    const-string v10, "data"

    if-nez v8, :cond_5

    .line 467
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_3

    .line 473
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 474
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 478
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v11, "old format (gsm) ==> new format (cdma)"

    const-string v12, "old format (cdma) ==> new format (gsm)"

    const/4 v13, 0x0

    if-eqz v8, :cond_9

    const-string v8, "sms failed was text"

    .line 479
    invoke-static {v2, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 482
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 483
    invoke-static {v2, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v3, v4, v7, v5, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v13

    goto :goto_1

    .line 487
    :cond_7
    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_8

    move v5, v6

    :cond_8
    invoke-static {v3, v4, v7, v5, v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v13

    goto :goto_1

    .line 491
    :cond_9
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "sms failed was data"

    .line 492
    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 494
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 496
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 497
    invoke-static {v2, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_a

    move v5, v6

    .line 498
    :cond_a
    invoke-static {v3, v4, v2, v7, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v13

    goto :goto_1

    .line 502
    :cond_b
    invoke-static {v2, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_c

    move v5, v6

    .line 503
    :cond_c
    invoke-static {v3, v4, v2, v7, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 510
    :cond_d
    :goto_1
    iget-object v2, v13, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    const-string v3, "smsc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v2, v13, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    const-string v3, "pdu"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    if-nez v0, :cond_e

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    goto :goto_2

    .line 516
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 519
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 520
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :cond_10
    :goto_3
    const-string v0, "sendRetrySms failed to re-encode per missing fields!"

    .line 469
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v6, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 14

    move-object v0, p0

    .line 646
    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    move-object v3, p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void

    .line 656
    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void

    :cond_2
    move-object v3, p1

    .line 647
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/SmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/SmsDispatchersController;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method
