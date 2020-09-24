.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SmsSenderCallback"
.end annotation


# instance fields
.field private final mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 465
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    return-void
.end method


# virtual methods
.method public final onDownloadMmsComplete(I)V
    .locals 1

    .line 500
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFilterComplete(I)V
    .locals 1

    .line 490
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected onFilterComplete call with result: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSendMmsComplete(I[B)V
    .locals 0

    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMSDispatcher"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSendMultipartSmsComplete(I[I)V
    .locals 0

    .line 485
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected onSendMultipartSmsComplete call with result: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMSDispatcher"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSendSmsComplete(II)V
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->disposeConnection(Landroid/content/Context;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$SmsSender;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-static {v2, v3, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->access$200(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
