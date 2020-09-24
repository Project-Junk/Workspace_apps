.class public Lcom/android/internal/telephony/dataconnection/DcRequest;
.super Ljava/lang/Object;
.source "DcRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/dataconnection/DcRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DcRequest"

.field private static final sApnPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apnType:I

.field public final networkRequest:Landroid/net/NetworkRequest;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->initApnPriorities(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 35
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    .line 36
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRequest;->priorityForApnType(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    return-void
.end method

.method private initApnPriorities(Landroid/content/Context;)V
    .locals 6

    .line 62
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1070071

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 66
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 67
    new-instance v4, Landroid/net/NetworkConfig;

    invoke-direct {v4, v3}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 68
    iget v3, v4, Landroid/net/NetworkConfig;->type:I

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeFromNetworkType(I)I

    move-result v3

    .line 69
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v4, Landroid/net/NetworkConfig;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private priorityForApnType(I)I
    .locals 1

    .line 76
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I
    .locals 1

    .line 55
    iget p1, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRequest;->compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
