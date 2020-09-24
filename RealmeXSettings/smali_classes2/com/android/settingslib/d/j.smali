.class public final Lcom/android/settingslib/d/j;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/j$a;
    }
.end annotation


# static fields
.field static final b:[Landroid/os/ParcelUuid;


# instance fields
.field public a:Landroid/bluetooth/BluetoothHeadset;

.field private c:Z

.field private d:Landroid/content/Context;

.field private final e:Lcom/android/settingslib/d/h;

.field private final f:Lcom/android/settingslib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 50
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/d/j;->b:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/settingslib/d/j;->e:Lcom/android/settingslib/d/h;

    .line 102
    iput-object p3, p0, Lcom/android/settingslib/d/j;->f:Lcom/android/settingslib/d/s;

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/j$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/j$a;-><init>(Lcom/android/settingslib/d/j;B)V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 105
    iput-object p1, p0, Lcom/android/settingslib/d/j;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/j;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/d/j;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/j;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/settingslib/d/j;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/d/j;)Lcom/android/settingslib/d/h;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/d/j;->e:Lcom/android/settingslib/d/h;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settingslib/d/j;)Lcom/android/settingslib/d/s;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/d/j;->f:Lcom/android/settingslib/d/s;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/android/settingslib/d/j;->d:Landroid/content/Context;

    const-string v0, "ic_bt_headset_hfp"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 189
    iget-object p2, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 192
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/android/settingslib/d/j;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

.method public final d(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 145
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final e()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "HeadsetProfile"

    const-string v1, "finalize()"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 240
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 242
    iput-object v1, p0, Lcom/android/settingslib/d/j;->a:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up HID proxy"

    .line 244
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 215
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_headset:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HEADSET"

    return-object v0
.end method
