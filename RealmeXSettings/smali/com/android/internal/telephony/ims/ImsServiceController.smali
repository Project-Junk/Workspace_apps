.class public Lcom/android/internal/telephony/ims/ImsServiceController;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;,
        Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceController"

.field private static final REBIND_MAXIMUM_DELAY_MS:I = 0xea60

.field private static final REBIND_START_DELAY_MS:I = 0x7d0


# instance fields
.field private mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field private mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

.field private mFeatureStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

.field private mImsFeatureBinders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mImsFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field private mImsStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsServiceFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBinding:Z

.field private mIsBound:Z

.field protected final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

.field private mRestartImsServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;)V
    .locals 8

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsServiceControllerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    .line 191
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 291
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 292
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 293
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 294
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 295
    new-instance p1, Lcom/android/internal/telephony/ExponentialBackoff;

    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 296
    invoke-interface {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v1

    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 297
    invoke-interface {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v3

    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 299
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    const-string p1, "package"

    .line 301
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsServiceControllerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    .line 191
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 277
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 309
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 310
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 311
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 312
    new-instance p1, Lcom/android/internal/telephony/ExponentialBackoff;

    .line 313
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    .line 314
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x2

    move-object v1, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    const/4 p1, 0x0

    .line 318
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/ims/ImsServiceController;III)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureStatusChanged(III)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/ims/ImsServiceController;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/HashSet;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->startDelayedRebindToService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanupAllFeatures()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanUpService()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    return-object p0
.end method

.method private addImsFeatureBinder(IILandroid/os/IInterface;)V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;IILandroid/os/IInterface;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    const-string v1, "ImsServiceController"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_0

    goto :goto_1

    .line 654
    :cond_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_1

    .line 655
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 659
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    .line 658
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/os/IInterface;

    move-result-object v0

    .line 660
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureBinder(IILandroid/os/IInterface;)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    goto :goto_0

    .line 665
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "supports emergency calling on slot "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureCreatedCallback(II)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "addImsServiceFeature called with null values."

    .line 651
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private cleanUpService()V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 766
    :try_start_0
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 767
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 768
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cleanupAllFeatures()V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 756
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeatureCallbacks()V

    .line 761
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getImsFeatureContainer(II)Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$w3xbtqEhKr7IY81qFuw0e94p84Y;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$w3xbtqEhKr7IY81qFuw0e94p84Y;-><init>(II)V

    .line 748
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 749
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    return-object p1
.end method

.method private grantPermissionsToService()V
    .locals 4

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Granting Runtime permissions to:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 591
    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 594
    invoke-interface {v2, v0, v3}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const-string v0, "Unable to grant permissions, binder died."

    .line 598
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$getImsFeatureContainer$2(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;)Z
    .locals 1

    .line 748
    iget v0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    if-ne v0, p0, :cond_0

    iget p0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$removeImsFeatureBinder$1(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;)Z
    .locals 1

    .line 739
    iget v0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->slotId:I

    if-ne v0, p0, :cond_0

    iget p0, p2, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->featureType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$removeImsServiceFeature$0(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .locals 2

    .line 680
    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$900(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v0

    iget v1, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->access$1000(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result p1

    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private removeImsFeatureBinder(II)V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$rO36xbdAp6IQ5hFqLNNXDJPMers;-><init>(II)V

    .line 739
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 740
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    if-eqz p1, :cond_0

    .line 742
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatureBinders:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V
    .locals 6

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    const-string v1, "ImsServiceController"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 678
    :cond_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_3

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/ims/-$$Lambda$ImsServiceController$8NvoVXkZRS5LCradATGpNMBXAqg;-><init>(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    if-eqz v0, :cond_1

    .line 684
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 686
    :cond_1
    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v4, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureBinder(II)V

    .line 688
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v4, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v5, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v3, v4, v5, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 690
    :try_start_0
    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v4, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_2

    .line 691
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v2

    .line 690
    :cond_2
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t remove feature {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, connection is down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "doesn\'t support emergency calling on slot "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sendImsFeatureRemovedCallback(II)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "removeImsServiceFeature called with null values."

    .line 675
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendImsFeatureCreatedCallback(II)V
    .locals 4

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 604
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 607
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureCreated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendImsFeatureCreatedCallback: Binder died, removing callback. Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceController"

    .line 610
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendImsFeatureRemovedCallback(II)V
    .locals 4

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 619
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 622
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureRemoved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendImsFeatureRemovedCallback: Binder died, removing callback. Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceController"

    .line 625
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendImsFeatureStatusChanged(III)V
    .locals 4

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 634
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    .line 637
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsStatusChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendImsFeatureStatusChanged: Binder died, removing callback. Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceController"

    .line 640
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startDelayedRebindToService()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void
.end method


# virtual methods
.method public addImsServiceFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 455
    iget v3, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {p1, v3, v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback;->imsFeatureCreated(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "ImsServiceController"

    const-string v1, "addImsServiceFeatureCallback: exception notifying callback"

    .line 458
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    monitor-exit v0

    return-void

    .line 450
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 460
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public bind(Ljava/util/HashSet;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)Z"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 333
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 334
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->grantPermissionsToService()V

    .line 336
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getServiceInterface()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 338
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const-string v1, "ImsServiceController"

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Binding ImsService:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const v3, 0x4000041

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 346
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :cond_0
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    const-string v1, "ImsServiceController"

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error binding ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rebinding in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v0

    return v2

    .line 358
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 360
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public changeImsServiceFeatures(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImsServiceController"

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Features changed ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 404
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    .line 405
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-eqz p1, :cond_1

    .line 407
    new-instance p1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 409
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 410
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 411
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    goto :goto_0

    .line 414
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 416
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 417
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 418
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)V

    goto :goto_1

    .line 421
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/os/IInterface;
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

    .line 718
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p2, p1, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p1

    return-object p1

    .line 715
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p2, p1, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->createMmTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p1

    return-object p1
.end method

.method public disableIms(I)V
    .locals 2

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->disableIms(I)V

    .line 481
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t disable IMS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsServiceController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableIms(I)V
    .locals 2

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->enableIms(I)V

    .line 469
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t enable IMS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsServiceController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 532
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-object v0
.end method

.method public getMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 493
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsFeatureContainer(II)Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ImsServiceController"

    const-string v2, "Requested null MMTelFeature on slot "

    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 496
    monitor-exit v0

    return-object p1

    .line 498
    :cond_0
    const-class p1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->resolve(Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 499
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 507
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsFeatureContainer(II)Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "ImsServiceController"

    const-string v2, "Requested null RcsFeature on slot "

    .line 509
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 510
    monitor-exit v0

    return-object p1

    .line 512
    :cond_0
    const-class p1, Landroid/telephony/ims/aidl/IImsRcsFeature;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureContainer;->resolve(Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/aidl/IImsRcsFeature;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 513
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRebindDelay()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getServiceInterface()Ljava/lang/String;
    .locals 1

    const-string v0, "android.telephony.ims.ImsService"

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 566
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isServiceControllerAvailable()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyImsServiceReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImsServiceController"

    const-string v2, "notifyImsServiceReady"

    .line 541
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsServiceController;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsServiceController;->notifyImsServiceReadyForFeatureCreation()V

    .line 545
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public removeImsServiceFeatureCallbacks()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected setServiceController(Landroid/os/IBinder;)V
    .locals 0

    .line 557
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-void
.end method

.method protected startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public stopBackoffTimerForTesting()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void
.end method

.method public unbind()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-nez v1, :cond_0

    .line 380
    monitor-exit v0

    return-void

    .line 383
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/HashSet;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeatureCallbacks()V

    const-string v1, "ImsServiceController"

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unbinding ImsService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanUpService()V

    .line 388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
