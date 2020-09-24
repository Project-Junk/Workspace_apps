.class public final Lcom/android/internal/telephony/NetworkScanRequestTracker;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;,
        Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
    }
.end annotation


# static fields
.field private static final CMD_INTERRUPT_NETWORK_SCAN:I = 0x6

.field private static final CMD_START_NETWORK_SCAN:I = 0x1

.field private static final CMD_STOP_NETWORK_SCAN:I = 0x4

.field private static final EVENT_INTERRUPT_NETWORK_SCAN_DONE:I = 0x7

.field private static final EVENT_RECEIVE_NETWORK_SCAN_RESULT:I = 0x3

.field private static final EVENT_START_NETWORK_SCAN_DONE:I = 0x2

.field private static final EVENT_STOP_NETWORK_SCAN_DONE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ScanRequestTracker"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$1;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/NetworkScanRequestTracker;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->interruptNetworkScan(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->isValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/NetworkScanRequestTracker;Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->notifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/NetworkScanRequestTracker;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/os/AsyncResult;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->logEmptyResultOrException(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private static doesCellInfoCorrespondToKnownMccMnc(Landroid/telephony/CellInfo;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getAllowedMccMncsForLocationRestrictedScan(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$Fos0ZZUk8Hzue77I2Hb2JUtpOqg;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$Fos0ZZUk8Hzue77I2Hb2JUtpOqg;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private interruptNetworkScan(I)V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private isValidScan(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .locals 8

    .line 116
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    return v1

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSpecifiers()[Landroid/telephony/RadioAccessSpecifier;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_5

    aget-object v6, v0, v4

    .line 123
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v7

    if-eq v7, v5, :cond_2

    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    .line 124
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    return v1

    .line 127
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    array-length v5, v5

    if-le v5, v2, :cond_3

    return v1

    .line 130
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v5

    if-eqz v5, :cond_4

    .line 131
    invoke-virtual {v6}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_b

    .line 137
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    const/16 v2, 0x12c

    if-le v0, v2, :cond_6

    goto/16 :goto_1

    .line 142
    :cond_6
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_b

    .line 143
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v0

    const/16 v2, 0xe10

    if-le v0, v2, :cond_7

    goto :goto_1

    .line 147
    :cond_7
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    if-lez v0, :cond_b

    .line 149
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_8

    goto :goto_1

    .line 154
    :cond_8
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getSearchPeriodicity()I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v2

    if-gt v0, v2, :cond_b

    .line 155
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getIncrementalResultsPeriodicity()I

    move-result v0

    .line 156
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/NetworkScanRequest;->getMaxSearchTime()I

    move-result v2

    if-le v0, v2, :cond_9

    goto :goto_1

    .line 160
    :cond_9
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 161
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$900(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/NetworkScanRequest;->getPlmns()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_a

    return v1

    :cond_a
    return v5

    :cond_b
    :goto_1
    return v1
.end method

.method static synthetic lambda$getAllowedMccMncsForLocationRestrictedScan$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 181
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$getAllowedMccMncsForLocationRestrictedScan$1(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAllowedMccMncsForLocationRestrictedScan$2(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;

    .line 181
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;

    .line 182
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 183
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$notifyMessenger$3(Ljava/util/List;Landroid/telephony/CellInfo;)Z
    .locals 0

    .line 201
    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->doesCellInfoCorrespondToKnownMccMnc(Landroid/telephony/CellInfo;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private logEmptyResultOrException(Landroid/os/AsyncResult;)V
    .locals 3

    .line 108
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string v1, "ScanRequestTracker"

    if-nez v0, :cond_0

    const-string p1, "NetworkScanResult: Empty result"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NetworkScanResult: Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;",
            "II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1000(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/os/Messenger;

    move-result-object v0

    .line 190
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 191
    iput p2, v1, Landroid/os/Message;->what:I

    .line 192
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 193
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result p3

    iput p3, v1, Landroid/os/Message;->arg2:I

    if-eqz p4, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 198
    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->getAllowedMccMncsForLocationRestrictedScan(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 200
    invoke-interface {p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object p3, Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$t4beO2UM1qrza874PCAhdizxWf8;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$t4beO2UM1qrza874PCAhdizxWf8;-><init>(Ljava/util/List;)V

    .line 201
    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 202
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Ljava/util/List;

    .line 205
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/telephony/CellInfo;

    invoke-interface {p4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/CellInfo;

    .line 206
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "scanResult"

    .line 207
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 208
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 210
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception in notifyMessenger: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScanRequestTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/internal/telephony/Phone;Ljava/lang/String;)I
    .locals 10

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mNextNetworkScanRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 592
    new-instance v9, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;-><init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;ILcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 596
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v0
.end method

.method public final stopNetworkScan(I)V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    monitor-enter v0

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 609
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 611
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    .line 612
    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1100(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 613
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mScheduler:Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;->access$2200(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestScheduler;)Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->access$1800(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 619
    monitor-exit v0

    return-void

    .line 617
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scan with id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 619
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
