.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;
.super Lcom/android/ims/a$b;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .line 3091
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStartFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 3107
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mImsUssdListener onCallStartFailed reasonCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3109
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->onCallTerminated(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallStarted(Lcom/android/ims/a;)V
    .locals 2

    .line 3094
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "mImsUssdListener onCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3096
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3097
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3098
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 3099
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3100
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;

    :cond_0
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 3114
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mImsUssdListener onCallTerminated reasonCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3115
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/16 v0, 0x19

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->removeMessages(I)V

    .line 3116
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2702(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 3117
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 3119
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/a;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 3120
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/a;)Lcom/android/ims/a;

    .line 3121
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3122
    new-instance p2, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p2, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3124
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3125
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3126
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$4802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Landroid/os/Message;)Landroid/os/Message;

    .line 3129
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/a;->a()V

    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/a;ILjava/lang/String;)V
    .locals 2

    .line 3135
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mImsUssdListener onCallUssdMessageReceived mode="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3149
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p2, p2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onIncomingUSSD(ILjava/lang/String;)V

    return-void
.end method
