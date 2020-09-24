.class Lcom/android/internal/telephony/SMSDispatcher$1;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;

.field final synthetic val$tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->val$tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizationResult(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1207
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->val$tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1209
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->val$tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const v2, 0x2eb36

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void
.end method
