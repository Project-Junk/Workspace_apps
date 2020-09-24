.class abstract Lcom/android/settingslib/d/d$d;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settingslib/d/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settingslib/d/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/d/d$d;->a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result p1

    return p1
.end method

.method abstract a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
.end method
