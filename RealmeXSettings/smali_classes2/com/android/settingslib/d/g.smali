.class public final Lcom/android/settingslib/d/g;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/d/g;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field public b:Landroid/bluetooth/BluetoothDevice;

.field c:J

.field d:S

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/r;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/r;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field public h:I

.field public i:I

.field public j:J

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field public o:Lcom/android/settingslib/d/g;

.field private final p:Landroid/content/Context;

.field private final q:Landroid/bluetooth/BluetoothAdapter;

.field private final r:Lcom/android/settingslib/d/s;

.field private s:Z

.field private final t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/d/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/s;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/g;->f:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->k:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->l:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->m:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->n:Z

    .line 103
    iput-object p1, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/d/g;->q:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    iput-object p2, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 106
    iput-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 1387
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->k()Z

    .line 1388
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->u()V

    .line 1815
    iget-object p2, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    const-string p3, "bluetooth_phonebook_permission"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1817
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 1821
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result p3

    if-nez p3, :cond_1

    .line 1822
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 1823
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v2, :cond_0

    .line 1825
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    .line 1827
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 1831
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1832
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1833
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1839
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    const-string p3, "bluetooth_message_permission"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1841
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1845
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result p3

    if-nez p3, :cond_4

    .line 1846
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 1847
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    if-ne p3, v2, :cond_3

    .line 1849
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_1

    :cond_3
    if-ne p3, v1, :cond_4

    .line 1851
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3, v1}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 1855
    :cond_4
    :goto_1
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1856
    iget-object p3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1857
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1392
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->m()V

    const-wide/16 p2, 0x0

    .line 108
    iput-wide p2, p0, Lcom/android/settingslib/d/g;->c:J

    const/4 p2, -0x1

    .line 109
    iput p2, p0, Lcom/android/settingslib/d/g;->h:I

    .line 110
    iput p2, p0, Lcom/android/settingslib/d/g;->i:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oppo.hw.manufacturer.qualcomm"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/d/g;->n:Z

    return-void
.end method

