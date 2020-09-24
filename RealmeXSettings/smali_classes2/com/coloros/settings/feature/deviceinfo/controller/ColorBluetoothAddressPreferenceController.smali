.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorBluetoothAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/feature/b/b$a;


# instance fields
.field b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "bt_address"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->c:Landroidx/preference/PreferenceFragmentCompat;

    .line 44
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->b:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120531

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->c:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorBluetoothAddressPreferenceController;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/coloros/settings/feature/b/b;->b(Lcom/coloros/settings/feature/b/b$a;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/coloros/settings/feature/b/b;->a(Lcom/coloros/settings/feature/b/b$a;)V

    return-void
.end method
