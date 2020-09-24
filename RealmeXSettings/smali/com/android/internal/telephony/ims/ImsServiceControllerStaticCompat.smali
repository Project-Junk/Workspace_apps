.class public Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.source "ImsServiceControllerStaticCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;
    }
.end annotation


# static fields
.field private static final IMS_SERVICE_NAME:Ljava/lang/String; = "ims"

.field private static final TAG:Ljava/lang/String; = "ImsSCStaticCompat"


# instance fields
.field private mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

.field private mImsServiceCompat:Lcom/android/ims/internal/IImsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    return-void
.end method


# virtual methods
.method protected getInterface(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .locals 1

    .line 113
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    if-nez p2, :cond_0

    const-string p1, "ImsSCStaticCompat"

    const-string p2, "getInterface: IImsService returned null."

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;

    invoke-interface {p2}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method protected isServiceControllerAvailable()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setServiceController(Landroid/os/IBinder;)V
    .locals 3

    if-nez p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/android/ims/internal/IImsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    .line 102
    :cond_1
    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsServiceCompat:Lcom/android/ims/internal/IImsService;

    return-void
.end method

.method public startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .locals 3

    const-string p1, "ims"

    .line 71
    invoke-static {p1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 79
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 82
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;-><init>(Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    .line 83
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    invoke-interface {p1, p2, p3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;->binderDied()V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat;->mImsDeathRecipient:Lcom/android/internal/telephony/ims/ImsServiceControllerStaticCompat$ImsDeathRecipient;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
