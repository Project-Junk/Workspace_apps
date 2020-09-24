.class public Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;
.super Lcom/android/settings/core/a;
.source "AutomaticStorageManagementSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/g$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field static final STORAGE_MANAGER_ENABLED_BY_DEFAULT_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/l;->r(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Lcom/android/settings/widget/MasterSwitchController;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    .line 81
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchController;->a(Lcom/android/settings/widget/g$a;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->b()V

    :cond_1
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x1e9

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_storage_manager_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    const-string v1, "ro.storage_manager.enabled"

    .line 95
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 96
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_storage_manager_turned_off_by_policy"

    .line 97
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v0, v3

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->a()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "ActivationWarningFragment"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method
