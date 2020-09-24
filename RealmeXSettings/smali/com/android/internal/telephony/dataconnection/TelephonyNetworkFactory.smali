.class public Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
    }
.end annotation


# static fields
.field private static final ACTION_NO_OP:I = 0x0

.field private static final ACTION_RELEASE:I = 0x2

.field private static final ACTION_REQUEST:I = 0x1

.field protected static final DBG:Z = true

.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x1

.field private static final EVENT_DATA_HANDOVER_COMPLETED:I = 0x6

.field private static final EVENT_DATA_HANDOVER_NEEDED:I = 0x5

.field private static final EVENT_NETWORK_RELEASE:I = 0x4

.field private static final EVENT_NETWORK_REQUEST:I = 0x3

.field private static final EVENT_SUBSCRIPTION_CHANGED:I = 0x2

.field private static final PRIMARY_SLOT:I = 0x0

.field private static final REQUEST_LOG_SIZE:I = 0x28

.field private static final SECONDARY_SLOT:I = 0x1

.field private static final TELEPHONY_NETWORK_SCORE:I = 0x32


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private final mInternalHandler:Landroid/os/Handler;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/NetworkRequest;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mSubscriptionId:I

.field private final mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

.field private final mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 5

    .line 92
    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TelephonyNetworkFactory["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {p0, p2, v0, v1, v4}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 65
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    .line 94
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getTransportManager()Lcom/android/internal/telephony/dataconnection/TransportManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    .line 96
    new-instance p3, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;

    invoke-direct {p3, p0, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;-><init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 100
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    const/16 p2, 0x32

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setScoreFilter(I)V

    .line 103
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3, v4}, Lcom/android/internal/telephony/PhoneSwitcher;->registerForActivePhoneSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->registerForHandoverNeededEvent(Landroid/os/Handler;I)V

    const/4 p1, -0x1

    .line 112
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    .line 113
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p4, v4}, Lcom/android/internal/telephony/SubscriptionMonitor;->registerForSubscriptionChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->register()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onActivePhoneSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onSubIdChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onNeedNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onReleaseNetworkFor(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onDataHandoverNeeded(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/net/NetworkRequest;ZI)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->onDataHandoverSetupCompleted(Landroid/net/NetworkRequest;ZI)V

    return-void
.end method

.method private static getAction(ZZ)I
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 1

    .line 193
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result p1

    return p1
.end method

.method private isNetworkCapabilityEims(Landroid/net/NetworkRequest;)Z
    .locals 1

    .line 281
    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    return p1
.end method

.method private isSimPresentInSecondarySlot()Z
    .locals 2

    .line 286
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private makeNetworkFilter(I)Landroid/net/NetworkCapabilities;
    .locals 2

    .line 126
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 128
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    .line 130
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x3

    .line 131
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    .line 132
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x5

    .line 133
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 v1, 0x7

    .line 134
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x8

    .line 135
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x9

    .line 136
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xa

    .line 137
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    .line 138
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    .line 139
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 140
    new-instance v1, Landroid/net/StringNetworkSpecifier;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method private makeNetworkFilter(Lcom/android/internal/telephony/SubscriptionController;I)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 121
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result p1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    return-object p1
.end method

.method private onActivePhoneSwitch()V
    .locals 8

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateAutoAttachOnCreation()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;

    .line 236
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 238
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 239
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    .line 238
    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/PhoneSwitcher;->shouldApplyNetworkRequest(Landroid/net/NetworkRequest;I)Z

    move-result v5

    .line 241
    invoke-static {v2, v5}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getAction(ZZ)I

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onActivePhoneSwitch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v2, v1, :cond_2

    const-string v7, "Requesting"

    goto :goto_2

    :cond_2
    const-string v7, "Releasing"

    .line 245
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " network request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 246
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v7, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v6

    if-ne v2, v1, :cond_3

    .line 250
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v2

    const/4 v7, 0x0

    .line 249
    invoke-direct {p0, v3, v1, v2, v7}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->requestNetworkInternal(Landroid/net/NetworkRequest;IILandroid/os/Message;)V

    goto :goto_3

    :cond_3
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    .line 252
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v2

    .line 253
    invoke-direct {p0, v3, v7, v2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->releaseNetworkInternal(Landroid/net/NetworkRequest;II)V

    .line 256
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    if-eqz v5, :cond_5

    move v4, v6

    .line 257
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 256
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-void
.end method

.method private onDataHandoverNeeded(II)V
    .locals 8

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataHandoverNeeded: apnType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->getCurrentTransport(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APN type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    .line 345
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v3, v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v1

    .line 347
    :goto_1
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v7

    if-ne v7, p1, :cond_1

    if-eqz v5, :cond_1

    if-eq v3, p2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "extra_network_request"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v3, 0x2

    .line 356
    invoke-direct {p0, v4, v3, p2, v2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->requestNetworkInternal(Landroid/net/NetworkRequest;IILandroid/os/Message;)V

    move v2, v6

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No handover request pending. Update the transport type to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for APN type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->setCurrentTransport(II)V

    :cond_4
    return-void
.end method

.method private onDataHandoverSetupCompleted(Landroid/net/NetworkRequest;ZI)V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataHandoverSetupCompleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", targetTransport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {p3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x2

    .line 386
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result p2

    const/4 v1, 0x3

    .line 387
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->releaseNetworkInternal(Landroid/net/NetworkRequest;II)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mTransportManager:Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/TransportManager;->setCurrentTransport(II)V

    return-void

    .line 394
    :cond_1
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->releaseNetworkInternal(Landroid/net/NetworkRequest;II)V

    return-void
.end method

.method private onNeedNetworkFor(Landroid/os/Message;)V
    .locals 3

    .line 290
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 292
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 291
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->shouldApplyNetworkRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 294
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNeedNetworkFor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " shouldApply "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    const/4 v2, 0x0

    .line 303
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->requestNetworkInternal(Landroid/net/NetworkRequest;IILandroid/os/Message;)V

    :cond_1
    return-void
.end method

.method private onReleaseNetworkFor(Landroid/os/Message;)V
    .locals 4

    .line 316
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReleaseNetworkFor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " applied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    .line 328
    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->releaseNetworkInternal(Landroid/net/NetworkRequest;II)V

    :cond_1
    return-void
.end method

.method private onSubIdChange()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 265
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 266
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    if-eq v1, v0, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSubIdChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 268
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    .line 269
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mSubscriptionId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->makeNetworkFilter(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    :cond_0
    return-void
.end method

.method private releaseNetworkInternal(Landroid/net/NetworkRequest;II)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->releaseNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)V

    :cond_0
    return-void
.end method

.method private requestNetworkInternal(Landroid/net/NetworkRequest;IILandroid/os/Message;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object p3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p3, p1, p2, p4, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/os/Message;Landroid/util/LocalLog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 403
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "Network Requests:"

    .line 404
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 406
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 408
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 410
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " applied on "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, " not applied"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 1

    .line 275
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 276
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 311
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
