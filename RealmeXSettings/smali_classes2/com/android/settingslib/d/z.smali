.class final Lcom/android/settingslib/d/z;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/z$a;
    }
.end annotation


# static fields
.field static final a:[Landroid/os/ParcelUuid;


# instance fields
.field private b:Landroid/bluetooth/BluetoothSap;

.field private c:Z

.field private d:Landroid/content/Context;

.field private final e:Lcom/android/settingslib/d/h;

.field private final f:Lcom/android/settingslib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/d/z;->a:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/settingslib/d/z;->e:Lcom/android/settingslib/d/h;

    .line 100
    iput-object p3, p0, Lcom/android/settingslib/d/z;->f:Lcom/android/settingslib/d/s;

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/z$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/z$a;-><init>(Lcom/android/settingslib/d/z;B)V

    const/16 v0, 0xa

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 103
    iput-object p1, p0, Lcom/android/settingslib/d/z;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/z;)Landroid/bluetooth/BluetoothSap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/d/z;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/z;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/settingslib/d/z;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/d/z;)Lcom/android/settingslib/d/h;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/d/z;->e:Lcom/android/settingslib/d/h;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settingslib/d/z;)Lcom/android/settingslib/d/s;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/d/z;->f:Lcom/android/settingslib/d/s;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/android/settingslib/d/z;->d:Landroid/content/Context;

    const-string v0, "ic_phone"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 157
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 158
    iget-object p2, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 161
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/android/settingslib/d/z;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "SapProfile"

    const-string v1, "finalize()"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 211
    iput-object v1, p0, Lcom/android/settingslib/d/z;->b:Landroid/bluetooth/BluetoothSap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up SAP proxy"

    .line 213
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 184
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_sap:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SAP"

    return-object v0
.end method
