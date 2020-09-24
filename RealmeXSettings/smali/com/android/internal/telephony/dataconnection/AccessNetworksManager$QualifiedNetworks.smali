.class public Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;
.super Ljava/lang/Object;
.source "AccessNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QualifiedNetworks"
.end annotation


# instance fields
.field public final apnType:I

.field public final qualifiedNetworks:[I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 117
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    return-void
.end method

.method static synthetic lambda$toString$0(I)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-static {p0}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 124
    invoke-static {v4}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[QualifiedNetworks: apnType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->apnType:I

    .line 127
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworks;->qualifiedNetworks:[I

    .line 129
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworks$RFnLI6POkxFwKMiSsed1qg8X7t0;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworks$RFnLI6POkxFwKMiSsed1qg8X7t0;

    .line 130
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    .line 131
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
