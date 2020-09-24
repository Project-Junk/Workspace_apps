.class Lcom/android/internal/telephony/ImsSmsDispatcher$3;
.super Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.source "ImsSmsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsSmsDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSmsReceived$0$ImsSmsDispatcher$3(Landroid/telephony/SmsMessage;II)V
    .locals 4

    .line 188
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS handled result: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispacher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p3, v3, :cond_1

    if-eq p3, v2, :cond_0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 205
    :try_start_0
    iget-object p3, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz p3, :cond_3

    .line 206
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p3}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/e;

    move-result-object p3

    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget p1, p1, Lcom/android/internal/telephony/SmsMessageBase;->mMessageRef:I

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/ims/e;->a(III)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const-string p1, "SMS Received with a PDU that could not be parsed."

    .line 209
    invoke-static {v1, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/e;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/ims/e;->a(III)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 213
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to acknowledgeSms(). Error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSendSmsResult(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSendSmsResult token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messageRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsSmsDispacher"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$300(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsServiceSmsSolicitedResponse(III)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v0, :cond_5

    .line 126
    iput p2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    const/4 p2, 0x1

    if-eq p3, p2, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p3, v2, :cond_3

    const/4 p4, 0x4

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v4, v2, :cond_2

    .line 139
    iget p1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ne p3, p4, :cond_1

    .line 141
    iput-boolean p2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/ImsSmsDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    const-wide/16 p3, 0x7d0

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 146
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onSendSmsResult Max retrys reaached: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p3, p3, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3, p2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 148
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p2, p2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 133
    :cond_3
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p2, p2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p4, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 134
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p2, p2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 130
    iget-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid token."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSmsReceived(ILjava/lang/String;[B)V
    .locals 2

    const-string v0, "ImsSmsDispacher"

    const-string v1, "SMS received."

    .line 184
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p3, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p3

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/internal/telephony/-$$Lambda$ImsSmsDispatcher$3$q7JFSZBuWsj-jBm5R51WxdJYNxc;-><init>(Lcom/android/internal/telephony/ImsSmsDispatcher$3;Landroid/telephony/SmsMessage;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p3, p2, v1, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu(Landroid/telephony/SmsMessage;Ljava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;Z)V

    return-void
.end method

.method public onSmsStatusReportReceived(IILjava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ImsSmsDispacher"

    const-string v1, "Status report received."

    .line 158
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v1, :cond_2

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/internal/telephony/SmsDispatchersController;->handleSmsStatusReport(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p3

    .line 165
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Status report handle result, success: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "complete: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_0
    iget-object p4, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-static {p4}, Lcom/android/internal/telephony/ImsSmsDispatcher;->access$400(Lcom/android/internal/telephony/ImsSmsDispatcher;)Lcom/android/ims/e;

    move-result-object p4

    .line 171
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3597
    :goto_0
    :try_start_1
    iget-object p4, p4, Lcom/android/ims/e;->e:Lcom/android/ims/h;

    invoke-virtual {p4, p1, p2, v1}, Lcom/android/ims/h;->b(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 3599
    :try_start_2
    new-instance p4, Lcom/android/ims/ImsException;

    const-string v1, "acknowledgeSmsReport()"

    const/16 v2, 0x6a

    invoke-direct {p4, v1, p2, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p4
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p2

    .line 174
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Failed to acknowledgeSmsReport(). Error: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-static {v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_1
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 178
    iget-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$3;->this$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object p2, p2, Lcom/android/internal/telephony/ImsSmsDispatcher;->mTrackers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 161
    :cond_2
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Invalid token."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
