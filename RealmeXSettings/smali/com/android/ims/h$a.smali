.class public abstract Lcom/android/ims/h$a;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/Object;

.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final e:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/h$a;->e:Landroid/os/RemoteCallbackList;

    .line 89
    iput-object p1, p0, Lcom/android/ims/h$a;->a:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    :cond_0
    new-instance p1, Lcom/android/ims/h$a$1;

    invoke-direct {p1, p0}, Lcom/android/ims/h$a$1;-><init>(Lcom/android/ims/h$a;)V

    iput-object p1, p0, Lcom/android/ims/h$a;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private b()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 240
    :goto_0
    iget-object v3, p0, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_0
    new-instance v2, Lcom/android/ims/-$$Lambda$JKCTvVCB_1XFiWlfEDitaiNcs5Q;

    invoke-direct {v2, p0}, Lcom/android/ims/-$$Lambda$JKCTvVCB_1XFiWlfEDitaiNcs5Q;-><init>(Lcom/android/ims/h$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 244
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$a;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/ims/h$a;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v2

    .line 274
    invoke-virtual {p0, v2}, Lcom/android/ims/h$a;->d(Landroid/os/IInterface;)V

    .line 275
    iget-object v3, p0, Lcom/android/ims/h$a;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/h$a;->b()V

    const-string v1, "CallbackAdapterManager"

    const-string v2, "Closing connection and clearing callbacks"

    .line 278
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(I)V
    .locals 3

    .line 213
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 224
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 225
    invoke-virtual {p0, v1}, Lcom/android/ims/h$a;->b(Landroid/os/IInterface;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/android/ims/h$a;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 1257
    iget-object p1, p0, Lcom/android/ims/h$a;->a:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_3

    .line 1259
    iget-object v1, p0, Lcom/android/ims/h$a;->d:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_1

    :cond_3
    const-string p1, "CallbackAdapterManager"

    const-string/jumbo v1, "unregisterForSubscriptionsChanged: could not find SubscriptionManager."

    .line 1261
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/ims/h$a;->c(Landroid/os/IInterface;)V

    const-string v1, "CallbackAdapterManager"

    const-string v2, "Local callback added: "

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/ims/h$a;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Local callback removed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackAdapterManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/ims/h$a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$a;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/ims/h$a;->d(Landroid/os/IInterface;)V

    .line 162
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

.method public abstract c(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract d(Landroid/os/IInterface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
