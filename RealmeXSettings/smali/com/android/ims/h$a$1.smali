.class final Lcom/android/ims/h$a$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/h$a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/ims/h$a;


# direct methods
.method constructor <init>(Lcom/android/ims/h$a;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    .line 1076
    iget-object v0, v0, Lcom/android/ims/h$a;->a:Landroid/content/Context;

    .line 98
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    const-string v0, "CallbackAdapterManager"

    const-string v1, "onSubscriptionsChanged: could not find SubscriptionManager."

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 108
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/ims/-$$Lambda$szO0o3matefQqo-6NB-dzsr9eCw;->INSTANCE:Lcom/android/ims/-$$Lambda$szO0o3matefQqo-6NB-dzsr9eCw;

    .line 109
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 110
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 111
    iget-object v2, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    .line 2076
    iget-object v2, v2, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    .line 111
    monitor-enter v2

    .line 112
    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    .line 3076
    iget-object v4, v4, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 113
    :goto_0
    iget-object v4, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    .line 4076
    iget-object v4, v4, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    .line 113
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    .line 5076
    iget-object v4, v4, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    .line 115
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 121
    iget-object v3, p0, Lcom/android/ims/h$a$1;->a:Lcom/android/ims/h$a;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6076
    invoke-virtual {v3, v1}, Lcom/android/ims/h$a;->a(I)V

    goto :goto_1

    .line 123
    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
