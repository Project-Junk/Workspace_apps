.class public Lcom/android/internal/telephony/ims/ImsResolver;
.super Ljava/lang/Object;
.source "ImsResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;,
        Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;,
        Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    }
.end annotation


# static fields
.field private static final DELAY_DYNAMIC_QUERY_MS:I = 0x1388

.field private static final HANDLER_ADD_PACKAGE:I = 0x0

.field private static final HANDLER_CONFIG_CHANGED:I = 0x2

.field private static final HANDLER_DYNAMIC_FEATURE_CHANGE:I = 0x4

.field private static final HANDLER_OVERRIDE_IMS_SERVICE_CONFIG:I = 0x5

.field private static final HANDLER_REMOVE_PACKAGE:I = 0x1

.field private static final HANDLER_START_DYNAMIC_FEATURE_QUERY:I = 0x3

.field public static final METADATA_EMERGENCY_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

.field public static final METADATA_MMTEL_FEATURE:Ljava/lang/String; = "android.telephony.ims.MMTEL_FEATURE"

.field private static final METADATA_OVERRIDE_PERM_CHECK:Ljava/lang/String; = "override_bind_check"

.field public static final METADATA_RCS_FEATURE:Ljava/lang/String; = "android.telephony.ims.RCS_FEATURE"

.field private static final TAG:Ljava/lang/String; = "ImsResolver"


