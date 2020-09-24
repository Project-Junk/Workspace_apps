.class public Lcom/android/ims/a$b;
.super Ljava/lang/Object;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConferenceExtendFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$b;->onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallConferenceExtendReceived(Lcom/android/ims/a;Lcom/android/ims/a;)V
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallConferenceExtended(Lcom/android/ims/a;Lcom/android/ims/a;)V
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallConferenceStateUpdated(Lcom/android/ims/a;Landroid/telephony/ims/ImsConferenceState;)V
    .locals 0

    return-void
.end method

.method public onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onCallHandover(Lcom/android/ims/a;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/a;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onCallHeld(Lcom/android/ims/a;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallHoldFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$b;->onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/a;)V
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallInviteParticipantsRequestDelivered(Lcom/android/ims/a;)V
    .locals 0

    return-void
.end method

.method public onCallInviteParticipantsRequestFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$b;->onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallMerged(Lcom/android/ims/a;Lcom/android/ims/a;Z)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallProgressing(Lcom/android/ims/a;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallQualityChanged(Lcom/android/ims/a;Landroid/telephony/CallQuality;)V
    .locals 0

    return-void
.end method

.method public onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/a;)V
    .locals 0

    return-void
.end method

.method public onCallRemoveParticipantsRequestFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$b;->onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/a;)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallResumed(Lcom/android/ims/a;)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/a;I)V
    .locals 0

    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$b;->onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallStarted(Lcom/android/ims/a;)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/a;)V
    .locals 0

    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/a;I)V
    .locals 0

    return-void
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/a;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0

    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallUpdateFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a$b;->onCallError(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public onCallUpdateReceived(Lcom/android/ims/a;)V
    .locals 0

    return-void
.end method

.method public onCallUpdated(Lcom/android/ims/a;)V
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/ims/a$b;->onCallStateChanged(Lcom/android/ims/a;)V

    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/a;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/a;",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMultipartyStateChanged(Lcom/android/ims/a;Z)V
    .locals 0

    return-void
.end method

.method public onRttAudioIndicatorChanged(Lcom/android/ims/a;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public onRttMessageReceived(Lcom/android/ims/a;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRttModifyRequestReceived(Lcom/android/ims/a;)V
    .locals 0

    return-void
.end method

.method public onRttModifyResponseReceived(Lcom/android/ims/a;I)V
    .locals 0

    return-void
.end method
