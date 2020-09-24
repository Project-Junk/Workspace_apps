.class public Lcom/android/internal/telephony/NetworkRegistrationManager;
.super Landroid/os/Handler;
.source "NetworkRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;,
        Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    }
.end annotation


# static fields
.field private static final EVENT_BIND_NETWORK_SERVICE:I = 0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbackTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

.field private mINetworkService:Landroid/telephony/INetworkService;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mRegStateChangeRegistrants:Landroid/os/RegistrantList;

.field private mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

.field private final mTag:Ljava/lang/String;

.field private mTargetBindingPackageName:Ljava/lang/String;

.field private final mTransportType:I


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/Phone;)V
    .locals 9

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkRegistrationManager$1;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 91
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "C"

    goto :goto_0

    :cond_0
    const-string p1, "I"

    .line 94
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NRM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 103
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 104
    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/NetworkRegistrationManager;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService;)Landroid/telephony/INetworkService;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mDeathRecipient:Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/NetworkRegistrationManager;)Ljava/util/Map;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/os/RegistrantList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    return-object p0
.end method

.method private bindService()V
    .locals 5

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Can\'t find the binding package"

    .line 240
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/telephony/INetworkService;->removeNetworkServiceProvider(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 254
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot remove data service provider. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 260
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.NetworkService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to bind "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    .line 267
    invoke-static {v3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 268
    new-instance v2, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    .line 269
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mServiceConnection:Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Cannot bind to the data service."

    .line 271
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_3
    iput-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 276
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindService failed "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 4

    .line 285
    iget v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x10401a9

    const-string v1, "carrier_network_service_wlan_package_override_string"

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transport type not WWAN or WLAN. type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x10401ab

    const-string v1, "carrier_network_service_wwan_package_override_string"

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 308
    invoke-virtual {v2, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->bindService()V

    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/telephony/INetworkService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerForNetworkRegistrationInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "registerForNetworkRegistrationInfoChanged"

    .line 135
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->logd(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public requestNetworkRegistrationInfo(ILandroid/os/Message;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkRegistrationManager;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "service not connected. Domain = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, "CS"

    goto :goto_0

    :cond_1
    const-string p1, "PS"

    .line 147
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 148
    new-instance p1, Landroid/os/AsyncResult;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Service not connected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 154
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$1;)V

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mINetworkService:Landroid/telephony/INetworkService;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, v0}, Landroid/telephony/INetworkService;->requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestNetworkRegistrationInfo RemoteException "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->loge(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mCallbackTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v2, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterForNetworkRegistrationInfoChanged(Landroid/os/Handler;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager;->mRegStateChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