# instance fields
.field private mActiveControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private mAppChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBoundImsServicesByFeature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBoundServicesLock:Ljava/lang/Object;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierServices:[Ljava/lang/String;

.field private mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceService:Ljava/lang/String;

.field private mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

.field private mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

.field private mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

.field private mHandler:Landroid/os/Handler;

.field private mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mImsServiceControllerFactoryStaticBindingCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

.field private mInstalledServicesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDynamicBinding:Z

.field private final mNumSlots:I

.field private final mStaticComponent:Landroid/content/ComponentName;

.field private mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$1;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$2;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$3;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    .line 275
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$4;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 299
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$5;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$5;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$6;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryStaticBindingCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 328
    sget-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$WamP7BPq0j01TgYE3GvUqU3b-rs;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    .line 414
    new-instance v0, Lcom/android/internal/telephony/ims/ImsResolver$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsResolver$7;-><init>(Lcom/android/internal/telephony/ims/ImsResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    .line 447
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    .line 448
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    .line 449
    iput p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    .line 450
    iput-boolean p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    .line 451
    new-instance p2, Landroid/content/ComponentName;

    iget-object p4, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p2, p4, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    .line 452
    iget-boolean p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    if-nez p2, :cond_0

    const-string p2, "ImsResolver"

    const-string p4, "ImsResolver initialized with static binding."

    .line 453
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    .line 456
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    const-string p4, "carrier_config"

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 458
    new-array p2, p3, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    .line 459
    sget-object p2, Lcom/android/internal/telephony/ims/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    invoke-static {p2}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object p2

    iget p3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    int-to-long p3, p3

    .line 460
    invoke-interface {p2, p3, p4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    .line 463
    iget-boolean p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    if-eqz p2, :cond_1

    .line 464
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    .line 465
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 466
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 467
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "package"

    .line 468
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mAppChangedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 473
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsResolver;Ljava/util/Set;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->printFeatures(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/content/ComponentName;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Landroid/content/ComponentName;I)V

    return-void
.end method

.method private bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v0

    .line 868
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/HashSet;)V

    return-void
.end method

.method private bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 874
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    const-string v1, "ImsResolver"

    if-eqz v0, :cond_0

    .line 878
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsService connection exists, updating features "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindImsService: error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->create(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Binding ImsService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with features: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->bind(Ljava/util/HashSet;)Z

    .line 892
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation

    .line 920
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 922
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 924
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$-jFhgP_NotuFSwzjQBXWuvls4x4;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$-jFhgP_NotuFSwzjQBXWuvls4x4;-><init>(I)V

    .line 926
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 927
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 924
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 928
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 931
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v2, :cond_2

    .line 933
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 936
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$VfY5To_kbbTJevLzywTg-_S1JhA;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$VfY5To_kbbTJevLzywTg-_S1JhA;-><init>(I)V

    .line 937
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 938
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 936
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 942
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    .line 943
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 944
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 946
    invoke-virtual {v3}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$kF808g2NWzNL8H1SwzDc1FxiQdQ;-><init>(I)V

    .line 947
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 948
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    .line 947
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 946
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private carrierConfigChanged(I)V
    .locals 3

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;->getSubId(I)I

    move-result v0

    .line 1019
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "config_ims_package_override_string"

    .line 1021
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRebindService(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "ImsResolver"

    const-string v0, "carrierConfigChanged: CarrierConfig is null!"

    .line 1025
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1117
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "handleFeaturesChanged: Couldn\'t find cached info for name: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsResolver"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1124
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    .line 1125
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1128
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1130
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    return-void

    .line 1131
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1133
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_2
    return-void
.end method

.method private getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsServiceController;"
        }
    .end annotation

    .line 804
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;-><init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 805
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 806
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController;

    return-object p1
.end method

.method private getImsServiceControllers(I)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/ims/ImsServiceController;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 613
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 617
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 619
    monitor-exit v1

    return-object v0

    .line 621
    :cond_1
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 622
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mIsDynamicBinding:Z

    if-nez v1, :cond_0

    .line 1176
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->getStaticImsService()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1181
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method private getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 818
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p1
.end method

.method private getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;"
        }
    .end annotation

    .line 811
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;-><init>(Ljava/lang/String;)V

    .line 812
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 813
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-object p1
.end method

.method private getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I
    .locals 3

    const/4 v0, 0x0

    .line 794
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v0, v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getStaticImsService()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    new-instance v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>(I)V

    .line 1190
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mStaticComponent:Landroid/content/ComponentName;

    iput-object v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1191
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryStaticBindingCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    iput-object v2, v1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    const/4 v2, 0x0

    .line 1192
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    const/4 v2, 0x1

    .line 1193
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 1096
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1097
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1098
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1099
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 781
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge v1, v2, :cond_1

    .line 782
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$calculateFeaturesToCreate$3(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 926
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$calculateFeaturesToCreate$4(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 937
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$calculateFeaturesToCreate$5(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 947
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$getControllerByServiceInfo$1(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 0

    .line 805
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getInfoByPackageName$2(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z
    .locals 0

    .line 812
    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$shouldFeaturesCauseBind$6(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .locals 0

    .line 998
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private maybeAddedImsService(Ljava/lang/String;)V
    .locals 6

    .line 712
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maybeAddedImsService, packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 718
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByComponentName(Ljava/util/Map;Landroid/content/ComponentName;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 723
    iget-boolean v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v4, :cond_0

    .line 725
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating features in cached ImsService: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updating features - Old features: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " new features: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->replaceFeatures(Ljava/util/Set;)V

    .line 729
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 732
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 735
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding newly added ImsService to cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    iget-boolean v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v3, :cond_2

    .line 738
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 748
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 749
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 752
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    .line 755
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 757
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private maybeRebindService(ILjava/lang/String;)V
    .locals 1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1008
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_0

    .line 1009
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundCarrierServices(ILjava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1012
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->updateBoundCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method private maybeRemovedImsService(Ljava/lang/String;)Z
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing ImsService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 771
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private printFeatures(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "features: ["

    .line 1139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 1141
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const-string/jumbo v2, "{"

    .line 1142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    iget v2, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 1144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    iget v1, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "]"

    .line 1148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 5

    if-ltz p1, :cond_2

    .line 668
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 677
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 678
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    const-string v2, "ImsResolver"

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ImsServiceController added on slot: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with feature: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " using package: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 670
    :cond_2
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "putImsController received invalid parameters - slot: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", feature: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsResolver"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 687
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v1, :cond_3

    if-ltz p2, :cond_3

    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_1

    .line 696
    monitor-exit v1

    return-object v0

    .line 698
    :cond_1
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController;

    if-eqz v0, :cond_2

    const-string v3, "ImsResolver"

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ImsServiceController removed on slot: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with feature: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " using package: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 704
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    .line 705
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 689
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeImsController received invalid parameters - slot: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", feature: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsResolver"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private scheduleQueryForFeatures(Landroid/content/ComponentName;I)V
    .locals 1

    .line 1079
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1081
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "scheduleQueryForFeatures: Couldn\'t find cached info for name: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImsResolver"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1084
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void
.end method

.method private scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1088
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void
.end method

.method private scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V
    .locals 4

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v0

    const-string v1, "ImsResolver"

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getSlotForActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string p1, "scheduleQueryForFeatures: skipping query for ImsService that is not set as carrier/device ImsService."

    .line 1063
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1068
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "scheduleQueryForFeatures: dynamic query for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already scheduled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1073
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheduleQueryForFeatures: starting dynamic query for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private searchForImsServices(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;",
            ">;"
        }
    .end annotation

    .line 1200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    new-instance v1, Landroid/content/Intent;

    invoke-interface {p2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1206
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    .line 1209
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x80

    .line 1206
    invoke-virtual {p1, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1210
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    .line 1213
    new-instance v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    iget v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;-><init>(I)V

    .line 1214
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 1215
    iput-object p2, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1222
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->isDeviceService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-ne v3, p2, :cond_5

    .line 1224
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 1225
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.EMERGENCY_MMTEL_FEATURE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1227
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1229
    :cond_2
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.MMTEL_FEATURE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 1230
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1232
    :cond_3
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.telephony.ims.RCS_FEATURE"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    .line 1233
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->addFeatureForAllSlots(I)V

    .line 1238
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactoryCompat:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    if-eq v3, p2, :cond_6

    .line 1239
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->getSupportedFeatures()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1245
    :cond_5
    iput-boolean v4, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    .line 1247
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "service name: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", manifest query: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ImsResolver"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_IMS_SERVICE"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "override_bind_check"

    .line 1254
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 1257
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ImsService is not protected with BIND_IMS_SERVICE permission: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1255
    :cond_8
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method private shouldFeaturesCauseBind(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)Z"
        }
    .end annotation

    .line 996
    invoke-virtual {p1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;->INSTANCE:Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$SIkPixr-qGLIK-usUJIKu6S5BBs;

    .line 998
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    iget-object v1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->controllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    .line 1105
    invoke-interface {v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;->getServiceInterface()Ljava/lang/String;

    move-result-object v2

    .line 1104
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->startQuery(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ImsResolver"

    if-nez v0, :cond_0

    const-string v0, "startDynamicQuery: service could not connect. Retrying after delay."

    .line 1107
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1388

    .line 1108
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;I)V

    return-void

    :cond_0
    const-string p1, "startDynamicQuery: Service queried, waiting for response."

    .line 1110
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 4

    const-string v0, "ImsResolver"

    if-nez p1, :cond_0

    return-void

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 905
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unbinding ImsService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbind()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbindImsService: Remote Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private updateBoundCarrierServices(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_2

    .line 1030
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-ge p1, v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object v1, v0, p1

    .line 1032
    aput-object p2, v0, p1

    .line 1033
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ImsResolver"

    const-string v0, "Carrier Config updated, binding new ImsService"

    .line 1034
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1039
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1042
    iget-boolean p2, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_1

    .line 1043
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 1045
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mActiveControllers:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getControllerByServiceInfo(Ljava/util/Map;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object v0

    .line 832
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->calculateFeaturesToCreate(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Ljava/util/HashSet;

    move-result-object v1

    .line 833
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->shouldFeaturesCauseBind(Ljava/util/HashSet;)Z

    move-result v2

    const-string v3, "ImsResolver"

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    .line 836
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Updating features for ImsService: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Updating Features - New Features: "

    .line 838
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "updateImsServiceFeatures: unbound with active features, rebinding"

    .line 841
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsServiceWithFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Ljava/util/HashSet;)V

    .line 846
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->isActiveCarrierService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->name:Landroid/content/ComponentName;

    .line 848
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Updating device default"

    .line 849
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->updateImsServiceFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateImsServiceFeatures: Remote Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbinding: features = 0 for ImsService: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public disableIms(I)V
    .locals 3

    .line 531
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 533
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 534
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 535
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->disableIms(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableIms(I)V
    .locals 3

    .line 517
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllers(I)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 519
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 520
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 521
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->enableIms(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 591
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 579
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImsServiceConfiguration(IZ)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    .line 659
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 664
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mCarrierServices:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "ImsResolver"

    const-string p2, "getImsServiceConfiguration: invalid slotId!"

    .line 660
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 598
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundServicesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mBoundImsServicesByFeature:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_1

    .line 605
    monitor-exit v1

    return-object v0

    .line 607
    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController;

    .line 608
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureCallback;)Lcom/android/internal/telephony/ims/ImsServiceController;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 628
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mInstalledServicesCache:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getInfoByPackageName(Ljava/util/Map;Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getMmTelFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureCallback;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 553
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRcsFeatureAndListen(ILcom/android/ims/internal/IImsServiceFeatureCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1

    const/4 v0, 0x2

    .line 567
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceControllerAndListen(IILcom/android/ims/internal/IImsServiceFeatureCallback;)Lcom/android/internal/telephony/ims/ImsServiceController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 569
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 961
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsResolver;->putImsController(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void
.end method

.method public imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsResolver;->removeImsController(II)Lcom/android/internal/telephony/ims/ImsServiceController;

    return-void
.end method

.method public imsServiceFeaturesChanged(Landroid/telephony/ims/stub/ImsFeatureConfiguration;Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imsServiceFeaturesChanged: config="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsResolver"

    .line 983
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->handleFeaturesChanged(Landroid/content/ComponentName;Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initPopulateCacheAndStartBind()V
    .locals 3

    const-string v0, "ImsResolver"

    const-string v1, "Initializing cache and binding."

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryListener:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;->create(Landroid/content/Context;Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mFeatureQueryManager:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 506
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic lambda$new$0$ImsResolver(Landroid/os/Message;)Z
    .locals 5

    .line 344
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 375
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 377
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_1

    move v3, v1

    .line 378
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v2, "ImsResolver"

    if-eqz v3, :cond_2

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "overriding carrier ImsService - slot="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRebindService(ILjava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "overriding device ImsService -  packageName="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsResolver;->unbindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    .line 392
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDeviceService:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->getImsServiceInfoFromCache(Ljava/lang/String;)Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 397
    iget-boolean v0, p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;->featureFromMetadata:Z

    if-eqz v0, :cond_3

    .line 398
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->bindImsService(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 402
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->scheduleQueryForFeatures(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 366
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 367
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 368
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    .line 370
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 371
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ims/ImsResolver;->dynamicQueryComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    goto :goto_0

    .line 361
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    .line 362
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->startDynamicQuery(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V

    goto :goto_0

    .line 356
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 357
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->carrierConfigChanged(I)V

    goto :goto_0

    .line 351
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeRemovedImsService(Ljava/lang/String;)Z

    goto :goto_0

    .line 346
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->maybeAddedImsService(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return v1
.end method

.method public overrideImsServiceConfiguration(IZLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ImsResolver"

    if-ltz p1, :cond_2

    .line 640
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mNumSlots:I

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const-string p1, "overrideImsServiceConfiguration: null packageName!"

    .line 646
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 653
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "overrideImsServiceConfiguration: invalid slotId!"

    .line 641
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setImsDynamicQueryManagerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mDynamicQueryManagerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsDynamicQueryManagerFactory;

    return-void
.end method

.method public setImsServiceControllerFactory(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 485
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mImsServiceControllerFactory:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceControllerFactory;

    return-void
.end method

.method public setSubscriptionManagerProxy(Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 480
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver;->mSubscriptionManagerProxy:Lcom/android/internal/telephony/ims/ImsResolver$SubscriptionManagerProxy;

    return-void
.end method
