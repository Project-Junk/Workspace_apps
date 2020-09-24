.class public final Lcom/android/settingslib/d/i;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/i$a;
    }
.end annotation


# static fields
.field private static a:Z = true


# instance fields
.field private b:Landroid/bluetooth/BluetoothDun;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/android/settingslib/d/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/d/i$a;-><init>(Lcom/android/settingslib/d/i;B)V

    const/16 v2, 0x16

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 93
    iput-object p1, p0, Lcom/android/settingslib/d/i;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/i;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settingslib/d/i;->b:Landroid/bluetooth/BluetoothDun;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/i;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/settingslib/d/i;->c:Z

    return p1
.end method

.method static synthetic e()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/android/settingslib/d/i;->a:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/android/settingslib/d/i;->d:Landroid/content/Context;

    const-string v0, "ic_bt_network_pan"

    invoke-static {p1, v0}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/android/settingslib/d/i;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/d/i;->b:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/d/i;->b:Landroid/bluetooth/BluetoothDun;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDun;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final f()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method protected final finalize()V
    .locals 4

    .line 162
    sget-boolean v0, Lcom/android/settingslib/d/i;->a:Z

    const-string v1, "DunServerProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/d/i;->b:Landroid/bluetooth/BluetoothDun;

    if-eqz v0, :cond_1

    .line 165
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v2, 0x16

    iget-object v3, p0, Lcom/android/settingslib/d/i;->b:Landroid/bluetooth/BluetoothDun;

    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/settingslib/d/i;->b:Landroid/bluetooth/BluetoothDun;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Error cleaning up DUN proxy"

    .line 169
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 141
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_dun:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DUN Server"

    return-object v0
.end method
