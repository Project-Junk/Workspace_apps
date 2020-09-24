.class public Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsMacAddressController.java"


# instance fields
.field d:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

.field e:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 42
    new-instance p1, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-direct {p1, p2, p4}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->d:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->e:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->a:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->c:Lcom/android/settingslib/d/g;

    .line 2405
    iget-object v3, v3, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12038e

    .line 54
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final a(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 47
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->d:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->e:Lcom/android/settingslib/widget/FooterPreference;

    .line 48
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->e:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->a:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->c:Lcom/android/settingslib/d/g;

    .line 1405
    iget-object v2, v2, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12038e

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->e:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
