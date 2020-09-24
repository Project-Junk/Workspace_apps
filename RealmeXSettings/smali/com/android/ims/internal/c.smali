.class public final Lcom/android/ims/internal/c;
.super Ljava/lang/Object;
.source "VideoPauseTracker.java"


# instance fields
.field public a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/ims/internal/c;->d(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/ims/internal/-$$Lambda$c$GDWeH7jSULq_pKCtnlySuzn4mVI;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/-$$Lambda$c$GDWeH7jSULq_pKCtnlySuzn4mVI;-><init>(Lcom/android/ims/internal/c;)V

    .line 190
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, ", "

    .line 191
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static d(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "DATA_ENABLED"

    return-object p0

    :cond_1
    const-string p0, "INCALL"

    return-object p0
.end method

.method public static synthetic lambda$GDWeH7jSULq_pKCtnlySuzn4mVI(Lcom/android/ims/internal/c;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/c;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/internal/c;->a()Z

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string v1, "shouldPauseVideoFor: source=%s, pendingRequests=%s - should pause"

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lcom/android/ims/internal/c;->d(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/ims/internal/c;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 82
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    monitor-exit v0

    return v3

    :cond_0
    const-string v1, "shouldPauseVideoFor: source=%s, pendingRequests=%s - already paused"

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Lcom/android/ims/internal/c;->d(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/ims/internal/c;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 87
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    monitor-exit v0

    return v4

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(I)Z
    .locals 6

    .line 108
    iget-object v0, p0, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/internal/c;->a()Z

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    invoke-direct {p0}, Lcom/android/ims/internal/c;->a()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const-string v1, "shouldResumeVideoFor: source=%s, pendingRequests=%s - should resume"

    .line 114
    new-array v2, v3, [Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lcom/android/ims/internal/c;->d(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/ims/internal/c;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 114
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    monitor-exit v0

    return v5

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v1, "shouldResumeVideoFor: source=%s, pendingRequests=%s - stay paused"

    .line 119
    new-array v2, v3, [Ljava/lang/Object;

    .line 120
    invoke-static {p1}, Lcom/android/ims/internal/c;->d(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/ims/internal/c;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 119
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    monitor-exit v0

    return v4

    :cond_1
    const-string v1, "shouldResumeVideoFor: source=%s, pendingRequests=%s - not paused"

    .line 124
    new-array v2, v3, [Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/android/ims/internal/c;->d(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/ims/internal/c;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 124
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(I)Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/ims/internal/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/c;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
