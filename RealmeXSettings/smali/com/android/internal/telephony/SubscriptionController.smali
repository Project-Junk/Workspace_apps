.class public Lcom/android/internal/telephony/SubscriptionController;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field static final DBG_CACHE:Z = false

.field private static final DEPRECATED_SETTING:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionController"

.field static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field private static final SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final VDBG:Z

.field protected static mDefaultFallbackSubId:I

.field protected static mDefaultPhoneId:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected static sInstance:Lcom/android/internal/telephony/SubscriptionController;

.field protected static sPhones:[Lcom/android/internal/telephony/Phone;

.field private static sSlotIndexToSubIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private colorArr:[I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mCacheActiveSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheOpportunisticSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mLastISubServiceRegTime:J

.field private mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

.field protected final mLock:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPreferredDataSubId:I

.field private mSubInfoListLock:Ljava/lang/Object;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SubscriptionController"

    const/4 v1, 0x2

    .line 101
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    .line 154
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$Nt_ojdeqo4C2mbuwymYLvwgOLGo;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 169
    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 179
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    const/4 v0, -0x1

    .line 180
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    const v0, 0x7fffffff

    .line 182
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 105
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 187
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mPreferredDataSubId:I

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettings()V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 270
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 105
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 187
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mPreferredDataSubId:I

    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 272
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    const-string p1, "isub"

    .line 274
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettings()V

    const-string p1, "[SubscriptionController] init by Phone"

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addToSubIdList(III)Z
    .locals 2

    monitor-enter p0

    .line 3305
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3308
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3312
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "slotIndex, subId combo already exists in the map. Not adding it again."

    .line 3313
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 3314
    monitor-exit p0

    return p1

    .line 3316
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3318
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3321
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p1, "slotIndex, subId combo is added to the map."

    .line 3324
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 3325
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private broadcastDefaultSmsSubIdChanged(I)V
    .locals 2

    .line 2027
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[broadcastDefaultSmsSubIdChanged] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2028
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 2029
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    .line 2031
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 2032
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2033
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastSimInfoContentChanged()V
    .locals 2

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 301
    :catch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z
    .locals 7

    .line 2918
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2922
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2923
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Need carrier privilege on subId "

    if-ge v3, v1, :cond_2

    aget v5, p1, v3

    .line 2924
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2925
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 2926
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2929
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2933
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 2937
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2940
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p1, "[getSubscriptionInfoList] Sub Controller not ready"

    .line 2941
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 2946
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_subscription_service"

    .line 2947
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 2948
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSelectionForSubIdList([I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2949
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2950
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2951
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2953
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2955
    :cond_6
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2961
    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2963
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private databaseUpdateHelper(Landroid/content/ContentValues;IZ)I
    .locals 3

    .line 1694
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getGroupUuid(I)Landroid/os/ParcelUuid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 1695
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1694
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    .line 1696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 1702
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [I

    const/4 p3, 0x0

    .line 1703
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_1

    .line 1704
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    aput v2, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1706
    :cond_1
    iget-object p3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 1707
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSelectionForSubIdList([I)Ljava/lang/String;

    move-result-object p2

    .line 1706
    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1698
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 1699
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    .line 1698
    invoke-virtual {p3, p2, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 3417
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3418
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v0, "euicc"

    .line 3419
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    const/4 v0, -0x1

    .line 3420
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 3421
    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3420
    invoke-virtual {p1, v0, v1}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private enforceCarrierPrivilegeOnInactiveSub(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2731
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2733
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    .line 2734
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 2735
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2739
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    .line 2740
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2743
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforceReadPrivilegedPhoneState(Ljava/lang/String;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getActiveSubIdArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2324
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    .line 2325
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2328
    sget-object v1, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2335
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getActiveSubscriptionInfoForIccIdInternal(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 578
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 580
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 581
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 580
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "[getActiveSubInfoUsingIccId]+ iccId="

    if-eqz v3, :cond_2

    .line 583
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 584
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " subInfo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    .line 592
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " subList="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " subInfo=null"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionController;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 213
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    const-string v0, "SubscriptionController"

    const-string v1, "getInstance null"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method private getPhysicalSlotIndex(ZI)I
    .locals 4

    .line 3136
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    .line 3137
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result p2

    .line 3139
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    const/4 v2, 0x0

    .line 3141
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    if-eqz v1, :cond_0

    .line 3146
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->getLogicalSlotIdx()I

    move-result v3

    if-eq v3, p2, :cond_3

    :cond_0
    if-nez v1, :cond_1

    aget-object v3, v0, v2

    .line 3147
    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :cond_3
    :goto_1
    return v2
.end method

.method private getPhysicalSlotIndexFromLogicalSlotIndex(I)I
    .locals 3

    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 3159
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3160
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getLogicalSlotIdx()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private getSelectionForSubIdList([I)Ljava/lang/String;
    .locals 4

    .line 2972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 2973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    .line 2974
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2975
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2978
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 2979
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .locals 27
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "_id"

    .line 361
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v2, "icc_id"

    .line 363
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "sim_id"

    .line 365
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v2, "display_name"

    .line 367
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "carrier_name"

    .line 369
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "name_source"

    .line 371
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v2, "color"

    .line 373
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v2, "number"

    .line 375
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_roaming"

    .line 377
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 380
    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x1080506

    invoke-static {v3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    const-string v3, "mcc_string"

    .line 382
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "mnc_string"

    .line 384
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "card_id"

    .line 387
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "iso_country_code"

    .line 389
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v13

    .line 392
    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v13, v11}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v17, v8

    const-string v8, "is_embedded"

    .line 393
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v18, 0x0

    move-object/from16 v19, v2

    const/4 v2, 0x1

    if-ne v8, v2, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, v18

    :goto_0
    const-string v2, "carrier_id"

    .line 395
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v8, :cond_1

    const-string v0, "access_rules"

    .line 400
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 399
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/UiccAccessRule;->decodeRules([B)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v21, v13

    const-string v13, "is_opportunistic"

    .line 404
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v22, v0

    const/4 v0, 0x1

    if-ne v13, v0, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v0, v18

    :goto_2
    const-string v13, "group_uuid"

    .line 406
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    const-string v13, "profile_class"

    .line 408
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v20, v13

    const-string v13, "subscription_type"

    .line 410
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 413
    sget-boolean v13, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v13, :cond_3

    .line 414
    invoke-static {v5}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v24, v5

    .line 415
    invoke-static {v11}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v11

    .line 416
    new-instance v11, Ljava/lang/StringBuilder;

    move/from16 p1, v1

    const-string v1, "[getSubInfoRecord] id:"

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iccid:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " simSlotIndex:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " carrierid:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayName:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nameSource:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " iconTint:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataRoaming:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mcc:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mnc:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " countIso:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isEmbedded:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " accessRules:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cardId:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " publicCardId:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isOpportunistic:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " groupUUID:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v18

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " profileClass:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v20

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subscriptionType: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, p0

    .line 416
    invoke-direct {v1, v11}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move/from16 p1, v1

    move-object/from16 v24, v5

    move-object/from16 v25, v11

    move-object/from16 v13, v18

    move/from16 v5, v20

    move-object/from16 v1, p0

    .line 428
    :goto_3
    iget-object v11, v1, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11, v4}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v11

    .line 429
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v1, v19

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    goto :goto_4

    :cond_4
    move-object/from16 v1, v19

    :cond_5
    move-object v11, v1

    .line 432
    :goto_4
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v18, v3

    move-object v3, v1

    const/16 v23, 0x0

    move/from16 v19, v5

    move-object/from16 v5, v24

    move/from16 v20, v8

    move-object/from16 v8, v17

    move-object/from16 v24, v25

    move-object/from16 v25, v13

    move/from16 v26, v19

    move-object/from16 v13, v16

    move-object/from16 v16, v18

    move/from16 v17, v20

    move-object/from16 v18, v22

    move-object/from16 v19, v24

    move/from16 v20, v21

    move/from16 v21, v0

    move-object/from16 v22, v25

    move/from16 v24, v2

    move/from16 v25, v26

    move/from16 v26, p1

    invoke-direct/range {v3 .. v26}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;IZLjava/lang/String;ZIII)V

    return-object v1
.end method

.method private getSubscriptionInfoListFromCacheHelper(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3269
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "[getSubscriptionInfoList] Sub Controller not ready"

    .line 3270
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3276
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    .line 3277
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 3278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v5, "getSubscriptionInfoList"

    move-object v4, p1

    .line 3276
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3283
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_1

    .line 3286
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object p1

    .line 3290
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$LDPTJhBaM7oWBCw15r9tFZJYgoA;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$LDPTJhBaM7oWBCw15r9tFZJYgoA;-><init>(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 3291
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3300
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 3301
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getUnusedColor(Ljava/lang/String;)I
    .locals 5

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move v1, v0

    .line 490
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 492
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v3, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 497
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 498
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget p1, p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    array-length v0, v0

    rem-int v0, p1, v0

    .line 503
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget p1, p1, v0

    return p1
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 2

    .line 201
    const-class p1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter p1

    .line 202
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    goto :goto_0

    :cond_0
    const-string p0, "SubscriptionController"

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init() called multiple times!  sInstance = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    .line 208
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 3

    .line 190
    const-class v0, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    goto :goto_0

    :cond_0
    const-string p0, "SubscriptionController"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isActiveSubscriptionId(I)Z
    .locals 3

    .line 1274
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1275
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 1277
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isSubInfoReady()Z
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 249
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 253
    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mismatch between map and list. list size = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", map size = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "From the Map, subs in map at slot index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " are: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    .line 260
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 263
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "From the Cached list, subinfo is: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private isSubscriptionForRemoteSim(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSubscriptionVisible(I)Z
    .locals 4

    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 2340
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 2343
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v2
.end method

.method static synthetic lambda$getActiveSubIdArrayList$2(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 2328
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "SubscriptionController"

    .line 1977
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "SubscriptionController"

    .line 1987
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2674
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2676
    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2681
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2680
    invoke-static {p3, p2, v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionPropertyIntoContentResolver(ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I

    .line 2684
    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private notifyOpportunisticSubscriptionInfoChanged()V
    .locals 2

    const-string/jumbo v0, "telephony.registry"

    .line 3352
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    :try_start_0
    const-string v1, "notifyOpptSubscriptionInfoChanged:"

    .line 3355
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 3356
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOpportunisticSubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected static printStackTrace(Ljava/lang/String;)V
    .locals 5

    .line 2564
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2565
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "StackTrace - "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    .line 2566
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 2568
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 2572
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshCachedOpportunisticSubscriptionInfoList()Z
    .locals 6

    .line 3363
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3364
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    const-string v2, "is_opportunistic=1 AND (sim_id>=0 OR is_embedded=1)"

    const/4 v3, 0x0

    .line 3366
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3372
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_0

    .line 3374
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3377
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    .line 3379
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 3380
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->shouldDisableSubGroup(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3381
    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionInfo;->setGroupDisabled(Z)V

    .line 3382
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3383
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->deactivateSubscription(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    .line 3399
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    .line 3400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendDefaultChangedBroadcast(II)V
    .locals 3

    .line 2211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 2212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2214
    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[sendDefaultChangedBroadcast] broadcast default subId changed phoneId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2219
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setCarrierText(Ljava/lang/String;I)I
    .locals 4

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setCarrierText]+ text:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v0, "setCarrierText"

    .line 1491
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1496
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "carrier_name"

    .line 1497
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1500
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v3, 0x0

    .line 1499
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1503
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1505
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setSubscriptionEnabledInternal(Landroid/telephony/SubscriptionInfo;Z)Z
    .locals 3

    .line 3076
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    .line 3077
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 3076
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhysicalSlotIndex(ZI)I

    move-result v0

    .line 3078
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSubscriptionEnabledInternal setting subId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at physicalSlotIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v2, " enabled."

    goto :goto_0

    :cond_0
    const-string v2, " disabled."

    .line 3080
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3078
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 3084
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3085
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionOnEmbeddedSlot(IZI)Z

    move-result p1

    return p1

    .line 3087
    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionOnPhysicalSlot(IZI)Z

    move-result p1

    return p1
.end method

.method private setSubscriptionOnEmbeddedSlot(IZI)Z
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3095
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v0, "euicc"

    .line 3096
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/euicc/EuiccManager;

    .line 3097
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    .line 3099
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/SubscriptionController;->updateEnabledSubscriptionGlobalSetting(II)V

    .line 3100
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    const/4 p1, 0x1

    return p1
.end method

.method private setSubscriptionOnPhysicalSlot(IZI)Z
    .locals 2

    .line 3107
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/telephony/TelephonyManager;->enableModemForSlot(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3110
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/SubscriptionController;->updateEnabledSubscriptionGlobalSetting(II)V

    .line 3113
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/SubscriptionController;->updateModemStackEnabledGlobalSetting(ZI)V

    .line 3114
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static setSubscriptionPropertyIntoContentResolver(ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 2

    .line 2466
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2467
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "wfc_ims_roaming_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v1, "wfc_ims_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "enable_channel_50_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "enable_etws_test_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "alert_reminder_interval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "enable_cmas_severe_threat_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "show_cmas_opt_out_dialog"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "enable_cmas_amber_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v1, "wfc_ims_roaming_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "alert_sound_duration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_a
    const-string/jumbo v1, "vt_ims_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_b
    const-string v1, "enable_emergency_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_c
    const-string/jumbo v1, "wfc_ims_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_d
    const-string v1, "enable_alert_speech"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_e
    const-string v1, "enable_cmas_test_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_f
    const-string v1, "enable_cmas_extreme_threat_alerts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_10
    const-string v1, "is_opportunistic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_11
    const-string/jumbo v1, "volte_vt_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_12
    const-string v1, "enable_alert_vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string p1, "Invalid column name"

    .line 2490
    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    goto :goto_2

    .line 2487
    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2494
    :goto_2
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p0, v0, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x773be030 -> :sswitch_12
        -0x744070a5 -> :sswitch_11
        -0x6c716e4c -> :sswitch_10
        -0x5cb49b9e -> :sswitch_f
        -0x55773f83 -> :sswitch_e
        -0x52e5f19f -> :sswitch_d
        -0x489bd97a -> :sswitch_c
        -0x1b84c7bf -> :sswitch_b
        -0x190a3530 -> :sswitch_a
        -0x14d407f9 -> :sswitch_9
        0xac8e5e4 -> :sswitch_8
        0xc23defa -> :sswitch_7
        0xe5af4a6 -> :sswitch_6
        0x18468858 -> :sswitch_5
        0x1b9209cf -> :sswitch_4
        0x4bbbb7ac -> :sswitch_3
        0x4cc628c3 -> :sswitch_2
        0x4f8cec7e -> :sswitch_1
        0x5fa7eb60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private shouldDisableSubGroup(Landroid/os/ParcelUuid;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3406
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 3407
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected static slogd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionController"

    .line 1972
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDefaultSubIdsIfNeeded(II)V
    .locals 2

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateDefaultSubIdsIfNeeded] newDefault="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[updateDefaultSubIdsIfNeeded] set mDefaultFallbackSubId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(II)V

    .line 1254
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result p2

    .line 1255
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubscriptionId(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1257
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 1259
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result p2

    .line 1260
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubscriptionId(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1263
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result p2

    .line 1264
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubscriptionId(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    :cond_3
    return-void
.end method

.method private updateEnabledSubscriptionGlobalSetting(II)V
    .locals 2

    .line 3124
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "enabled_subscription_for_slot"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateModemStackEnabledGlobalSetting(ZI)V
    .locals 2

    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "modem_stack_enabled_for_slot"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private validateSubId(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2310
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "validateSubId subId: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2311
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    return-void

    .line 2314
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Default sub id passed as parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2312
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid sub id passed as parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v4, "card_id"

    const-string v5, "icc_id"

    const-string v6, "sim_id"

    const-string v7, "_id"

    .line 1014
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1015
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v9

    const/4 v10, -0x1

    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1e

    .line 1017
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 1018
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v8, v0

    .line 1028
    :cond_0
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1029
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v0

    .line 1031
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[addSubInfoRecord]+ iccid: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", slotIndex: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", subscriptionType: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const-string v9, "addSubInfo"

    .line 1036
    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "[addSubInfo]- null iccId"

    .line 1042
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1235
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    .line 1046
    :cond_2
    :try_start_1
    iget-object v9, v1, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "icc_id=?"

    .line 1049
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v14

    const/4 v10, 0x2

    const/4 v15, 0x1

    if-eqz v14, :cond_3

    .line 1050
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " AND subscription_type=?"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1051
    new-array v13, v10, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v15

    move-object/from16 v17, v13

    const/4 v14, 0x3

    const/16 v16, 0x0

    goto :goto_1

    .line 1053
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " OR icc_id=? OR icc_id=? collate nocase"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    .line 1055
    new-array v10, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v0, v10, v16

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v10, v15

    const/16 v17, 0x2

    aput-object v8, v10, v17

    move-object/from16 v17, v10

    move-object v8, v13

    .line 1057
    :goto_1
    sget-object v10, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "name_source"

    filled-new-array {v7, v6, v13, v5, v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v13, v9

    move/from16 v20, v14

    move-object v14, v10

    move/from16 v10, v16

    move-object/from16 v15, v18

    move-object/from16 v16, v8

    move-object/from16 v18, v19

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v8, :cond_5

    .line 1065
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    move v13, v10

    goto :goto_3

    :catchall_0
    move-exception v0

    move-wide/from16 v21, v11

    goto/16 :goto_f

    :cond_5
    :goto_2
    const/4 v13, 0x1

    .line 1066
    :goto_3
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, "[addSubInfoRecord] New record created: "

    const-string v10, "[addSubInfoRecord] Record already exists"

    move-wide/from16 v21, v11

    if-eqz v14, :cond_7

    if-eqz v13, :cond_6

    move-object/from16 v4, p2

    const/4 v5, -0x1

    .line 1070
    :try_start_3
    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/android/internal/telephony/SubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    .line 1072
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_4

    .line 1074
    :cond_6
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    if-eqz v13, :cond_8

    .line 1079
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    .line 1080
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 1082
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v12, 0x1

    .line 1083
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x2

    .line 1084
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    const/4 v15, 0x3

    .line 1085
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x4

    .line 1086
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1087
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    if-eq v2, v14, :cond_9

    .line 1090
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    if-eqz v15, :cond_b

    .line 1093
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v6, v14, :cond_b

    .line 1094
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1095
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1096
    :cond_a
    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :cond_b
    iget-object v5, v1, Lcom/android/internal/telephony/SubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1101
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eq v5, v12, :cond_c

    .line 1103
    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_c
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 1108
    invoke-static {v13}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v11, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1112
    :cond_d
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-eqz v8, :cond_e

    .line 1117
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v5, "sim_id=?"

    const/4 v6, 0x1

    .line 1122
    new-array v8, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v8, v10

    .line 1123
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v5, "icc_id=? AND subscription_type=?"

    const/4 v6, 0x2

    .line 1126
    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v6, v8

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_6

    :cond_f
    move-object/from16 v16, v5

    move-object/from16 v17, v8

    .line 1128
    :goto_6
    sget-object v14, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v13, v9

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_17

    .line 1131
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1133
    :cond_10
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1137
    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->addToSubIdList(III)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v6

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v8

    .line 1147
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[addSubInfoRecord] sSlotIndexToSubIds.size="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    .line 1148
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " slotIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " subId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " defaultSubId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " simCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1147
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1155
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v10

    if-nez v10, :cond_13

    .line 1156
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    if-eq v6, v10, :cond_12

    .line 1157
    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v8, 0x1

    goto :goto_9

    :cond_12
    :goto_8
    const-string v8, "setting default fallback subid to "

    .line 1158
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(II)V

    goto :goto_7

    :goto_9
    if-ne v6, v8, :cond_15

    const-string v6, "[addSubInfoRecord] one sim set defaults to subId="

    .line 1165
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1169
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 1170
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    goto :goto_a

    :cond_13
    const/4 v8, 0x1

    .line 1173
    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->updateDefaultSubIdsIfNeeded(II)V

    goto :goto_a

    :cond_14
    const/4 v8, 0x1

    const-string v6, "[addSubInfoRecord] current SubId is already known, IGNORE"

    .line 1177
    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1182
    :cond_15
    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "[addSubInfoRecord] hashmap("

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1184
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_10

    goto :goto_b

    :catchall_1
    move-exception v0

    if-eqz v5, :cond_16

    .line 1188
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0

    :cond_17
    :goto_b
    if-eqz v5, :cond_18

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1194
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1196
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    goto/16 :goto_e

    .line 1200
    :cond_19
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 1201
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v2, "[addSubInfoRecord]- getSubId failed invalid subId = "

    .line 1203
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1235
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_c
    const/4 v0, -0x1

    return v0

    :cond_1a
    if-eqz v4, :cond_1c

    .line 1208
    :try_start_7
    iget-object v3, v1, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_d

    .line 1214
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CARD "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1217
    :goto_d
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "display_name"

    .line 1218
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v9, v0, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    const-string v0, "[addSubInfoRecord] sim name = "

    .line 1225
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1229
    :cond_1c
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->updateDataConnectionTracker()V

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[addSubInfoRecord]- info size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1235
    :goto_e
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_2
    move-exception v0

    :goto_f
    if-eqz v8, :cond_1d

    .line 1117
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    move-wide/from16 v21, v11

    .line 1235
    :goto_10
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1e
    const-string v0, "[addSubInfoRecord]- null fullIccId"

    .line 1022
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 2

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[addSubInfoRecord]+ iccId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " slotIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 998
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected broadcastDefaultDataSubIdChanged(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2164
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[broadcastDefaultDataSubIdChanged] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 2166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    .line 2168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 2169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public broadcastDefaultVoiceSubIdChanged(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2067
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[broadcastDefaultVoiceSubIdChanged] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2068
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 2069
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "subscription"

    .line 2071
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 2072
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2073
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public clearSubInfo()I
    .locals 5

    const-string v0, "clearSubInfo"

    .line 1936
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1941
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "[clearSubInfo]- no simInfo size="

    .line 1944
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    .line 1948
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const-string v3, "[clearSubInfo]- clear size="

    .line 1949
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearSubInfoRecord(I)V
    .locals 6

    .line 1374
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[clearSubInfoRecord]+ iccId: slotIndex:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1377
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIndexPrivileged(IZ)Ljava/util/List;

    move-result-object v1

    .line 1379
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1380
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const/4 v4, -0x1

    .line 1382
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sim_id"

    .line 1381
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_0

    .line 1384
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1386
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 1385
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1392
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2807
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2813
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2814
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 2819
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2823
    :try_start_0
    new-instance p2, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 2825
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "group_uuid"

    .line 2826
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 2828
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSelectionForSubIdList([I)Ljava/lang/String;

    move-result-object v6

    .line 2827
    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v3, "createSubscriptionGroup update DB result: "

    .line 2830
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 2834
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 2836
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionGroupCreated([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2840
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "++++++++++++++++++++++++++++++++"

    .line 2579
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "Requires DUMP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string v3, "SubscriptionController:"

    .line 2583
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " mLastISubServiceRegTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mLastISubServiceRegTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultSubId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultDataSubId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultVoiceSubId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2588
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultSmsSubId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultDataPhoneId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 2591
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2590
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultVoicePhoneId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2593
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " defaultSmsPhoneId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 2594
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2593
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2597
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2598
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " sSlotIndexToSubId["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]: subIds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2600
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2601
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 2604
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2603
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "  "

    if-eqz v3, :cond_1

    :try_start_1
    const-string v5, " ActiveSubInfoList:"

    .line 2606
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 2608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, " ActiveSubInfoList: is null"

    .line 2611
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2614
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, " AllSubInfoList:"

    .line 2618
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 2620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v3, " AllSubInfoList: is null"

    .line 2623
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2626
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2630
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "euicc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 862
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "[getAccessibleSubInfoList] Embedded subscriptions are disabled"

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-object v1

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string v0, "is_embedded=1"

    .line 878
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_1

    const-string p1, "[getAccessibleSubInfoList] No info returned"

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-object v1

    .line 889
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;-><init>(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 890
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    .line 892
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 893
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 894
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_2

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getAccessibleSubInfoList] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " infos returned"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getActiveSubIdList(Z)[I
    .locals 4

    .line 2355
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdArrayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2359
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$VCQsMNqRHpN3RyoXYzh2YUwA2yc;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$VCQsMNqRHpN3RyoXYzh2YUwA2yc;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 2360
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 2363
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 2365
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2366
    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2370
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_2

    .line 2371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getActiveSubIdList] allSubs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " subIdArr.length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public getActiveSubInfoCount(Ljava/lang/String;)I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 762
    sget-boolean p1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz p1, :cond_0

    const-string p1, "[getActiveSubInfoCount] records null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 765
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getActiveSubInfoCount]- count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 766
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getActiveSubInfoCountMax()I
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    return v0
.end method

.method public getActiveSubInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "getActiveSubscriptionInfo"

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 523
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 524
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 523
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 526
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 527
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 529
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[getActiveSubscriptionInfo]+ subId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subInfo="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 537
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getActiveSubInfoForSubscriber]- subId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subList="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " subInfo=null"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 557
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoForIccIdInternal(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 561
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "getActiveSubscriptionInfoForIccId"

    invoke-static {v1, v0, p2, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 6

    .line 612
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[getActiveSubscriptionInfoForSimSlotIndex] no phone, slotIndex="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    return-object v1

    .line 619
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 620
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v3, "getActiveSubscriptionInfoForSimSlotIndex"

    .line 619
    invoke-static {v2, v0, p2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v1

    .line 626
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 628
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 629
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 628
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 631
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIndex="

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 632
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 634
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 641
    :cond_3
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId=null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "[getActiveSubscriptionInfoForSimSlotIndex]+ subList=null"

    .line 646
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 650
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionInfoListFromCacheHelper(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllSubInfoCount(Ljava/lang/String;)I
    .locals 9

    const-string v0, "[getAllSubInfoCount]+"

    .line 776
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "getAllSubInfoCount"

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 787
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 789
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_3

    .line 793
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[getAllSubInfoCount]- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SUB(s) in DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 799
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 806
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    .line 799
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string p1, "[getAllSubInfoCount]- no SUB in DB"

    .line 802
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 806
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_1
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 664
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "[getAllSubInfoList]+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "getAllSubInfoList"

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 675
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 678
    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 680
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[getAllSubInfoList]- "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " infos return"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_2
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "[getAllSubInfoList]- no info return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAvailableSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    const-string v2, "getAvailableSubscriptionInfoList"

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string p1, "sim_id>=0 OR subscription_type=1"

    .line 837
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v3, "euicc"

    .line 838
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccManager;

    .line 839
    invoke-virtual {v2}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OR is_embedded=1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v2, 0x0

    .line 843
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 846
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 848
    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getAvailableSubInfoList]- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " infos return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "[getAvailableSubInfoList]- no info return"

    .line 850
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 826
    :cond_3
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Need READ_PHONE_STATE to call  getAvailableSubscriptionInfoList"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultDataSubId()I
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2092
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultDataSubId] subId= "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getDefaultSmsSubId()I
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_sms"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2042
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultSmsSubId] subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getDefaultSubId()I
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v0

    .line 1998
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultSubId] isVoiceCapable subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    .line 2000
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 2001
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultSubId] NOT VoiceCapable subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2003
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2004
    sget v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 2005
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultSubId] NOT active use fall back subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2007
    :cond_2
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultSubId]- value = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public getDefaultVoiceSubId()I
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2082
    sget-boolean v1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[getDefaultVoiceSubId] subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public getEnabledSubscriptionId(I)I
    .locals 7

    const-string v0, "getEnabledSubscriptionId"

    .line 3226
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceReadPrivilegedPhoneState(Ljava/lang/String;)V

    .line 3228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3230
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhysicalSlotIndexFromLogicalSlotIndex(I)I

    move-result v2

    .line 3238
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-nez v3, :cond_0

    .line 3261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3244
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "modem_stack_enabled_for_slot"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v6, :cond_1

    .line 3261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3252
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_subscription_for_slot"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3256
    :catch_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3261
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 3231
    :cond_2
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "getEnabledSubscriptionId with invalid logicalSlotIndex "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 3261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getGroupUuid(I)Landroid/os/ParcelUuid;
    .locals 2

    .line 3026
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_id="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3028
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3031
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getOperatorNumericForData(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getOpportunisticSubscriptions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2780
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheOpportunisticSubInfoList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionInfoListFromCacheHelper(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPhoneId(I)I
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1889
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getPhoneId] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionController;->printStackTrace(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 1893
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 1894
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getPhoneId] asked for default subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1897
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1898
    sget-boolean p1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz p1, :cond_2

    const-string p1, "[getPhoneId]- invalid subId return=-1"

    .line 1899
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_2
    const/4 p1, -0x1

    return p1

    .line 1905
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1907
    sget p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .line 1908
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getPhoneId]- no sims, returning default phoneId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return p1

    .line 1913
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1914
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1915
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1917
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1918
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getPhoneId]- found subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " phoneId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_6
    return v2

    .line 1923
    :cond_7
    sget v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getPhoneId]- subId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found return default phoneId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return v0
.end method

.method public getPreferredDataSubscriptionId()I
    .locals 3

    const-string v0, "getPreferredDataSubscriptionId"

    .line 2768
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceReadPrivilegedPhoneState(Ljava/lang/String;)V

    .line 2769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2772
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneSwitcher;->getOpportunisticDataSubscriptionId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2774
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSimStateForSlotIndex(I)I
    .locals 4

    if-gez p1, :cond_0

    .line 2411
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "invalid slotIndex"

    goto :goto_0

    .line 2414
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2416
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "phone == null"

    goto :goto_0

    .line 2419
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2421
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "icc == null"

    goto :goto_0

    .line 2424
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    const-string v1, ""

    .line 2429
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v2, :cond_3

    .line 2430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSimStateForSlotIndex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " simState="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ordinal="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " slotIndex="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2430
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2433
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p1

    return p1
.end method

.method public getSlotIndex(I)I
    .locals 5

    .line 1802
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getSlotIndex] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionController;->printStackTrace(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 1805
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 1807
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    const-string p1, "[getSlotIndex]- subId invalid"

    .line 1808
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return v1

    .line 1812
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "[getSlotIndex]- size == 0, return SIM_NOT_INSERTED instead"

    .line 1815
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return v1

    .line 1819
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1820
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1821
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1823
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1824
    sget-boolean p1, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz p1, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[getSlotIndex]- return = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    :cond_5
    return v3

    :cond_6
    const-string p1, "[getSlotIndex]- return fail"

    .line 1829
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return v1
.end method

.method public getSlotIndexToSubIdsMap()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 3338
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    return-object v0
.end method

.method public getSoftSimCardSlotId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSubId(I)[I
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1841
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getSubId]+ slotIndex="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionController;->printStackTrace(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 1849
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result p1

    .line 1850
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getSubId] map default slotIndex="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1855
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 1857
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[getSubId]- invalid slotIndex="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-object v1

    .line 1862
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1864
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_3

    .line 1865
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[getSubId]- sSlotIndexToSubIds.size == 0, return null slotIndex="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_3
    return-object v1

    .line 1872
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1873
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1874
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 1875
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1876
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1878
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getSubId]- subIdArr="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_6
    return-object p1

    .line 1881
    :cond_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[getSubId]- numSubIds == 0, return null slotIndex="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-object v1
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2257
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2258
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2261
    aget p1, p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 446
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", querykey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 449
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v0

    .line 452
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 456
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_3

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    const-string p2, "Query fail"

    .line 468
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz p1, :cond_6

    .line 472
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :goto_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2
.end method

.method public getSubInfoForSubscriber(ILjava/lang/String;)Landroid/telephony/SubInfoRecord;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubInfoUsingSlotId(ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubInfoUsingSlotIndexPrivileged(IZ)Ljava/util/List;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 2268
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[getSubInfoUsingSlotIndexPrivileged]+ slotIndex:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 2270
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result p1

    .line 2272
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "[getSubInfoUsingSlotIndexPrivileged]- invalid slotIndex"

    .line 2273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    .line 2277
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "[getSubInfoUsingSlotIndexPrivileged]- not ready"

    .line 2278
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-object v1

    .line 2282
    :cond_2
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 p2, 0x1

    new-array v6, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 2284
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, p2

    const/4 v7, 0x0

    const-string v5, "sim_id=?"

    .line 2282
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2288
    :cond_3
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2289
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    if-nez v1, :cond_4

    .line 2292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 2294
    :cond_4
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_5

    .line 2300
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p2

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string p1, "[getSubInfoUsingSlotIndex]- null info return"

    .line 2303
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-object v1
.end method

.method public getSubscriptionInfoListForEmbeddedSubscriptionUpdate([Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(is_embedded=1"

    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p2, " AND is_removable=1"

    .line 927
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, ") OR icc_id IN ("

    .line 932
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 935
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_2

    if-lez p2, :cond_1

    const-string v1, ","

    .line 937
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\""

    .line 939
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    .line 941
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    .line 945
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2507
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "getSubscriptionProperty"

    invoke-static {v0, p1, p3, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 2512
    :cond_0
    iget-object p3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2513
    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x1

    new-array v3, p3, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v3, v7

    new-array v5, p3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v7

    const/4 v6, 0x0

    const-string v4, "_id=?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2520
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 2521
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p3, "wfc_ims_roaming_enabled"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo p3, "wfc_ims_mode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string p3, "enable_channel_50_alerts"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string p3, "group_uuid"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string p3, "enable_etws_test_alerts"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string p3, "alert_reminder_interval"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "enable_cmas_severe_threat_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_1

    :sswitch_7
    const-string p3, "show_cmas_opt_out_dialog"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string p3, "enable_cmas_amber_alerts"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x2

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo p3, "wfc_ims_roaming_mode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string p3, "alert_sound_duration"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x4

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo p3, "vt_ims_enabled"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0xd

    goto :goto_1

    :sswitch_c
    const-string p3, "enable_emergency_alerts"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x3

    goto :goto_1

    :sswitch_d
    const-string/jumbo p3, "wfc_ims_enabled"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0xe

    goto :goto_1

    :sswitch_e
    const-string p3, "enable_alert_speech"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x7

    goto :goto_1

    :sswitch_f
    const-string p3, "enable_cmas_test_alerts"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0xa

    goto :goto_1

    :sswitch_10
    const-string p3, "enable_cmas_extreme_threat_alerts"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p3, v7

    goto :goto_1

    :sswitch_11
    const-string p3, "is_opportunistic"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0x12

    goto :goto_1

    :sswitch_12
    const-string/jumbo p3, "volte_vt_enabled"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p3, 0xc

    goto :goto_1

    :sswitch_13
    const-string p3, "enable_alert_vibrate"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v1

    :goto_1
    packed-switch p3, :pswitch_data_0

    const-string p2, "Invalid column name"

    goto :goto_2

    .line 2542
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2545
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string p2, "Valid row not present in db"

    .line 2549
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p2, "Query failed"

    .line 2552
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    if-eqz p1, :cond_4

    .line 2556
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2559
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getSubscriptionProperty Query value = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_5

    .line 2556
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p2

    :sswitch_data_0
    .sparse-switch
        -0x773be030 -> :sswitch_13
        -0x744070a5 -> :sswitch_12
        -0x6c716e4c -> :sswitch_11
        -0x5cb49b9e -> :sswitch_10
        -0x55773f83 -> :sswitch_f
        -0x52e5f19f -> :sswitch_e
        -0x489bd97a -> :sswitch_d
        -0x1b84c7bf -> :sswitch_c
        -0x190a3530 -> :sswitch_b
        -0x14d407f9 -> :sswitch_a
        0xac8e5e4 -> :sswitch_9
        0xc23defa -> :sswitch_8
        0xe5af4a6 -> :sswitch_7
        0x18468858 -> :sswitch_6
        0x1b9209cf -> :sswitch_5
        0x4bbbb7ac -> :sswitch_4
        0x4c71ed7b -> :sswitch_3
        0x4cc628c3 -> :sswitch_2
        0x4f8cec7e -> :sswitch_1
        0x5fa7eb60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 3003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3007
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 3008
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3012
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3015
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;-><init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/ParcelUuid;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3021
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3009
    :cond_1
    :goto_0
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3012
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 227
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 228
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 231
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    const-string p1, "isub"

    .line 239
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLastISubServiceRegTime:J

    :cond_0
    const-string p1, "[SubscriptionController] init by Context"

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return-void

    .line 233
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UiccController has to be initialised before SubscriptionController init"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertEmptySubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1405
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/SubscriptionController;->insertEmptySubInfoRecord(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method insertEmptySubInfoRecord(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 4

    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1412
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "icc_id"

    .line 1413
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getUnusedColor(Ljava/lang/String;)I

    move-result v2

    .line 1416
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sim_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "carrier_name"

    const-string v3, ""

    .line 1418
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "card_id"

    .line 1419
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "subscription_type"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1421
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "display_name"

    .line 1422
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1424
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1426
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1428
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :cond_1
    :goto_0
    sget-object p1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public isActiveSubId(I)Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2394
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2397
    :goto_0
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionController;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[isActiveSubId]- "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method public isActiveSubId(ILjava/lang/String;)Z
    .locals 2

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "isActiveSubId"

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2385
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2381
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires READ_PHONE_STATE permission."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCTCCard(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHasSoftSimCard()Z
    .locals 1

    .line 3464
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getSoftSimCardSlotId()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpportunistic(I)Z
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2250
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSubscriptionEnabled(I)Z
    .locals 11

    const-string v0, "isSubscriptionEnabled"

    .line 3172
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceReadPrivilegedPhoneState(Ljava/lang/String;)V

    .line 3174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3177
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 3178
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 3181
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "_id="

    .line 3185
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    .line 3187
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_5

    .line 3192
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    .line 3193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v5

    .line 3194
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhysicalSlotIndex(ZI)I

    move-result v6

    .line 3196
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_subscription_for_slot"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7fffffff

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 3199
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "modem_stack_enabled_for_slot"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v6, v3, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    if-ne v7, v9, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    if-ne v7, p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v4

    :goto_2
    if-eqz v2, :cond_7

    if-eqz v6, :cond_5

    if-nez p1, :cond_6

    if-eqz v8, :cond_5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    .line 3219
    :cond_6
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    move v3, v4

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_9
    :goto_5
    :try_start_2
    const-string v2, "setUserSelectedSubscription can\'t find subId "

    .line 3188
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3182
    :cond_a
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "setUserSelectedSubscription with invalid subId "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 3219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public synthetic lambda$getAccessibleSubscriptionInfoList$1$SubscriptionController(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$getActiveSubIdList$3$SubscriptionController(Ljava/lang/Integer;)Z
    .locals 0

    .line 2359
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionVisible(I)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$getSubscriptionInfoListFromCacheHelper$5$SubscriptionController(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 2

    .line 3293
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 3294
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    const-string v1, "getSubscriptionInfoList"

    .line 3293
    invoke-static {v0, p2, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$getSubscriptionsInGroup$4$SubscriptionController(Landroid/os/ParcelUuid;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z
    .locals 3

    .line 3016
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3017
    :cond_0
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 3018
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v2, "getSubscriptionsInGroup"

    invoke-static {v1, p1, p2, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3020
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected logdl(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1967
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logel(Ljava/lang/String;)V
    .locals 1

    .line 1981
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionController"

    .line 1962
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logvl(Ljava/lang/String;)V
    .locals 1

    .line 1957
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public migrateImsSettings()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2642
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2644
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 2645
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 2646
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2650
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "volte_vt_enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2653
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vt_ims_enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2656
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wfc_ims_enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2659
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wfc_ims_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2662
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wfc_ims_roaming_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2665
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wfc_ims_roaming_enabled"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->migrateImsSettingHelper(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string/jumbo v0, "telephony.registry"

    .line 336
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    :try_start_0
    const-string v1, "notifySubscriptionInfoChanged:"

    .line 339
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 340
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :catch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged()V

    .line 348
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/MultiSimSettingController;->onSubscriptionsChanged()V

    .line 349
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    .line 351
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateActiveSubscriptionInfoList(Ljava/util/List;)V

    return-void
.end method

.method public refreshCachedActiveSubscriptionInfoList()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 708
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mSubInfoListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "sim_id>=0 OR subscription_type=1"

    const/4 v2, 0x0

    .line 720
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 726
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->SUBSCRIPTION_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 727
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 731
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedOpportunisticSubscriptionInfoList()Z

    move-result v1

    .line 743
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 747
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifyOpportunisticSubscriptionInfoChanged()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 743
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeSubInfo(Ljava/lang/String;I)I
    .locals 13

    const-string v0, "removeSubInfo"

    .line 1289
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[removeSubInfo] uniqueId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCacheActiveSubInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1299
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 1300
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1301
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 1302
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    move v0, v3

    :goto_0
    const-string v4, ", uniqueId = "

    if-ne v0, v3, :cond_2

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid subscription details: subscriptionType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return v3

    .line 1314
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "removing the subid : "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1320
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1321
    sget-object v8, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id=? AND subscription_type=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    .line 1324
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 1321
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-eq v7, v12, :cond_3

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "found NO subscription to remove with subscriptionType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 1332
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1335
    sget-object p1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_4

    const-string p1, "sSlotIndexToSubIds has no entry for slotIndex = "

    .line 1337
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1339
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1341
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1342
    sget-object p1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIndexToSubIds:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1345
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sSlotIndexToSubIds has no subid: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", in index: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 1353
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 1354
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1353
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 1355
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1358
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 1360
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->updateDefaultSubIdsIfNeeded(II)V

    .line 1362
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_0
    move-exception p1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 2869
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/SubscriptionController;->checkCarrierPrivilegeOnSubList([ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 2881
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2884
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSelectionForSubIdList([I)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 2886
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2887
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 2888
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Subscription "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t belong to group "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2892
    :cond_3
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "group_uuid"

    .line 2893
    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    iget-object p3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 2895
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSelectionForSubIdList([I)Ljava/lang/String;

    move-result-object p1

    .line 2894
    invoke-virtual {p3, v3, p2, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p2, "removeSubscriptionsFromGroup update DB result: "

    .line 2897
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2899
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 2901
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh(I)V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    const-string v2, "requestEmbeddedSubscriptionInfoListRefresh"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 956
    :try_start_0
    invoke-static {p1, v2}, Lcom/android/internal/telephony/PhoneFactory;->requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V
    .locals 0

    .line 972
    invoke-static {p1, p2}, Lcom/android/internal/telephony/PhoneFactory;->requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V

    return-void
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 985
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    .line 984
    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneFactory;->requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V

    return-void
.end method

.method public resetStaticMembers()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, -0x1

    .line 3347
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    const v0, 0x7fffffff

    .line 3348
    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    return-void
.end method

.method public setCarrierId(II)I
    .locals 4

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setCarrierId]+ carrierId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v0, "setCarrierId"

    .line 1722
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1727
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1728
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "carrier_id"

    .line 1729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1730
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1731
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v3, 0x0

    .line 1730
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1734
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1736
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setCountryIso(Ljava/lang/String;I)I
    .locals 2

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setCountryIso]+ iso:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1787
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "iso_country_code"

    .line 1788
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1791
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    .line 1790
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1794
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1796
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    return p1
.end method

.method public setDataRoaming(II)I
    .locals 6

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setDataRoaming]+ roaming:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v0, "setDataRoaming"

    .line 1666
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1671
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    if-gez p1, :cond_0

    const-string p1, "[setDataRoaming]- fail"

    .line 1673
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p1, -0x1

    return p1

    .line 1676
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "data_roaming"

    .line 1677
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1678
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[setDataRoaming]- roaming:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " set"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1680
    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/SubscriptionController;->databaseUpdateHelper(Landroid/content/ContentValues;IZ)I

    move-result p1

    .line 1683
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1685
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setDefaultApplication(Ljava/lang/String;)V
    .locals 1

    .line 3454
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public setDefaultDataSubId(I)V
    .locals 12
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "setDefaultDataSubId"

    .line 2099
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 2101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_4

    .line 2107
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    .line 2108
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    array-length v3, v3

    .line 2109
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[setDefaultDataSubId] num phones="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2111
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2113
    new-array v4, v3, [Landroid/telephony/RadioAccessFamily;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    .line 2116
    sget-object v7, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v5

    .line 2118
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    if-ne v7, p1, :cond_0

    .line 2121
    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v6

    const/4 v8, 0x1

    goto :goto_1

    .line 2125
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v8

    move v11, v8

    move v8, v6

    move v6, v11

    .line 2127
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[setDefaultDataSubId] phoneId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " RAF="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2129
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v5, v6}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 2132
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    goto :goto_2

    :cond_2
    const-string v2, "[setDefaultDataSubId] no valid subId\'s found - not updating."

    .line 2134
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2139
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    .line 2141
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2143
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/MultiSimSettingController;->onDefaultDataSettingChanged()V

    .line 2144
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 2104
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2146
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected setDefaultFallbackSubId(II)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_4

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setDefaultFallbackSubId] subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2186
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->isSubscriptionForRemoteSim(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2187
    sput p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    return-void

    .line 2190
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2191
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result p2

    if-ltz p2, :cond_2

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2193
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2194
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setDefaultFallbackSubId] set mDefaultFallbackSubId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2195
    sput p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 2198
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 2199
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->sendDefaultChangedBroadcast(II)V

    return-void

    .line 2202
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setDefaultFallbackSubId] not set invalid phoneId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " subId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 2180
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "setDefaultSubId called with DEFAULT_SUB_ID"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultSmsSubId(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "setDefaultSmsSubId"

    .line 2014
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 2019
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setDefaultSmsSubId] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_sms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2022
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(I)V

    return-void

    .line 2017
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "setDefaultVoiceSubId"

    .line 2049
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    .line 2054
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setDefaultVoiceSubId] subId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2057
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(I)V

    return-void

    .line 2052
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2

    const-wide/16 v0, -0x1

    .line 1555
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    .locals 5

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setDisplayName]+  displayName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " nameSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v0, "setDisplayNameUsingSrc"

    .line 1573
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1578
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    if-nez p1, :cond_0

    .line 1581
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1585
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "display_name"

    .line 1586
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-ltz v3, :cond_1

    const-string v3, "Set nameSource="

    .line 1588
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v3, "name_source"

    .line 1589
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1591
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "[setDisplayName]- mDisplayName:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1596
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1597
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    .line 1596
    invoke-virtual {p1, p2, v2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1600
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1602
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 4

    .line 1618
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[setDisplayNumber]+ subId:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v0, "setDisplayNumber"

    .line 1620
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1625
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1627
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    if-eqz p1, :cond_1

    if-ltz v2, :cond_1

    .line 1629
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1630
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 1634
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "number"

    .line 1635
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1642
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v3, 0x0

    .line 1641
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1645
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    const-string p2, "[setDisplayNumber]- update result :"

    .line 1647
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "[setDispalyNumber]- fail"

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setIconTint(II)I
    .locals 5

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setIconTint]+ tint:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    const-string v0, "setIconTint"

    .line 1523
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1528
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1529
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "color"

    .line 1530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1531
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[setIconTint]- tint:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " set"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1533
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1534
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v3, 0x0

    .line 1533
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1537
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1539
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setMccMnc(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1751
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1752
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1756
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v3, v1

    .line 1759
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "[setMccMnc] - couldn\'t parse mcc/mnc: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1761
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "[setMccMnc]+ mcc/mnc:"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " subId:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1762
    new-instance p1, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {p1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1763
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "mcc"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mnc"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mcc_string"

    .line 1765
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mnc_string"

    .line 1766
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1769
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    .line 1768
    invoke-virtual {v0, p2, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1772
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V

    .line 1774
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    return p1
.end method

.method public setOpportunistic(ZILjava/lang/String;)I
    .locals 2

    .line 2703
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2708
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Caller requires permission on sub "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceCarrierPrivilegeOnInactiveSub(ILjava/lang/String;Ljava/lang/String;)V

    .line 2712
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    const-string p3, "is_opportunistic"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 2715
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2714
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 2717
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2721
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1450
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p1

    .line 1451
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 1452
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1451
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1453
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ""

    if-eqz p2, :cond_1

    if-eqz p4, :cond_3

    .line 1467
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1468
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const p4, 0x1040353

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1469
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1470
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    move-object p3, p5

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 1477
    :cond_3
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierText(Ljava/lang/String;I)I

    const/4 p1, 0x1

    .line 1478
    monitor-exit v0

    return p1

    :cond_4
    :goto_1
    const-string p1, "[setPlmnSpn] No valid subscription to store info"

    .line 1458
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1460
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    .line 1479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 3

    const-string v0, "setPreferredDataSubscriptionId"

    .line 2755
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 2756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2759
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;->trySetOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2762
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSubscriptionEnabled(ZI)Z
    .locals 5

    const-string v0, "setSubscriptionEnabled"

    .line 3040
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 3042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3045
    :try_start_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3049
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    const-string p1, "setSubscriptionEnabled not supported in single SIM modem."

    .line 3050
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_1
    const-string v2, "_id="

    .line 3053
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3055
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3064
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    .line 3071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3069
    :cond_2
    :try_start_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionEnabledInternal(Landroid/telephony/SubscriptionInfo;Z)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :cond_3
    :goto_0
    :try_start_3
    const-string p1, "setUserSelectedSubscription can\'t find subId "

    .line 3056
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3046
    :cond_4
    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "setUserSelectedSubscription with invalid subId "

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 3071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "setSubscriptionProperty"

    .line 2447
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 2448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2451
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 2452
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2453
    invoke-static {p1, p2, p3, v2}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionPropertyIntoContentResolver(ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I

    move-result p1

    .line 2456
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->refreshCachedActiveSubscriptionInfoList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 2223
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2225
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return v0

    .line 2228
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2230
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return v2

    .line 2233
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 2234
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 2235
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    if-ne v1, p2, :cond_2

    .line 2237
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return v2

    .line 2241
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    return v0
.end method

.method protected updateAllDataConnectionTrackers()V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2153
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    array-length v0, v0

    .line 2154
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[updateAllDataConnectionTrackers] sPhones.length="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[updateAllDataConnectionTrackers] phoneId="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2157
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->updateDataConnectionTracker()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePhonesAvailability([Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 2319
    sput-object p1, Lcom/android/internal/telephony/SubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    return-void
.end method
