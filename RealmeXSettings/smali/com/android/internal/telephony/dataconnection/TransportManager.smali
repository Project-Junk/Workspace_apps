.class public Lcom/android/internal/telephony/dataconnection/TransportManager;
.super Landroid/os/Handler;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;,
        Lcom/android/internal/telephony/dataconnection/TransportManager$IwlanOperationMode;
    }
.end annotation


# static fields
.field private static final ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_QUALIFIED_NETWORKS_CHANGED:I = 0x1

.field public static final IWLAN_OPERATION_MODE_AP_ASSISTED:Ljava/lang/String; = "AP-assisted"

.field public static final IWLAN_OPERATION_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final IWLAN_OPERATION_MODE_LEGACY:Ljava/lang/String; = "legacy"

.field public static final SYSTEM_PROPERTIES_IWLAN_OPERATION_MODE:Ljava/lang/String; = "ro.telephony.iwlan_operation_mode"

.field private static final TAG:Ljava/lang/String; = "TransportManager"


# instance fields
.field private mAccessNetworksManager:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

.field private final mAvailableTransports:[I

.field private final mCurrentAvailableNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mCurrentTransports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandoverNeededEventRegistrants:Landroid/os/RegistrantList;

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sput-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 186
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentAvailableNetworks:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentTransports:Ljava/util/Map;

    .line 188
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Landroid/os/RegistrantList;

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "operates in legacy mode."

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->log(Ljava/lang/String;)V

    .line 194
    new-array p1, v1, [I

    const/4 v0, 0x0

    aput v1, p1, v0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAvailableTransports:[I

    return-void

    :cond_0
    const-string v0, "operates in AP-assisted mode."

    .line 196
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->log(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-virtual {p1, p0, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V

    const/4 p1, 0x2

    .line 200
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAvailableTransports:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private static areNetworksValid(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;)Z
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    .line 244
    sget-object v4, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isHandoverNeeded(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;)Z
    .locals 3

    .line 220
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 221
    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentAvailableNetworks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 228
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    aget v0, v0, v2

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v2
.end method

.method static synthetic lambda$dump$0(I)Ljava/lang/String;
    .locals 0

    .line 375
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 390
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 394
    sget-object v0, Lcom/android/internal/telephony/dataconnection/TransportManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized updateAvailableNetworks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "updateAvailableNetworks: "

    .line 262
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->log(Ljava/lang/String;)V

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;

    .line 264
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->areNetworksValid(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isHandoverNeeded(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentAvailableNetworks:Ljava/util/Map;

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    aget v2, v3, v2

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 271
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handover needed for APN type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 274
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", target transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/TransportManager;->log(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Handover not needed for APN type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 283
    invoke-static {v3}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->log(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentAvailableNetworks:Ljava/util/Map;

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 286
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    aget v4, v4, v2

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 287
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    sget-object v1, Lcom/android/internal/telephony/dataconnection/TransportManager;->ACCESS_NETWORK_TRANSPORT_TYPE_MAP:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    aget v2, v3, v2

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 295
    :cond_2
    iget v0, v0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->setCurrentTransport(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 299
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 371
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "TransportManager:"

    .line 372
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mAvailableTransports=["

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAvailableTransports:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/-$$Lambda$TransportManager$Q8noshws1IklpLPH3S17G9mmuFA;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$TransportManager$Q8noshws1IklpLPH3S17G9mmuFA;

    .line 375
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 376
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentAvailableNetworks="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentAvailableNetworks:Ljava/util/Map;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentTransports="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentTransports:Ljava/util/Map;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "isInLegacy="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "IWLAN operation mode="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.telephony.iwlan_operation_mode"

    .line 381
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 380
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAccessNetworksManager:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    if-eqz p2, :cond_0

    .line 383
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 385
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public declared-synchronized getAvailableTransports()[I
    .locals 1

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mAvailableTransports:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentTransport(I)I
    .locals 3

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/TransportManager;->isInLegacyMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->loge(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 210
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;->updateAvailableNetworks(Ljava/util/List;)V

    return-void
.end method

.method public isInLegacyMode()Z
    .locals 2

    const-string v0, "ro.telephony.iwlan_operation_mode"

    .line 319
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "legacy"

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 322
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerForHandoverNeededEvent(Landroid/os/Handler;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCurrentTransport(II)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mCurrentTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterForHandoverNeededEvent(Landroid/os/Handler;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TransportManager;->mHandoverNeededEventRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
