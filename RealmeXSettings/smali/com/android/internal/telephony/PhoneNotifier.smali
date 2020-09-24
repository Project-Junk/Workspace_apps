.class public interface abstract Lcom/android/internal/telephony/PhoneNotifier;
.super Ljava/lang/Object;
.source "PhoneNotifier.java"


# virtual methods
.method public abstract notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyCallQualityChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/CallQuality;I)V
.end method

.method public abstract notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyCellLocation(Lcom/android/internal/telephony/Phone;Landroid/telephony/CellLocation;)V
.end method

.method public abstract notifyDataActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
.end method

.method public abstract notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
.end method

.method public abstract notifyDisconnectCause(II)V
.end method

.method public abstract notifyEmergencyNumberList()V
.end method

.method public abstract notifyImsDisconnectCause(Lcom/android/internal/telephony/Phone;Landroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract notifyOemHookRawEventForSubscriber(I[B)V
.end method

.method public abstract notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract notifyPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
.end method

.method public abstract notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyPhysicalChannelConfiguration(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract notifyRadioPowerStateChanged(I)V
.end method

.method public abstract notifyServiceState(Lcom/android/internal/telephony/Phone;)V
.end method

.method public abstract notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract notifySrvccStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method

.method public abstract notifyUserMobileDataStateChanged(Lcom/android/internal/telephony/Phone;Z)V
.end method

.method public abstract notifyVoiceActivationStateChanged(Lcom/android/internal/telephony/Phone;I)V
.end method
