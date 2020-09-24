.class public Lcom/android/internal/telephony/euicc/EuiccController;
.super Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.source "EuiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x2

.field private static final EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION:Ljava/lang/String; = "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

.field static final EXTRA_OPERATION:Ljava/lang/String; = "operation"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final OK:I = 0x0

.field private static final RESOLVABLE_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EuiccController"

.field private static sInstance:Lcom/android/internal/telephony/euicc/EuiccController;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    const-string p1, "econtroller"

    .line 113
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const-string/jumbo p2, "telephony_subscription_service"

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string p2, "phone"

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p2, "appops"

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->checkCarrierPrivilegeInMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1168
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1170
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1172
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blockingGetEidFromEuiccService(I)Ljava/lang/String;
    .locals 4

    .line 1111
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1113
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$9;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$9;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEid(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;)V

    .line 1125
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private blockingGetEuiccInfoFromEuiccService(I)Landroid/telephony/euicc/EuiccInfo;
    .locals 4

    .line 1149
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1150
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1151
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$11;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$11;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccInfo(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;)V

    .line 1163
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccInfo;

    return-object p1
.end method

.method private blockingGetOtaStatusFromEuiccService(I)I
    .locals 4

    .line 1129
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1130
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x5

    .line 1131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1132
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$10;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getOtaStatus(ILcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;)V

    .line 1144
    invoke-static {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccController;->awaitResult(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private callerCanReadPhoneStatePrivileged()Z
    .locals 2

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private callerCanWriteEmbeddedSubscriptions()Z
    .locals 2

    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;)Z
    .locals 4

    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 1215
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 1225
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1226
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1227
    invoke-virtual {v3, v2, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private canManageSubscriptionOnTargetSim(ILjava/lang/String;)Z
    .locals 6

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    .line 1243
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->supportMultiActiveSlots()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 1254
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1255
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1259
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccCardInfo;

    if-eqz v4, :cond_2

    .line 1260
    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v4}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    return v1

    .line 1272
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1274
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v5

    if-ne v5, p1, :cond_5

    .line 1275
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v4, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1281
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1282
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v4

    if-eq v4, p1, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1283
    invoke-virtual {v4, v2, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_8
    :goto_1
    return v1

    .line 1289
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1290
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1291
    invoke-virtual {v2, v0, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_b
    :goto_2
    return v1
.end method

.method private checkCarrierPrivilegeInMetadata(Landroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Z
    .locals 5

    .line 1179
    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getAccessRules()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/UiccAccessRule;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccAccessRule;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    const-string v1, "EuiccController"

    if-nez p1, :cond_1

    const-string p1, "No access rules but caller is unprivileged"

    .line 1184
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1190
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 1196
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1197
    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string p1, "Calling package has carrier privilege to this profile"

    .line 1199
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "Calling package doesn\'t have carrier privilege to this profile"

    .line 1203
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    const-string p1, "Calling package valid but gone"

    .line 1192
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static get()Lcom/android/internal/telephony/euicc/EuiccController;
    .locals 3

    .line 101
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v0, :cond_1

    .line 102
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-eqz v1, :cond_0

    .line 106
    monitor-exit v0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "get() called before init()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object v0
.end method

.method private getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;
    .locals 5

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1099
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 1102
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne p1, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccController;
    .locals 3

    .line 89
    const-class v0, Lcom/android/internal/telephony/euicc/EuiccController;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    goto :goto_0

    :cond_0
    const-string p0, "EuiccController"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() called multiple times! sInstance = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object p0, Lcom/android/internal/telephony/euicc/EuiccController;->sInstance:Lcom/android/internal/telephony/euicc/EuiccController;

    return-object p0

    :catchall_0
    move-exception p0

    .line 95
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private supportMultiActiveSlots()Z
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1056
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.RESOLVE_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_ACTION"

    .line 1057
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_CALLING_PACKAGE"

    .line 1059
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLVABLE_ERRORS"

    .line 1060
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_CARD_ID"

    .line 1061
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE_RETRIED"

    .line 1062
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "operation"

    .line 1064
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1065
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 p4, 0x40000000    # 2.0f

    invoke-static {p2, p3, v0, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string p3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_INTENT"

    .line 1067
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public blockingGetEuiccProfileInfoList(I)Landroid/service/euicc/GetEuiccProfileInfoListResult;
    .locals 4

    .line 574
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 575
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/telephony/euicc/EuiccController$3;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getEuiccProfileInfoList(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;)V

    .line 591
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 593
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "blockingGetEuiccInfoFromEuiccService got InterruptedException e: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EuiccController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 596
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/euicc/GetEuiccProfileInfoListResult;

    return-object p1
.end method

.method public continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v2, "operation"

    .line 149
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/euicc/EuiccOperation;

    if-eqz v2, :cond_0

    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_RESOLUTION_CALLBACK_INTENT"

    .line 155
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    .line 157
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/internal/telephony/euicc/EuiccOperation;->continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 151
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid resolution intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to continue operation"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7

    .line 699
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 700
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 704
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "EuiccController"

    if-nez v3, :cond_0

    :try_start_1
    const-string p1, "Cannot delete nonexistent subscription: "

    .line 706
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {p0, p4, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 714
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 715
    invoke-virtual {v0, v3, p3}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "No permissions: "

    .line 716
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {p0, p4, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 723
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 721
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 723
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method deleteSubscriptionPrivileged(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$4;

    invoke-direct {v1, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController$4;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deleteSubscription(ILjava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;)V

    return-void
.end method

.method public downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 328
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 17

    move-object/from16 v11, p0

    move/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v8, p4

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v1

    .line 336
    iget-object v2, v11, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    if-eqz v1, :cond_0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v13

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 343
    :try_start_0
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 377
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 358
    :cond_0
    :try_start_1
    invoke-direct {v11, v0, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    .line 359
    :try_start_2
    iget-object v15, v11, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-wide v3, v13

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move-object v11, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;Z)V

    move/from16 v1, p5

    invoke-virtual {v15, v0, v12, v1, v11}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V

    move-object/from16 v1, p0

    goto :goto_0

    :cond_1
    const-string v1, "EuiccController"

    const-string v2, "Caller can\'t manage subscription on target SIM. Ask user\'s consent first"

    .line 365
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p3

    .line 372
    invoke-static {v13, v14, v12, v1, v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v4, p4

    move/from16 v8, p1

    .line 368
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    .line 374
    :try_start_3
    invoke-virtual {v1, v2, v0, v9}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    :goto_0
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v11

    :goto_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method downloadSubscriptionPrivileged(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 12

    move-object v9, p0

    .line 473
    iget-object v10, v9, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v11, Lcom/android/internal/telephony/euicc/EuiccController$2;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p9

    move-object/from16 v5, p7

    move-wide v6, p2

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController$2;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;Ljava/lang/String;JI)V

    move-object v0, v10

    move v1, p1

    move/from16 v4, p6

    move-object/from16 v5, p8

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/EuiccConnector;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;)V

    return-void
.end method

.method downloadSubscriptionPrivilegedCheckMetadata(IJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 13

    move-object v10, p0

    .line 462
    iget-object v11, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v12, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;

    const/4 v9, 0x1

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p6

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController$DownloadSubscriptionGetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/app/PendingIntent;Z)V

    move v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v11, p1, v1, v2, v12}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "Requires DUMP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1076
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public eraseSubscriptions(ILandroid/app/PendingIntent;)V
    .locals 4

    .line 957
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 963
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$7;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$7;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->eraseSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 958
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to erase subscriptions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10

    .line 608
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 615
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v9, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;

    move-object v2, v9

    move-object v3, p0

    move-wide v4, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v8, p1, p2, v9}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDefaultDownloadableSubscriptionList(IZLcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 609
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get default list"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 12

    move-object v8, p0

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, v8, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object/from16 v6, p4

    invoke-virtual {v0, v1, v6}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 254
    :try_start_0
    iget-object v0, v8, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v11, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;

    move-object v1, v11

    move-object v2, p0

    move-wide v3, v9

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$GetMetadataCommandCallback;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual {v0, p1, p2, p3, v11}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get metadata"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEid(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanReadPhoneStatePrivileged()Z

    move-result v0

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez v0, :cond_1

    .line 176
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "Must have carrier privileges on active subscription to read EID for cardId="

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 183
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEidFromEuiccService(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;
    .locals 2

    .line 688
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 690
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetEuiccInfoFromEuiccService(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getOtaStatus(I)I
    .locals 2

    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccController;->blockingGetOtaStatusFromEuiccService(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must have WRITE_EMBEDDED_SUBSCRIPTIONS to get OTA status"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$refreshSubscriptionsAndSendResult$0$EuiccController(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 0

    .line 1038
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1036
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/-$$Lambda$EuiccController$aZ8yEHh32lS1TctCOFmVEa57ekc;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    .line 1037
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->requestEmbeddedSubscriptionInfoListRefresh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V
    .locals 4

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MASTER_CLEAR"

    const-string v2, "Must have MASTER_CLEAR to retain subscriptions for factory reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1001
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v3, Lcom/android/internal/telephony/euicc/EuiccController$8;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController$8;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->retainSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public sendOtaStatusChangedBroadcast()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.OTA_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startOtaUpdatingIfNecessary()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccController;->startOtaUpdatingIfNecessary(I)V

    return-void
.end method

.method public startOtaUpdatingIfNecessary(I)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v1, Lcom/android/internal/telephony/euicc/EuiccController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/EuiccController$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->startOtaIfNecessary(ILcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;)V

    return-void
.end method

.method public switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 764
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method switchToSubscription(IIZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 16

    move-object/from16 v10, p0

    move/from16 v0, p1

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v1

    .line 771
    iget-object v2, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    const/4 v13, 0x1

    if-eqz v1, :cond_0

    move v7, v13

    goto :goto_0

    :cond_0
    move/from16 v7, p3

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const-string v6, "EuiccController"

    const/4 v14, 0x0

    if-ne v5, v3, :cond_3

    if-nez v1, :cond_2

    .line 786
    :try_start_0
    invoke-direct {v10, v0, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageActiveSubscriptionOnTargetSim(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Not permitted to switch to empty subscription"

    .line 789
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {v10, v9, v4, v14}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :goto_1
    move v2, v13

    move-object v6, v14

    goto :goto_4

    .line 795
    :cond_3
    :try_start_1
    invoke-direct {v10, v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "Cannot switch to nonexistent sub: "

    .line 797
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {v10, v9, v4, v14}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    :goto_2
    move v2, v13

    goto :goto_3

    .line 804
    :cond_5
    :try_start_2
    iget-object v1, v10, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v3, v8}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "Not permitted to switch to sub: "

    .line 805
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v10, v9, v4, v14}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 835
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 810
    :cond_6
    :try_start_3
    invoke-direct {v10, v0, v8}, Lcom/android/internal/telephony/euicc/EuiccController;->canManageSubscriptionOnTargetSim(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 814
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_4
    if-nez v2, :cond_8

    .line 819
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.service.euicc.action.RESOLVE_NO_PRIVILEGES"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 825
    invoke-static {v11, v12, v5, v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v15

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p4

    move v5, v6

    move v6, v7

    move-object v7, v15

    move/from16 v8, p1

    .line 820
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;I)V

    .line 828
    invoke-virtual {v10, v9, v13, v14}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 835
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_8
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v11

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 832
    :try_start_4
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 835
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method switchToSubscriptionPrivileged(IJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 11

    move-object v8, p0

    .line 854
    iget-object v9, v8, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    new-instance v10, Lcom/android/internal/telephony/euicc/EuiccController$5;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-wide v3, p2

    move v5, p4

    move v6, p1

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController$5;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Ljava/lang/String;JIILandroid/app/PendingIntent;)V

    move v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v9, p1, v1, v2, v10}, Lcom/android/internal/telephony/euicc/EuiccConnector;->switchToSubscription(ILjava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;)V

    return-void
.end method

.method switchToSubscriptionPrivileged(IJIZLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 10

    move-object v9, p0

    move v4, p4

    .line 843
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 847
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IJILjava/lang/String;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7

    .line 899
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->callerCanWriteEmbeddedSubscriptions()Z

    move-result v0

    .line 900
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 902
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 904
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->getSubscriptionForSubscriptionId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "EuiccController"

    if-nez v3, :cond_0

    :try_start_1
    const-string p1, "Cannot update nickname to nonexistent sub: "

    .line 906
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p0, p5, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 914
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 915
    invoke-virtual {v0, v3, p4}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p1, "No permissions: "

    .line 916
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {p0, p5, v5, v4}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 951
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 921
    :cond_1
    :try_start_3
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController;->mConnector:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 922
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccController$6;

    invoke-direct {v0, p0, p5}, Lcom/android/internal/telephony/euicc/EuiccController$6;-><init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/app/PendingIntent;)V

    .line 921
    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 951
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
