.class public final Lcom/android/settingslib/d/x;
.super Ljava/lang/Object;
.source "PbapClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/x$a;
    }
.end annotation


# static fields
.field static final a:[Landroid/os/ParcelUuid;


# instance fields
.field private b:Landroid/bluetooth/BluetoothPbapClient;

.field private c:Z

.field private d:Landroid/content/Context;

.field private final e:Lcom/android/settingslib/d/h;

.field private final f:Lcom/android/settingslib/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 45
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/d/x;->a:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/h;Lcom/android/settingslib/d/s;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/settingslib/d/x;->e:Lcom/android/settingslib/d/h;

    .line 105
    iput-object p3, p0, Lcom/android/settingslib/d/x;->f:Lcom/android/settingslib/d/s;

    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/d/x$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/d/x$a;-><init>(Lcom/android/settingslib/d/x;B)V

    const/16 v0, 0x11

    invoke-virtual {p2, p1, p3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 108
    iput-object p1, p0, Lcom/android/settingslib/d/x;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/x;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settingslib/d/x;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/x;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/settingslib/d/x;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settingslib/d/x;)Lcom/android/settingslib/d/h;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/d/x;->e:Lcom/android/settingslib/d/h;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/android/settingslib/d/x;->d:Landroid/content/Context;

    const-string v0, "ic_phone"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 173
    iget-object p2, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/settingslib/d/x;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string v0, "PbapClientProfile"

    const-string v1, "PBAPClientProfile got connect request"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PBAPClientProfile attempting to connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const-string v0, "PbapClientProfile"

    const-string v1, "PBAPClientProfile got disconnect request"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected final finalize()V
    .locals 4

    const-string v0, "PbapClientProfile"

    const-string v1, "finalize()"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 207
    iput-object v1, p0, Lcom/android/settingslib/d/x;->b:Landroid/bluetooth/BluetoothPbapClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up PBAP Client proxy"

    .line 209
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 190
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_pbap:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PbapClient"

    return-object v0
.end method
