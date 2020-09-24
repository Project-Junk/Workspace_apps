.class public Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.super Ljava/lang/Object;
.source "MmTelInterfaceAdapter.java"


# instance fields
.field protected mBinder:Landroid/os/IBinder;

.field protected mSlotId:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    .line 45
    iput p1, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    return-void
.end method

.method private getInterface()Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Binder not Available"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    return-object p1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public endSession(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->endSession(I)V

    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->getFeatureStatus()I

    move-result v0

    return v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    return-object p1
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->isConnected(II)Z

    move-result p1

    return p1
.end method

.method public isOpened()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->isOpened()Z

    move-result v0

    return v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p1

    return p1
.end method

.method public turnOffIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOffIms()V

    return-void
.end method

.method public turnOnIms()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOnIms()V

    return-void
.end method