.method private static a(II)Z
    .locals 0

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(Lcom/android/settingslib/d/r;)Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address:"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, " Profile:"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/android/settingslib/d/r;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 381
    invoke-interface {p1, v0}, Lcom/android/settingslib/d/r;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcom/android/settingslib/d/r;)Z
    .locals 1

    .line 584
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/g;->d(Lcom/android/settingslib/d/r;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private r()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private s()V
    .locals 5

    .line 284
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/r;

    .line 290
    invoke-interface {v2}, Lcom/android/settingslib/d/r;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/r;)V

    goto :goto_0

    .line 295
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private t()Z
    .locals 2

    .line 2496
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->c()Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private u()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 8409
    iget-object v0, v0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    if-eqz v0, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/d/a;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->k:Z

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 8421
    iget-object v0, v0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    if-eqz v0, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/d/j;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->l:Z

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 8449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v0, :cond_2

    .line 643
    invoke-virtual {v0}, Lcom/android/settingslib/d/l;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/d/g;->m:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settingslib/d/g;)I
    .locals 5

    .line 788
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->i()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->i()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    .line 8496
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9496
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    .line 797
    :cond_3
    iget-boolean v0, p1, Lcom/android/settingslib/d/g;->g:Z

    iget-boolean v1, p0, Lcom/android/settingslib/d/g;->g:Z

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    .line 801
    :cond_4
    iget-short v0, p1, Lcom/android/settingslib/d/g;->d:S

    iget-short v1, p0, Lcom/android/settingslib/d/g;->d:S

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 805
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/r;

    .line 199
    invoke-virtual {p0, v2}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;)V

    goto :goto_0

    .line 201
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 2437
    iget-object v0, v0, Lcom/android/settingslib/d/s;->g:Lcom/android/settingslib/d/y;

    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0, v0}, Lcom/android/settingslib/d/g;->e(Lcom/android/settingslib/d/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/y;->b(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 201
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(J)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHiSyncId: mDevice "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput-wide p1, p0, Lcom/android/settingslib/d/g;->c:J

    return-void
.end method

.method public final a(Lcom/android/settingslib/d/g$a;)V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 748
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/settingslib/d/r;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/d/r;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command sent successfully:DISCONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/d/g;->c(Lcom/android/settingslib/d/r;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CachedBluetoothDevice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method final a(Lcom/android/settingslib/d/r;I)V
    .locals 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProfileStateChanged: profile "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newProfileState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CachedBluetoothDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/d/g;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-string p1, "CachedBluetoothDevice"

    const-string p2, " BT Turninig Off...Profile conn state change ignored..."

    .line 157
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 164
    :try_start_0
    instance-of p2, p1, Lcom/android/settingslib/d/u;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 165
    iget-object p2, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v1}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 167
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 168
    iget-object p2, p0, Lcom/android/settingslib/d/g;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object p2, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    instance-of p2, p1, Lcom/android/settingslib/d/w;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/android/settingslib/d/w;

    iget-object p2, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 171
    invoke-virtual {p1, p2}, Lcom/android/settingslib/d/w;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 173
    iput-boolean v1, p0, Lcom/android/settingslib/d/g;->s:Z

    goto :goto_0

    .line 176
    :cond_2
    instance-of v1, p1, Lcom/android/settingslib/d/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 178
    iget-object p2, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v2}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 179
    :cond_3
    iget-boolean v1, p0, Lcom/android/settingslib/d/g;->s:Z

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/android/settingslib/d/w;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/d/w;

    iget-object v3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 180
    invoke-virtual {v1, v3}, Lcom/android/settingslib/d/w;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    const-string p2, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    .line 182
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p2, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object p2, p0, Lcom/android/settingslib/d/g;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iput-boolean v2, p0, Lcom/android/settingslib/d/g;->s:Z

    goto :goto_0

    .line 186
    :cond_4
    instance-of p1, p1, Lcom/android/settingslib/d/j;

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    const/4 p1, -0x1

    .line 188
    iput p1, p0, Lcom/android/settingslib/d/g;->h:I

    .line 189
    iput p1, p0, Lcom/android/settingslib/d/g;->i:I

    .line 191
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->u()V

    return-void

    :catchall_0
    move-exception p1

    .line 191
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/d/g;->j:J

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settingslib/d/g;->b(Z)V

    return-void
.end method

.method public final a(I)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 552
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getActiveDevice: unknown profile "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CachedBluetoothDevice"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 550
    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/d/g;->m:Z

    return p1

    .line 546
    :cond_1
    iget-boolean p1, p0, Lcom/android/settingslib/d/g;->k:Z

    return p1

    .line 548
    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/d/g;->l:Z

    return p1
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/settingslib/d/g;->a(Z)V

    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g$a;)V
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    monitor-enter v0

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 754
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/android/settingslib/d/r;)V
    .locals 3

    monitor-enter p0

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->t()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 312
    monitor-exit p0

    return-void

    .line 314
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CachedBluetoothDevice"

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Command sent successfully:CONNECT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/settingslib/d/g;->c(Lcom/android/settingslib/d/r;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to connect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b(Z)V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "CachedBluetoothDevice"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No profiles. Maybe we will connect later for device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 266
    iget-object v2, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/d/r;

    if-eqz p1, :cond_2

    .line 267
    invoke-interface {v3}, Lcom/android/settingslib/d/r;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 268
    :cond_2
    invoke-interface {v3}, Lcom/android/settingslib/d/r;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v4}, Lcom/android/settingslib/d/r;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 271
    invoke-virtual {p0, v3}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/r;)V

    goto :goto_0

    :cond_3
    const-string p1, "CachedBluetoothDevice"

    const-string v2, "Preferred profiles = "

    .line 275
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_4

    .line 278
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->s()V

    .line 280
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Z)V
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/android/settingslib/d/g;->g:Z

    if-eq v0, p1, :cond_0

    .line 490
    iput-boolean p1, p0, Lcom/android/settingslib/d/g;->g:Z

    .line 491
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->m()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/settingslib/d/g;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settingslib/d/g;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/android/settingslib/d/g;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/g;)I

    move-result p1

    return p1
.end method

