.class final Lcom/android/settingslib/d/d$b;
.super Lcom/android/settingslib/d/d$d;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lcom/android/settingslib/d/d$d;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/settingslib/d/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method final a([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 112
    sget-object p2, Lcom/android/settingslib/d/a;->d:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 115
    :cond_0
    sget-object p2, Lcom/android/settingslib/d/j;->b:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_1
    if-eqz p2, :cond_3

    .line 119
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v0
.end method
