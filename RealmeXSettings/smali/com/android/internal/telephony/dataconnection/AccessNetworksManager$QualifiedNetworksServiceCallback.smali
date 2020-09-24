.class final Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;
.super Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QualifiedNetworksServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-direct {p0}, Landroid/telephony/data/IQualifiedNetworksServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;-><init>(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)V

    return-void
.end method

.method static synthetic lambda$onQualifiedNetworkTypesChanged$0(I)Ljava/lang/String;
    .locals 0

    .line 175
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onQualifiedNetworkTypesChanged(I[I)V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onQualifiedNetworkTypesChanged. apnTypes = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], networks = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;

    .line 175
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$700(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$800()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    and-int v5, p1, v4

    if-ne v5, v4, :cond_1

    .line 182
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$900(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$900(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-static {v5, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Available networks for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not changed."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-static {v5, v4}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$700(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$900(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    new-instance v5, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;

    invoke-direct {v5, v4, p2}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;-><init>(I[I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 198
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->this$0:Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->access$1000(Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;)Landroid/os/RegistrantList;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
