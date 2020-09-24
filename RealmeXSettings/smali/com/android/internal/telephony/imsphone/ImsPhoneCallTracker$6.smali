.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
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

    .line 3154
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 3

    .line 3159
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImsConnected imsRadioTech="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3160
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3161
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 3162
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onRegistering(I)V
    .locals 3

    .line 3169
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onImsProgressing imsRadioTech="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3170
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3171
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 3172
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 2

    .line 3188
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "registrationAssociatedUriChanged"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3189
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCurrentSubscriberUris([Landroid/net/Uri;)V

    return-void
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onImsDisconnected imsReasonInfo="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 3179
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 3180
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setImsRegistered(Z)V

    .line 3181
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->processDisconnectReason(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 3182
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$2200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$6;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnImsConnectionState(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
