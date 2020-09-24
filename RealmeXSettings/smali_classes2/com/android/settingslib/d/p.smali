.class public final Lcom/android/settingslib/d/p;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static d:Lcom/android/settingslib/d/p;


# instance fields
.field final a:Landroid/bluetooth/BluetoothAdapter;

.field b:Lcom/android/settingslib/d/s;

.field c:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lcom/android/settingslib/d/p;->c:I

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/d/p;->a:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static declared-synchronized a()Lcom/android/settingslib/d/p;
    .locals 3

    const-class v0, Lcom/android/settingslib/d/p;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/android/settingslib/d/p;->d:Lcom/android/settingslib/d/p;

    if-nez v1, :cond_0

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v2, Lcom/android/settingslib/d/p;

    invoke-direct {v2, v1}, Lcom/android/settingslib/d/p;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v2, Lcom/android/settingslib/d/p;->d:Lcom/android/settingslib/d/p;

    .line 80
    :cond_0
    sget-object v1, Lcom/android/settingslib/d/p;->d:Lcom/android/settingslib/d/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/d/p;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method
