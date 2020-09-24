.class Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "ImsRegistrationCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, -0x1

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public registrationConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onRegistered(I)V

    return-void
.end method

.method public registrationConnectedWithRadioTech(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onRegistered(I)V

    return-void
.end method

.method public registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registrationProgressing()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onRegistering(I)V

    return-void
.end method

.method public registrationProgressingWithRadioTech(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter$1;->this$0:Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-static {}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->onRegistering(I)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
