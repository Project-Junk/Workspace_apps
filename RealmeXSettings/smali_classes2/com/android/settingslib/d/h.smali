.class public final Lcom/android/settingslib/d/h;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/g;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/android/settingslib/d/k;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private final d:Lcom/android/settingslib/d/q;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/q;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/android/settingslib/d/h;->c:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settingslib/d/h;->d:Lcom/android/settingslib/d/q;

    .line 49
    new-instance p1, Lcom/android/settingslib/d/k;

    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/android/settingslib/d/k;-><init>(Lcom/android/settingslib/d/q;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settingslib/d/h;->b:Lcom/android/settingslib/d/k;

    return-void
.end method

.method private static synthetic c(Lcom/android/settingslib/d/g;)Z
    .locals 1

    .line 25496
    iget-object p0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$fk8VWJZctcH0KimNnmBCoFLjR5w(Lcom/android/settingslib/d/g;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/d/h;->c(Lcom/android/settingslib/d/g;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;
    .locals 3

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 1396
    iget-object v2, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 80
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 81
    monitor-exit p0

    return-object v1

    .line 2187
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz v1, :cond_0

    .line 2396
    iget-object v2, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 85
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 86
    monitor-exit p0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    .line 90
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/android/settingslib/d/g;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 8187
    :try_start_0
    iget-object p1, p1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8904
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/g;->d(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 126
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/d/g;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    .line 220
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/g;

    .line 16187
    iget-object v1, v0, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    const/16 v2, 0xc

    if-eqz v1, :cond_0

    .line 16496
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 17191
    iput-object v1, v0, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    .line 17496
    :cond_0
    iget-object v1, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/g;->c(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    const/4 v1, -0x1

    .line 233
    iput v1, v0, Lcom/android/settingslib/d/g;->h:I

    .line 234
    iput v1, v0, Lcom/android/settingslib/d/g;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 237
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/android/settingslib/d/g;I)V
    .locals 7

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 242
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v3, :cond_5

    const/4 v5, 0x2

    if-eq p2, v5, :cond_3

    const/16 v5, 0x15

    if-eq p2, v5, :cond_1

    const-string v3, "CachedBluetoothDevice"

    .line 17521
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActiveDeviceChanged: unknown profile "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isActive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17517
    :cond_1
    iget-boolean v5, v1, Lcom/android/settingslib/d/g;->m:Z

    if-eq v5, v2, :cond_2

    move v4, v3

    .line 17518
    :cond_2
    iput-boolean v2, v1, Lcom/android/settingslib/d/g;->m:Z

    goto :goto_1

    .line 17509
    :cond_3
    iget-boolean v5, v1, Lcom/android/settingslib/d/g;->k:Z

    if-eq v5, v2, :cond_4

    move v4, v3

    .line 17510
    :cond_4
    iput-boolean v2, v1, Lcom/android/settingslib/d/g;->k:Z

    goto :goto_1

    .line 17513
    :cond_5
    iget-boolean v5, v1, Lcom/android/settingslib/d/g;->l:Z

    if-eq v5, v2, :cond_6

    move v4, v3

    .line 17514
    :cond_6
    iput-boolean v2, v1, Lcom/android/settingslib/d/g;->l:Z

    :goto_1
    if-eqz v4, :cond_0

    .line 17526
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 203
    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/g;

    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/g;->c(Z)V

    .line 15187
    iget-object v0, v0, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/g;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 214
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;
    .locals 8

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/d/h;->d:Lcom/android/settingslib/d/q;

    .line 3162
    iget-object v0, v0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 101
    new-instance v1, Lcom/android/settingslib/d/g;

    iget-object v2, p0, Lcom/android/settingslib/d/h;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/android/settingslib/d/g;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/s;Landroid/bluetooth/BluetoothDevice;)V

    .line 103
    iget-object p1, p0, Lcom/android/settingslib/d/h;->b:Lcom/android/settingslib/d/k;

    .line 4396
    iget-object v0, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 4045
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/k;->a(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    .line 4046
    invoke-static {v2, v3}, Lcom/android/settingslib/d/k;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4048
    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/d/g;->a(J)V

    .line 104
    :cond_0
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/d/h;->b:Lcom/android/settingslib/d/k;

    .line 5230
    iget-wide v2, v1, Lcom/android/settingslib/d/g;->c:J

    .line 5063
    invoke-static {v2, v3}, Lcom/android/settingslib/d/k;->a(J)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 6081
    iget-object v0, p1, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_2

    .line 6082
    iget-object v5, p1, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/d/g;

    .line 6230
    iget-wide v6, v5, Lcom/android/settingslib/d/g;->c:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 7191
    iput-object v1, v5, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/d/h;->d:Lcom/android/settingslib/d/q;

    .line 8158
    iget-object p1, p1, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 107
    invoke-virtual {p1, v1}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/g;)V

    .line 109
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 7

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->b:Lcom/android/settingslib/d/k;

    .line 11092
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11093
    iget-object v2, v0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/d/g;

    .line 11230
    iget-wide v4, v3, Lcom/android/settingslib/d/g;->c:J

    .line 11095
    invoke-static {v4, v5}, Lcom/android/settingslib/d/k;->a(J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11396
    iget-object v4, v3, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 11096
    invoke-virtual {v0, v4}, Lcom/android/settingslib/d/k;->a(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    .line 11098
    invoke-static {v4, v5}, Lcom/android/settingslib/d/k;->a(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11099
    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/d/g;->a(J)V

    .line 11100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11104
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 11105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/d/k;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 155
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/android/settingslib/d/g;)V
    .locals 3

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->b:Lcom/android/settingslib/d/k;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/d/k;->a(Lcom/android/settingslib/d/g;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 23187
    iget-object v1, p1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->d()V

    .line 23191
    iput-object v2, p1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 262
    :try_start_1
    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->d()V

    .line 24191
    iput-object v2, v0, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/android/settingslib/d/g;I)Z
    .locals 4

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->b:Lcom/android/settingslib/d/k;

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 18230
    :cond_0
    iget-wide v2, p1, Lcom/android/settingslib/d/g;->c:J

    .line 18160
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/d/k;->b(J)V

    .line 18161
    invoke-virtual {v0, p1}, Lcom/android/settingslib/d/k;->a(Lcom/android/settingslib/d/g;)Lcom/android/settingslib/d/g;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18163
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->i()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 18485
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18167
    monitor-exit p0

    return v1

    .line 18171
    :cond_1
    :try_start_1
    iget-object p2, v0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 19158
    iget-object p2, p2, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 18171
    invoke-virtual {p2, p1}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/g;)V

    .line 18172
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->q()V

    .line 19485
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->m()V

    .line 18176
    iget-object p2, v0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 20158
    iget-object p2, p2, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 18176
    invoke-virtual {p2, p1}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18177
    monitor-exit p0

    return v1

    .line 18182
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/android/settingslib/d/k;->a(Lcom/android/settingslib/d/g;)Lcom/android/settingslib/d/g;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 20485
    invoke-virtual {p2}, Lcom/android/settingslib/d/g;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18187
    monitor-exit p0

    return v1

    .line 21187
    :cond_3
    :try_start_3
    iget-object p2, p1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz p2, :cond_4

    .line 18190
    invoke-virtual {p2}, Lcom/android/settingslib/d/g;->i()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18193
    iget-object p2, v0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 22158
    iget-object p2, p2, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 18193
    invoke-virtual {p2, p1}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/g;)V

    .line 18194
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->q()V

    .line 22485
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->m()V

    .line 18198
    iget-object p2, v0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 23158
    iget-object p2, p2, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 18198
    invoke-virtual {p2, p1}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18199
    monitor-exit p0

    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 249
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 4

    monitor-enter p0

    .line 12184
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 12185
    iget-object v1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 13187
    iget-object v2, v1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz v2, :cond_0

    .line 13396
    iget-object v2, v2, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 12188
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 14191
    iput-object v2, v1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    sget-object v1, Lcom/android/settingslib/d/-$$Lambda$h$fk8VWJZctcH0KimNnmBCoFLjR5w;->INSTANCE:Lcom/android/settingslib/d/-$$Lambda$h$fk8VWJZctcH0KimNnmBCoFLjR5w;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 9396
    iget-object v2, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 137
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10187
    iget-object v1, v1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz v1, :cond_0

    .line 10396
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 140
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 141
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 145
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/d/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 24534
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
