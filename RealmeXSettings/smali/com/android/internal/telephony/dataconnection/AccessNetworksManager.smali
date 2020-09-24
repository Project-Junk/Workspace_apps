.class public Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;
.super Landroid/os/Handler;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;,
        Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;,
        Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;,
        Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_BIND_QUALIFIED_NETWORKS_SERVICE:I = 0x1

.field private static final SUPPORTED_APN_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "AccessNetworksManager"


# instance fields
.field private final mAvailableNetworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDeathRecipient:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

.field private mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

.field private mServiceConnection:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;

.field private mTargetBindingPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 63
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x11
        0x2
        0x20
        0x40
        0x80
        0x4
        0x200
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 7

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 213
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 214
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/os/RegistrantList;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/telephony/data/IQualifiedNetworksService;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Landroid/telephony/data/IQualifiedNetworksService;)Landroid/telephony/data/IQualifiedNetworksService;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mDeathRecipient:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;)Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mDeathRecipient:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$AccessNetworksManagerDeathRecipient;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()[I
    .locals 1

    .line 59
    sget-object v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->SUPPORTED_APN_TYPES:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/util/SparseArray;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    return-object p0
.end method

.method private bindQualifiedNetworksService()V
    .locals 5

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->getQualifiedNetworksServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Can\'t find the binding package"

    .line 245
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    if-eqz v1, :cond_2

    .line 255
    invoke-interface {v1}, Landroid/telephony/data/IQualifiedNetworksService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mIQualifiedNetworksService:Landroid/telephony/data/IQualifiedNetworksService;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/telephony/data/IQualifiedNetworksService;->removeNetworkAvailabilityProvider(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 260
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot remove network availability updater. "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->loge(Ljava/lang/String;)V

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 267
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;

    const-string v1, "bind to "

    .line 268
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->log(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.data.QualifiedNetworksService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mServiceConnection:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceConnection;

    const/4 v4, 0x1

    .line 269
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "Cannot bind to the qualified networks service."

    .line 274
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 277
    :cond_3
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mTargetBindingPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 279
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot bind to the qualified networks service. Exception: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getQualifiedNetworksList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 313
    new-instance v2, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 314
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;-><init>(I[I)V

    .line 313
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getQualifiedNetworksServicePackageName()Ljava/lang/String;
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "carrier_qualified_networks_service_package_override_string"

    .line 298
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$dump$0(I)Ljava/lang/String;
    .locals 0

    .line 366
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 374
    sget-object v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 378
    sget-object v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "AccessNetworksManager:"

    .line 358
    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Available networks:"

    .line 360
    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 p1, 0x0

    .line 363
    :goto_0
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 364
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "APN type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    .line 365
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;

    .line 366
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ","

    .line 367
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 364
    invoke-virtual {p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 370
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->loge(Ljava/lang/String;)V

    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->bindQualifiedNetworksService()V

    return-void
.end method

.method public registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 328
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 333
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mAvailableNetworks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->getQualifiedNetworksList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->mQualifiedNetworksChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
