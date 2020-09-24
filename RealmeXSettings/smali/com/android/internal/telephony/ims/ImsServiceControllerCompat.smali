.class public Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;
.super Lcom/android/internal/telephony/ims/ImsServiceController;
.source "ImsServiceControllerCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSCCompat"


# instance fields
.field private final mConfigCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mMmTelCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegCompatAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceController:Lcom/android/ims/internal/IImsServiceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V

    .line 53
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    .line 54
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    .line 55
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    return-void
.end method

.method private createMMTelCompat(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->getInterface(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    move-result-object p2

    .line 187
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/ims/MmTelInterfaceAdapter;)V

    .line 189
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    new-instance p2, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    invoke-direct {p2}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;-><init>()V

    .line 191
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->addRegistrationAdapter(Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->getOldConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;-><init>(Lcom/android/ims/internal/IImsConfig;)V

    .line 193
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method private createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected final createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p1

    return-object p1

    .line 141
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->createMMTelCompat(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public final disableIms(I)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    const-string v1, "ImsSCCompat"

    if-nez v0, :cond_0

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "enableIms: adapter null for slot :"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->disableIms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t enable IMS: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final enableIms(I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;

    const-string v1, "ImsSCCompat"

    if-nez v0, :cond_0

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "enableIms: adapter null for slot :"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->enableIms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t enable IMS: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;

    if-nez v0, :cond_0

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getConfig: Config does not exist for slot "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSCCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsConfigCompatAdapter;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1

    return-object p1
.end method

.method protected getInterface(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->createMMTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "ImsSCCompat"

    const-string p2, "createMMTelCompat: createMMTelFeature returned null."

    .line 178
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 181
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;

    invoke-interface {p2}, Lcom/android/ims/internal/IImsMMTelFeature;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method public final getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;

    if-nez v0, :cond_0

    .line 110
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getRegistration: Registration does not exist for slot "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsSCCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsRegistrationCompatAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1

    return-object p1
.end method

.method protected final getServiceInterface()Ljava/lang/String;
    .locals 1

    const-string v0, "android.telephony.ims.compat.ImsService"

    return-object v0
.end method

.method protected isServiceControllerAvailable()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyImsServiceReady()V
    .locals 2

    const-string v0, "ImsSCCompat"

    const-string v1, "notifyImsServiceReady"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mMmTelCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mRegCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mConfigCompatAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_1
    return-void
.end method

.method protected setServiceController(Landroid/os/IBinder;)V
    .locals 0

    .line 166
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceControllerCompat;->mServiceController:Lcom/android/ims/internal/IImsServiceController;

    return-void
.end method
