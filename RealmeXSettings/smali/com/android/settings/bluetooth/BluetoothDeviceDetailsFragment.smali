.class public Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$a;
    }
.end annotation


# static fields
.field static a:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static b:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field c:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Lcom/android/settingslib/d/q;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Lcom/android/settingslib/d/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 77
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "BTDeviceDetailsFrg"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 168
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->d:Lcom/android/settingslib/d/q;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/d/q;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->d:Lcom/android/settingslib/d/q;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    move-object v2, v8

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/q;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f1

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150029

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->c:Ljava/lang/String;

    .line 1082
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->b:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$a;

    if-eqz v0, :cond_0

    .line 1083
    invoke-interface {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$a;->b()Lcom/android/settingslib/d/q;

    move-result-object v0

    goto :goto_0

    .line 1085
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v0

    .line 109
    :goto_0
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->d:Lcom/android/settingslib/d/q;

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->c:Ljava/lang/String;

    .line 1090
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->b:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$a;

    if-eqz v1, :cond_1

    .line 1091
    invoke-interface {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$a;->a()Lcom/android/settingslib/d/g;

    move-result-object v0

    goto :goto_1

    .line 1093
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->d:Lcom/android/settingslib/d/q;

    .line 1124
    iget-object v1, v1, Lcom/android/settingslib/d/q;->b:Lcom/android/settingslib/d/p;

    .line 1094
    invoke-virtual {v1, v0}, Lcom/android/settingslib/d/p;->a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->d:Lcom/android/settingslib/d/q;

    .line 1154
    iget-object v1, v1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 1095
    invoke-virtual {v1, v0}, Lcom/android/settingslib/d/h;->a(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/d/g;

    move-result-object v0

    .line 110
    :goto_1
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->finish()V

    return-void

    .line 116
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 117
    const-class v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/d/g;)V

    .line 119
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/d;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "settings_ui"

    const-string v2, "bt_slice_settings_enabled"

    .line 121
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    const-class v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    .line 1396
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 125
    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/d;->a(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 124
    :goto_2
    invoke-virtual {v1, p1}, Lcom/android/settings/slices/BlockingSlicePrefController;->setSliceUri(Landroid/net/Uri;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 146
    sget v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->a:I

    const/4 v1, 0x0

    const v2, 0x7f120412

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "com.android.internal.R.drawable.ic_mode_edit"

    .line 147
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 148
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->a:I

    if-ne v0, v1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->e:Lcom/android/settingslib/d/g;

    invoke-static {p1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->a(Lcom/android/settingslib/d/g;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RemoteDeviceName"

    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