.method public final d(Z)Ljava/lang/String;
    .locals 13

    .line 922
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 9725
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 923
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/d/r;

    .line 924
    invoke-direct {p0, v8}, Lcom/android/settingslib/d/g;->d(Lcom/android/settingslib/d/r;)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v8, 0x3

    if-eq v10, v3, :cond_2

    if-eq v10, v9, :cond_1

    if-eq v10, v8, :cond_2

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    .line 929
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    if-eqz v10, :cond_6

    if-eq v10, v3, :cond_5

    if-eq v10, v9, :cond_4

    if-eq v10, v8, :cond_3

    goto :goto_1

    .line 10045
    :cond_3
    sget v2, Lcom/android/settingslib/e$h;->bluetooth_disconnecting:I

    goto :goto_1

    .line 10039
    :cond_4
    sget v2, Lcom/android/settingslib/e$h;->bluetooth_connected:I

    goto :goto_1

    .line 10041
    :cond_5
    sget v2, Lcom/android/settingslib/e$h;->bluetooth_connecting:I

    goto :goto_1

    .line 10043
    :cond_6
    sget v2, Lcom/android/settingslib/e$h;->bluetooth_disconnected:I

    .line 929
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 937
    :cond_7
    invoke-interface {v8}, Lcom/android/settingslib/d/r;->a()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 938
    instance-of v9, v8, Lcom/android/settingslib/d/a;

    if-nez v9, :cond_b

    instance-of v9, v8, Lcom/android/settingslib/d/b;

    if-eqz v9, :cond_8

    goto :goto_3

    .line 941
    :cond_8
    instance-of v9, v8, Lcom/android/settingslib/d/j;

    if-nez v9, :cond_a

    instance-of v9, v8, Lcom/android/settingslib/d/m;

    if-eqz v9, :cond_9

    goto :goto_2

    .line 944
    :cond_9
    instance-of v8, v8, Lcom/android/settingslib/d/l;

    if-eqz v8, :cond_0

    move v7, v2

    goto :goto_0

    :cond_a
    :goto_2
    move v6, v2

    goto :goto_0

    :cond_b
    :goto_3
    move v5, v2

    goto :goto_0

    .line 951
    :cond_c
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v8, -0x1

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/settingslib/d/g;->h:I

    if-eq v0, v8, :cond_e

    iget v10, p0, Lcom/android/settingslib/d/g;->i:I

    if-eq v10, v8, :cond_e

    if-ne v0, v3, :cond_d

    const-string v0, "Charging, "

    goto :goto_4

    :cond_d
    const-string v0, "Discharging, "

    :goto_4
    const-string v10, "TWSP: "

    .line 968
    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    iget v10, p0, Lcom/android/settingslib/d/g;->i:I

    .line 970
    invoke-static {v10}, Lcom/android/settingslib/l;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 969
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UI string"

    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "CachedBluetoothDevice"

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 10481
    :cond_e
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-eq v0, v8, :cond_f

    .line 978
    invoke-static {v0}, Lcom/android/settingslib/l;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_f
    move-object v0, v1

    .line 982
    :goto_5
    sget v10, Lcom/android/settingslib/e$h;->bluetooth_pairing:I

    const/16 v11, 0xb

    if-eqz v4, :cond_18

    .line 986
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v12, 0x6

    invoke-static {v4, v12}, Lcom/android/settingslib/d/f;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 988
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lcom/android/settingslib/d/f;->c(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v8

    .line 990
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4, v11}, Lcom/android/settingslib/d/f;->c(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    goto :goto_6

    :cond_10
    move v4, v8

    .line 995
    :goto_6
    invoke-static {v8, v4}, Lcom/android/settingslib/d/g;->a(II)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 996
    sget v10, Lcom/android/settingslib/e$h;->bluetooth_battery_level_untethered:I

    goto :goto_7

    :cond_11
    if-eqz v0, :cond_12

    .line 998
    sget v10, Lcom/android/settingslib/e$h;->bluetooth_battery_level:I

    :cond_12
    :goto_7
    if-nez v5, :cond_13

    if-nez v6, :cond_13

    if-eqz v7, :cond_19

    .line 1006
    :cond_13
    iget-object v5, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/l;->s(Landroid/content/Context;)Z

    move-result v5

    .line 1007
    iget-boolean v6, p0, Lcom/android/settingslib/d/g;->m:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, Lcom/android/settingslib/d/g;->l:Z

    if-eqz v6, :cond_14

    if-nez v5, :cond_15

    :cond_14
    iget-boolean v6, p0, Lcom/android/settingslib/d/g;->k:Z

    if-eqz v6, :cond_19

    if-nez v5, :cond_19

    .line 1010
    :cond_15
    invoke-static {v8, v4}, Lcom/android/settingslib/d/g;->a(II)Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez p1, :cond_16

    .line 1011
    sget v10, Lcom/android/settingslib/e$h;->bluetooth_active_battery_level_untethered:I

    goto :goto_8

    :cond_16
    if-eqz v0, :cond_17

    if-nez p1, :cond_17

    .line 1013
    sget v10, Lcom/android/settingslib/e$h;->bluetooth_active_battery_level:I

    goto :goto_8

    .line 1015
    :cond_17
    sget v10, Lcom/android/settingslib/e$h;->bluetooth_active_no_battery_level:I

    goto :goto_8

    :cond_18
    move v4, v8

    .line 1021
    :cond_19
    :goto_8
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_pairing:I

    if-ne v10, p1, :cond_1b

    .line 10496
    iget-object p1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    if-ne p1, v11, :cond_1a

    goto :goto_9

    :cond_1a
    return-object v1

    .line 1023
    :cond_1b
    :goto_9
    invoke-static {v8, v4}, Lcom/android/settingslib/d/g;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1024
    iget-object p1, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v8}, Lcom/android/settingslib/l;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1025
    invoke-static {v4}, Lcom/android/settingslib/l;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1024
    invoke-virtual {p1, v10, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1027
    :cond_1c
    iget-object p1, p0, Lcom/android/settingslib/d/g;->p:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v10, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 951
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 5

    .line 3496
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 354
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    const-string v2, "Command sent successfully:REMOVE_BOND "

    const-string v3, "CachedBluetoothDevice"

    if-eqz v1, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->r()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settingslib/d/g;->c(Lcom/android/settingslib/d/r;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4405
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 772
    instance-of v0, p1, Lcom/android/settingslib/d/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settingslib/d/g;

    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 4409
    iget-object v0, v0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    const/4 v1, 0x1

    const-string v2, "CachedBluetoothDevice"

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0, v0}, Lcom/android/settingslib/d/g;->e(Lcom/android/settingslib/d/r;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5396
    iget-object v3, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 439
    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/a;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OnPreferenceClickListener: A2DP active device="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 5421
    iget-object v3, v3, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    if-eqz v3, :cond_1

    .line 445
    invoke-direct {p0, v3}, Lcom/android/settingslib/d/g;->e(Lcom/android/settingslib/d/r;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6396
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 446
    invoke-virtual {v3, v4}, Lcom/android/settingslib/d/j;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OnPreferenceClickListener: Headset active device="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 6449
    iget-object v3, v3, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v3, :cond_2

    .line 452
    invoke-direct {p0, v3}, Lcom/android/settingslib/d/g;->e(Lcom/android/settingslib/d/r;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7396
    iget-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 453
    invoke-virtual {v3, v4}, Lcom/android/settingslib/d/l;->d(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 454
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OnPreferenceClickListener: Hearing Aid active device="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_2
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()V
    .locals 0

    .line 485
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->m()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/r;

    .line 573
    invoke-direct {p0, v2}, Lcom/android/settingslib/d/g;->d(Lcom/android/settingslib/d/r;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 575
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 579
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Z
    .locals 5

    .line 590
    iget-object v0, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/r;

    .line 592
    invoke-direct {p0, v2}, Lcom/android/settingslib/d/g;->d(Lcom/android/settingslib/d/r;)I

    move-result v2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 595
    :cond_1
    monitor-exit v0

    return v3

    .line 7496
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 598
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 599
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final k()Z
    .locals 10

    .line 603
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->q:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    if-nez v3, :cond_1

    return v8

    .line 7861
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 7863
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 7864
    sget-object v2, Lcom/android/settingslib/d/y;->a:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 614
    :cond_2
    iget-object v9, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v9

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    iget-object v4, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settingslib/d/g;->f:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settingslib/d/g;->s:Z

    iget-object v7, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settingslib/d/s;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 617
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating profiles for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CachedBluetoothDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "UUID:"

    .line 624
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    array-length v1, v0

    :goto_0
    if-ge v8, v1, :cond_4

    aget-object v2, v0, v8

    .line 626
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CachedBluetoothDevice"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 617
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/r;",
            ">;"
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 731
    iget-object v1, p0, Lcom/android/settingslib/d/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/d/r;

    .line 733
    invoke-interface {v3}, Lcom/android/settingslib/d/r;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/d/g;->t:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/d/g$a;

    .line 760
    invoke-interface {v2}, Lcom/android/settingslib/d/g$a;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 762
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()Z
    .locals 5

    .line 1155
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 11409
    iget-object v0, v0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    .line 1156
    iget-object v1, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    invoke-virtual {v1}, Lcom/android/settingslib/d/s;->d()Lcom/android/settingslib/d/b;

    move-result-object v1

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "a2dpProfile :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " a2dpSinkProfile :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CachedBluetoothDevice"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/a;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    return v4

    :cond_1
    if-eqz v1, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/d/b;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    return v4
.end method

.method public final o()Z
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 11421
    iget-object v0, v0, Lcom/android/settingslib/d/s;->d:Lcom/android/settingslib/d/j;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/j;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/android/settingslib/d/g;->r:Lcom/android/settingslib/d/s;

    .line 11449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/l;->c(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .locals 5

    .line 1196
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 1197
    iget-short v1, p0, Lcom/android/settingslib/d/g;->d:S

    .line 1198
    iget-boolean v2, p0, Lcom/android/settingslib/d/g;->g:Z

    .line 1200
    iget-object v3, p0, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    iget-object v4, v3, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 1201
    iget-short v4, v3, Lcom/android/settingslib/d/g;->d:S

    iput-short v4, p0, Lcom/android/settingslib/d/g;->d:S

    .line 1202
    iget-boolean v4, v3, Lcom/android/settingslib/d/g;->g:Z

    iput-boolean v4, p0, Lcom/android/settingslib/d/g;->g:Z

    .line 1204
    iput-object v0, v3, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 1205
    iput-short v1, v3, Lcom/android/settingslib/d/g;->d:S

    .line 1206
    iput-boolean v2, v3, Lcom/android/settingslib/d/g;->g:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/settingslib/d/g;->u()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
