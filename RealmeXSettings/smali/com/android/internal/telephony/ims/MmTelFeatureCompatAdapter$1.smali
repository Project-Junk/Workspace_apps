.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationConnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationConnectedWithRadioTech(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "MmTelFeatureCompat"

    const-string v0, "registrationDisconnected: resetting MMTEL capabilities."

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    iget-object p1, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->access$000(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;[I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public registrationProgressing()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationProgressingWithRadioTech(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationResumed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationSuspended()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public voiceMessageCountUpdate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->notifyVoiceMessageCountUpdate(I)V

    return-void
.end method
