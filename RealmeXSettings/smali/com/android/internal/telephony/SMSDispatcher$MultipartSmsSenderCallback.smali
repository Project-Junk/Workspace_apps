.class final Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultipartSmsSenderCallback"
.end annotation


# instance fields
.field private final mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 589
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    return-void
.end method


# virtual methods
.method public final onDownloadMmsComplete(I)V
    .locals 1

    .line 636
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

    .line 626
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

    .line 631
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
    .locals 7

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->disposeConnection(Landroid/content/Context;)V

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v0, :cond_0

    const-string p1, "SMSDispatcher"

    const-string p2, "Unexpected onSendMultipartSmsComplete call with null trackers."

    .line 605
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-static {v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$100(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 612
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    if-eqz p2, :cond_1

    .line 614
    array-length v4, p2

    if-le v4, v3, :cond_1

    .line 615
    aget v4, p2, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 617
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;->mSmsSender:Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    iget-object v6, v6, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object v6, v6, v3

    invoke-static {v5, v6, p1, v4}, Lcom/android/internal/telephony/SMSDispatcher;->access$200(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final onSendSmsComplete(II)V
    .locals 0

    .line 594
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected onSendSmsComplete call with result: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMSDispatcher"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
