.class public Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsHeaderController.java"


# instance fields
.field private d:Lcom/android/settings/widget/b;

.field private e:Lcom/android/settingslib/d/q;

.field private f:Lcom/android/settingslib/d/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/d/q;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 52
    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->e:Lcom/android/settingslib/d/q;

    .line 53
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->e:Lcom/android/settingslib/d/q;

    .line 1154
    iget-object p1, p1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 53
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->f:Lcom/android/settingslib/d/h;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->c:Lcom/android/settingslib/d/g;

    .line 2075
    invoke-static {v0, v1}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Lcom/android/settingslib/d/g;)Landroid/util/Pair;

    move-result-object v0

    .line 2076
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->c:Lcom/android/settingslib/d/g;

    const/4 v2, 0x0

    .line 2904
    invoke-virtual {v1, v2}, Lcom/android/settingslib/d/g;->d(Z)Ljava/lang/String;

    move-result-object v1

    .line 2079
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->d:Lcom/android/settings/widget/b;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->f:Lcom/android/settingslib/d/h;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->c:Lcom/android/settingslib/d/g;

    .line 2080
    invoke-virtual {v3, v4}, Lcom/android/settingslib/d/h;->a(Lcom/android/settingslib/d/g;)Ljava/lang/String;

    move-result-object v3

    .line 3185
    iput-object v3, v2, Lcom/android/settings/widget/b;->d:Ljava/lang/CharSequence;

    .line 2081
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->d:Lcom/android/settings/widget/b;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->c:Lcom/android/settingslib/d/g;

    invoke-virtual {v3}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v3

    .line 4163
    iput-object v3, v2, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 2082
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->d:Lcom/android/settings/widget/b;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    .line 2083
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->d:Lcom/android/settings/widget/b;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5158
    iput-object v0, v2, Lcom/android/settings/widget/b;->a:Ljava/lang/String;

    .line 2084
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->d:Lcom/android/settings/widget/b;

    .line 5173
    iput-object v1, v0, Lcom/android/settings/widget/b;->c:Ljava/lang/CharSequence;

    .line 91
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected final a(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "bluetooth_device_header"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 68
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->b:Landroidx/preference/PreferenceFragmentCompat;

    const v3, 0x7f0a0260

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v3

    .line 68
    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->d:Lcom/android/settings/widget/b;

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_device_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "settings_ui"

    const-string v2, "bt_advanced_header_enabled"

    .line 58
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->c:Lcom/android/settingslib/d/g;

    .line 1396
    iget-object v1, v1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x6

    .line 61
    invoke-static {v1, v2}, Lcom/android/settingslib/d/f;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
