.class public final Lcom/android/settingslib/n/b;
.super Lcom/android/settingslib/n/g;
.source "BluetoothMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/d/c;
.implements Lcom/android/settingslib/d/s$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/n/b$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/android/settingslib/n/b$a;

.field private f:Lcom/android/settingslib/d/q;

.field private g:Lcom/android/settingslib/d/s;

.field private h:Lcom/android/settingslib/d/h;

.field private i:Lcom/android/settingslib/n/f;

.field private j:Lcom/android/settingslib/n/f;

.field private k:Z

.field private l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/q;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/g;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/settingslib/n/b$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/n/b$a;-><init>(Lcom/android/settingslib/n/b;B)V

    iput-object p1, p0, Lcom/android/settingslib/n/b;->e:Lcom/android/settingslib/n/b$a;

    .line 54
    iput-boolean v0, p0, Lcom/android/settingslib/n/b;->k:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/settingslib/n/b;->l:Z

    .line 61
    iput-object p2, p0, Lcom/android/settingslib/n/b;->f:Lcom/android/settingslib/d/q;

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/n/b;->f:Lcom/android/settingslib/d/q;

    .line 1162
    iget-object p1, p1, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 62
    iput-object p1, p0, Lcom/android/settingslib/n/b;->g:Lcom/android/settingslib/d/s;

    .line 63
    iget-object p1, p0, Lcom/android/settingslib/n/b;->f:Lcom/android/settingslib/d/q;

    .line 2154
    iget-object p1, p1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 63
    iput-object p1, p0, Lcom/android/settingslib/n/b;->h:Lcom/android/settingslib/d/h;

    return-void
.end method

