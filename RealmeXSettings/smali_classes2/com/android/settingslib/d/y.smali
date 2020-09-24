.class public final Lcom/android/settingslib/d/y;
.super Ljava/lang/Object;
.source "PbapServerProfile.java"

# interfaces
.implements Lcom/android/settingslib/d/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/y$a;
    }
.end annotation


# static fields
.field static final a:[Landroid/os/ParcelUuid;


# instance fields
.field private b:Landroid/bluetooth/BluetoothPbap;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 49
    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/d/y;->a:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/bluetooth/BluetoothPbap;

    new-instance v1, Lcom/android/settingslib/d/y$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/d/y$a;-><init>(Lcom/android/settingslib/d/y;B)V

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/BluetoothPbap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V

    .line 80
    iput-object p1, p0, Lcom/android/settingslib/d/y;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/d/y;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/d/y;->b:Landroid/bluetooth/BluetoothPbap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settingslib/d/y;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/android/settingslib/d/y;->c:Z

    return p1
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/android/settingslib/d/y;->d:Landroid/content/Context;

    const-string v0, "ic_phone"

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

    .line 70
    iget-boolean v0, p0, Lcom/android/settingslib/d/y;->c:Z

    return v0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final b(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/d/y;->b:Landroid/bluetooth/BluetoothPbap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/d/y;->b:Landroid/bluetooth/BluetoothPbap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v1
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

    const/4 p1, 0x0

    return p1
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected final finalize()V
    .locals 3

    const-string v0, "PbapServerProfile"

    const-string v1, "finalize()"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/settingslib/d/y;->b:Landroid/bluetooth/BluetoothPbap;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->close()V

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/android/settingslib/d/y;->b:Landroid/bluetooth/BluetoothPbap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error cleaning up PBAP proxy"

    .line 151
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final h(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 133
    sget p1, Lcom/android/settingslib/e$h;->bluetooth_profile_pbap:I

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PBAP Server"

    return-object v0
.end method
