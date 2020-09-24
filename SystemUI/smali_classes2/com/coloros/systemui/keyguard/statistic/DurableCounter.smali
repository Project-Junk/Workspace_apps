.class public Lcom/coloros/systemui/keyguard/statistic/DurableCounter;
.super Ljava/lang/Object;
.source "DurableCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DurableCounter"


# instance fields
.field private mEditor:Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;

.field private mRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    .line 32
    new-instance v0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;

    invoke-direct {v0, p1, p2}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mEditor:Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;

    .line 33
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mEditor:Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;->fill(Ljava/util/HashMap;)V

    return-void
.end method

.method private clearLocked()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mEditor:Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;->clear()V

    return-void
.end method

.method private countLocked(Ljava/lang/String;I)V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    int-to-long v1, v0

    const-wide/32 v3, 0x7fffffff

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    const-string p2, "DurableCounter"

    const-string v0, "countLocked, the value is out of range of Integer!"

    .line 55
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    const p2, 0x7fffffff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private getRecordsListLocked()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 100
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private saveLocked()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mEditor:Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter$Editor;->commit(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->clearLocked()V

    .line 82
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public count(Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    .line 38
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->countLocked(Ljava/lang/String;I)V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public count(Ljava/lang/String;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->countLocked(Ljava/lang/String;I)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRecordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->getRecordsListLocked()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public save()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->mRecords:Ljava/util/HashMap;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/statistic/DurableCounter;->saveLocked()V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