.method private a(Lcom/android/settingslib/d/g;)V
    .locals 2

    .line 7405
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settingslib/n/b;->a(Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/settingslib/n/a;

    iget-object v1, p0, Lcom/android/settingslib/n/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/n/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/d/g;)V

    .line 163
    iget-object v1, p0, Lcom/android/settingslib/n/b;->e:Lcom/android/settingslib/n/b$a;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/g$a;)V

    .line 164
    iput-object v0, p0, Lcom/android/settingslib/n/b;->i:Lcom/android/settingslib/n/f;

    .line 165
    iget-object p1, p0, Lcom/android/settingslib/n/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static c(Lcom/android/settingslib/d/g;)Z
    .locals 4

    .line 214
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->p()Z

    move-result v0

    .line 215
    invoke-virtual {p0}, Lcom/android/settingslib/d/g;->n()Z

    move-result v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isCachedDeviceConnected() cachedDevice : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", is hearing aid connected : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", is a2dp connected : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BluetoothMediaManager"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private d(Lcom/android/settingslib/d/g;)V
    .locals 2

    .line 12405
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Lcom/android/settingslib/n/b;->a(Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/android/settingslib/n/b;->e:Lcom/android/settingslib/n/b$a;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/g$a;)V

    .line 242
    iput-object v0, p0, Lcom/android/settingslib/n/b;->j:Lcom/android/settingslib/n/f;

    .line 243
    iget-object p1, p0, Lcom/android/settingslib/n/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private e(Lcom/android/settingslib/d/g;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/n/b;->j:Lcom/android/settingslib/n/f;

    if-eqz v0, :cond_0

    .line 13405
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/n/b;->j:Lcom/android/settingslib/n/f;

    invoke-virtual {v0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 250
    iget-object p1, p0, Lcom/android/settingslib/n/b;->j:Lcom/android/settingslib/n/f;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/n/b;->b(Lcom/android/settingslib/n/f;)V

    :cond_0
    return-void
.end method

.method private f(Lcom/android/settingslib/d/g;)V
    .locals 2

    .line 13496
    iget-object v0, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v1, v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->d(Lcom/android/settingslib/d/g;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->e(Lcom/android/settingslib/d/g;)V

    return-void

    .line 14405
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settingslib/n/b;->a(Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/android/settingslib/n/b;->f()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/settingslib/n/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/n/b;->l:Z

    if-nez v0, :cond_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/n/b;->g:Lcom/android/settingslib/d/s;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/s;->a(Lcom/android/settingslib/d/s$c;)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->i()V

    .line 88
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->j()V

    return-void
.end method

.method private i()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/n/b;->g:Lcom/android/settingslib/d/s;

    .line 2409
    iget-object v0, v0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    const-string v1, "BluetoothMediaManager"

    if-nez v0, :cond_0

    const-string v0, "addConnectableA2dpDevices() a2dp profile is null!"

    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x4

    .line 3138
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/d/a;->a([I)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 101
    iget-object v4, p0, Lcom/android/settingslib/n/b;->h:Lcom/android/settingslib/d/h;

    .line 102
    invoke-virtual {v4, v3}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v4

    if-nez v4, :cond_2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t found CachedBluetoothDevice : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addConnectableA2dpDevices() device : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", is connected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v4}, Lcom/android/settingslib/d/g;->i()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", is preferred : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/a;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/a;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    .line 3496
    iget-object v5, v4, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 115
    invoke-direct {p0, v4}, Lcom/android/settingslib/n/b;->a(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    .line 4088
    :cond_3
    iget-boolean v0, v0, Lcom/android/settingslib/d/a;->c:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/settingslib/n/b;->k:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method private j()V
    .locals 9

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/n/b;->g:Lcom/android/settingslib/d/s;

    .line 4449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    const-string v1, "BluetoothMediaManager"

    if-nez v0, :cond_0

    const-string v0, "addConnectableHearingAidDevices() hap profile is null!"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x4

    .line 5135
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/l;->a([I)Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 133
    iget-object v5, p0, Lcom/android/settingslib/n/b;->h:Lcom/android/settingslib/d/h;

    .line 134
    invoke-virtual {v5, v4}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v5

    if-nez v5, :cond_2

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t found CachedBluetoothDevice : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addConnectableHearingAidDevices() device : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", is connected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Lcom/android/settingslib/d/g;->i()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", is preferred : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v4}, Lcom/android/settingslib/d/l;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0, v4}, Lcom/android/settingslib/d/l;->f(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/settingslib/d/l;->e(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    .line 5496
    iget-object v8, v5, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v8

    if-ne v4, v8, :cond_1

    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v5}, Lcom/android/settingslib/n/b;->a(Lcom/android/settingslib/d/g;)V

    goto :goto_0

    .line 6085
    :cond_3
    iget-boolean v0, v0, Lcom/android/settingslib/d/l;->a:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/settingslib/n/b;->l:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method private k()Lcom/android/settingslib/n/f;
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/android/settingslib/n/b;->g:Lcom/android/settingslib/d/s;

    .line 16449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Lcom/android/settingslib/d/l;->e()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 17045
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/settingslib/n/b;->a(Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/n/b;->f:Lcom/android/settingslib/d/q;

    .line 2158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 68
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->h()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/n/b;->e()V

    .line 71
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->g()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/android/settingslib/n/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/n/b;->l:Z

    if-nez v0, :cond_1

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->h()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settingslib/n/b;->e()V

    .line 326
    :cond_1
    iget-boolean v0, p0, Lcom/android/settingslib/n/b;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settingslib/n/b;->l:Z

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/settingslib/n/b;->g:Lcom/android/settingslib/d/s;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/s;->b(Lcom/android/settingslib/d/s$c;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g;)V
    .locals 1

    .line 232
    invoke-static {p1}, Lcom/android/settingslib/n/b;->c(Lcom/android/settingslib/d/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->d(Lcom/android/settingslib/d/g;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->e(Lcom/android/settingslib/d/g;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/settingslib/d/g;I)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAclConnectionStateChanged() device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMediaManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->f(Lcom/android/settingslib/d/g;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/n/b;->f:Lcom/android/settingslib/d/q;

    .line 8158
    iget-object v0, v0, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 171
    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    .line 8176
    iget-object v0, p0, Lcom/android/settingslib/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/n/f;

    .line 8177
    check-cast v1, Lcom/android/settingslib/n/a;

    .line 9086
    iget-object v1, v1, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 8177
    iget-object v2, p0, Lcom/android/settingslib/n/b;->e:Lcom/android/settingslib/n/b$a;

    .line 8178
    invoke-virtual {v1, v2}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/g$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/d/g;I)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActiveDeviceChanged : device : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    if-ne v0, p2, :cond_0

    if-eqz p1, :cond_3

    .line 15405
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/settingslib/n/b;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    .line 295
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->k()Lcom/android/settingslib/n/f;

    move-result-object p2

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const-string p1, "phone_media_device_id_1"

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16405
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 300
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/n/b;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onAudioModeChanged()V
    .locals 0

    .line 202
    invoke-virtual {p0}, Lcom/android/settingslib/n/b;->f()V

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 4

    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->h()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settingslib/n/b;->e()V

    .line 187
    invoke-direct {p0}, Lcom/android/settingslib/n/b;->g()V

    return-void

    :cond_0
    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/n/f;

    .line 191
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/n/a;

    .line 10086
    iget-object v2, v2, Lcom/android/settingslib/n/a;->a:Lcom/android/settingslib/d/g;

    .line 191
    iget-object v3, p0, Lcom/android/settingslib/n/b;->e:Lcom/android/settingslib/n/b$a;

    .line 192
    invoke-virtual {v2, v3}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/g$a;)V

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/n/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settingslib/n/b;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/d/g;)V
    .locals 1

    .line 207
    invoke-static {p1}, Lcom/android/settingslib/n/b;->c(Lcom/android/settingslib/d/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->a(Lcom/android/settingslib/d/g;)V

    .line 10224
    iget-object v0, p0, Lcom/android/settingslib/n/b;->i:Lcom/android/settingslib/n/f;

    if-eqz v0, :cond_0

    .line 11405
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 10225
    iget-object v0, p0, Lcom/android/settingslib/n/b;->i:Lcom/android/settingslib/n/f;

    invoke-virtual {v0}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10226
    iget-object p1, p0, Lcom/android/settingslib/n/b;->i:Lcom/android/settingslib/n/f;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/n/b;->a(Lcom/android/settingslib/n/f;)V

    :cond_0
    return-void
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/d/g;II)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProfileConnectionStateChanged() device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bluetoothProfile: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMediaManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settingslib/n/b;->f(Lcom/android/settingslib/d/g;)V

    return-void
.end method
