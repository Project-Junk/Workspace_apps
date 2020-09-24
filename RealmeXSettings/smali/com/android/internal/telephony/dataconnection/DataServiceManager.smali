.class public Lcom/android/internal/telephony/dataconnection/DataServiceManager;
.super Landroid/os/Handler;
.source "DataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;,
        Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;,
        Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
    }
.end annotation


# static fields
.field static final DATA_CALL_RESPONSE:Ljava/lang/String; = "data_call_response"

.field private static final DBG:Z = true

.field private static final EVENT_BIND_DATA_SERVICE:I = 0x1


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBound:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

.field private mDeathRecipient:Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

.field private mIDataService:Landroid/telephony/data/IDataService;

.field private final mMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

.field private mServiceConnection:Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;

.field private final mTag:Ljava/lang/String;

.field private mTargetBindingPackageName:Ljava/lang/String;

.field private final mTransportType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;ILjava/lang/String;)V
    .locals 6

    .line 254
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 256
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "DSM"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTag:Ljava/lang/String;

    .line 257
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    const/4 p2, 0x0

    .line 258
    iput-boolean p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "carrier_config"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string p2, "package"

    .line 261
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 262
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "appops"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 264
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 265
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/os/Message;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/os/RegistrantList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Landroid/telephony/data/IDataService;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Landroid/telephony/data/IDataService;)Landroid/telephony/data/IDataService;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDeathRecipient:Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;)Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDeathRecipient:Lcom/android/internal/telephony/dataconnection/DataServiceManager$DataServiceManagerDeathRecipient;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    return p1
.end method

.method private bindDataService()V
    .locals 5

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Can\'t find the binding package"

    .line 290
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already bound or being bound."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    return-void

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->revokePermissionsFromUnusedDataServices()V

    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/telephony/data/IDataService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/telephony/data/IDataService;->removeDataServiceProvider(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 307
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot remove data service provider. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 314
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->grantPermissionsToService(Ljava/lang/String;)V

    .line 317
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.data.DataService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceConnection:Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceConnection;

    const/4 v4, 0x1

    .line 318
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Cannot bind to the data service."

    .line 322
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_3
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 327
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot bind to the data service. Exception: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getAllDataServicePackageNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 338
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.data.DataService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 343
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_0

    .line 344
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getDataServicePackageName()Ljava/lang/String;
    .locals 1

    .line 355
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataServicePackageName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x10401a8

    const-string v0, "carrier_data_service_wlan_package_override_string"

    goto :goto_0

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport type not WWAN or WLAN. type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    .line 386
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const p1, 0x10401aa

    const-string v0, "carrier_data_service_wwan_package_override_string"

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 396
    invoke-virtual {v1, v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private grantPermissionsToService(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 123
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 125
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 126
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 125
    invoke-interface {p1, v0, v2}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 127
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4b

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    aget-object v0, v0, v1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Binder to package manager died, permission grant for DataService failed."

    .line 130
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private revokePermissionsFromUnusedDataServices()V
    .locals 6

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getAllDataServicePackageNames()Ljava/util/Set;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 143
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getDataServicePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 148
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 149
    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageManager;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x4b

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 153
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x2

    .line 152
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Binder to package manager died; failed to revoke DataService permissions."

    .line 157
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private sendCompleteMessage(Landroid/os/Message;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 404
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 4

    const-string v0, "deactivateDataCall"

    .line 464
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    .line 465
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string p1, "Data service not bound."

    .line 466
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 471
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    if-eqz p3, :cond_1

    .line 473
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, v0}, Landroid/telephony/data/IDataService;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot invoke deactivateDataCall on data service."

    .line 478
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public getTransportType()I
    .locals 1

    .line 630
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mTransportType:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->bindDataService()V

    return-void
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerForServiceBindingChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestDataCallList(Landroid/os/Message;)V
    .locals 4

    const-string v0, "requestDataCallList"

    .line 554
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    .line 555
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string v0, "Data service not bound."

    .line 556
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 561
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    if-eqz p1, :cond_1

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, v0}, Landroid/telephony/data/IDataService;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v2, "Cannot invoke requestDataCallList on data service."

    .line 568
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    const-string v0, "setDataProfile"

    .line 527
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    .line 528
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string p1, "Data service not bound."

    .line 529
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 534
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    if-eqz p3, :cond_1

    .line 536
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, v0}, Landroid/telephony/data/IDataService;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot invoke setDataProfile on data service."

    .line 541
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 4

    const-string v0, "setInitialAttachApn"

    .line 494
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    .line 495
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const-string p1, "Data service not bound."

    .line 496
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 497
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 501
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    if-eqz p3, :cond_1

    .line 503
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, v0}, Landroid/telephony/data/IDataService;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot invoke setInitialAttachApn on data service."

    .line 509
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p7

    const-string v2, "setupDataCall"

    .line 429
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->log(Ljava/lang/String;)V

    .line 430
    iget-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mBound:Z

    const/4 v3, 0x4

    if-nez v2, :cond_0

    const-string v2, "Data service not bound."

    .line 431
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void

    .line 436
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DataServiceManager$1;)V

    if-eqz v1, :cond_1

    .line 438
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_1
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    move v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object v12, v2

    invoke-interface/range {v4 .. v12}, Landroid/telephony/data/IDataService;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v4, "Cannot invoke setupDataCall on data service."

    .line 444
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->loge(Ljava/lang/String;)V

    .line 445
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataServiceManager$CellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mDataCallListChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public unregisterForServiceBindingChanged(Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->mServiceBindingChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
