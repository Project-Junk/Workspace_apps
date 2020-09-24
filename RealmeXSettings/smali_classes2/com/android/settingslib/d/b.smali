.class final Lcom/android/settingslib/d/b;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/b$a;
    }
.end annotation


# static fields
.field static final b:[Landroid/os/ParcelUuid;


# instance fields
.field a:Z

.field private c:Landroid/bluetooth/BluetoothA2dpSink;

.field private d:Landroid/content/Context;

.field private final e:Lcom/android/settingslib/d/h;

.field private final f:Lcom/android/settingslib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/d/b;->b:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settingslib/d/b;->e:Lcom/android/settingslib/d/h;

    .line 96
    iput-object p3, p0, Lcom/android/settingslib/d/b;->f:Lcom/android/settingslib/d/s;

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/b$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/b$a;-><init>(Lcom/android/settingslib/d/b;B)V

    const/16 v0, 0xb

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 99
    iput-object p1, p0, Lcom/android/settingslib/d/b;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/b;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/d/b;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/b;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/settingslib/d/b;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/d/b;)Lcom/android/settingslib/d/h;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/d/b;->e:Lcom/android/settingslib/d/h;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/android/settingslib/d/b;->d:Landroid/content/Context;

    const-string v0, "ic_bt_headphones_a2dp"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 164
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 165
    iget-object p2, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 168
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/android/settingslib/d/b;->a:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 142
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "A2dpSinkProfile"

    const-string v1, "finalize()"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/android/settingslib/d/b;->c:Landroid/bluetooth/BluetoothA2dpSink;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up A2DP proxy"

    .line 224
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 195
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_a2dp:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "A2DPSink"

    return-object v0
.end method
