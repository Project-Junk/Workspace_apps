.class final Lcom/android/settingslib/d/i$a;
.super Ljava/lang/Object;
.source "DunServerProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/i;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/d/i;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settingslib/d/i$a;->a:Lcom/android/settingslib/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/d/i;B)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/d/i$a;-><init>(Lcom/android/settingslib/d/i;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/android/settingslib/d/i;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DunServerProfile"

    const-string v0, "Bluetooth service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/d/i$a;->a:Lcom/android/settingslib/d/i;

    check-cast p2, Landroid/bluetooth/BluetoothDun;

    invoke-static {p1, p2}, Lcom/android/settingslib/d/i;->a(Lcom/android/settingslib/d/i;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;

    .line 71
    iget-object p1, p0, Lcom/android/settingslib/d/i$a;->a:Lcom/android/settingslib/d/i;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/d/i;->a(Lcom/android/settingslib/d/i;Z)Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/settingslib/d/i;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "DunServerProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/d/i$a;->a:Lcom/android/settingslib/d/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/d/i;->a(Lcom/android/settingslib/d/i;Z)Z

    return-void
.end method
