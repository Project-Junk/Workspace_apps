.class final Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->a:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;->a:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->a()V

    return-void
.end method
