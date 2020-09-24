.class public Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/settingslib/widget/FooterPreference;

.field private b:Lcom/android/settings/widget/SwitchBar;

.field private c:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothDashboardFrag"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a89

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x56e

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15002b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 109
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    .line 110
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    new-instance v1, Lcom/android/settings/widget/f;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v2}, Lcom/android/settings/widget/f;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->a:Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/widget/FooterPreference;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->c:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->c:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 101
    const-class p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->a:Lcom/android/settingslib/widget/FooterPreference;

    .line 85
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.wirelesssettings"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDashboardFrag"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->finish()V

    return-void
.end method
