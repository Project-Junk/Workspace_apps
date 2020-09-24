.class public Lcom/android/settings/network/AirplaneModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AirplaneModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/a$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/a;

.field private mAirplaneModePreference:Landroidx/preference/TwoStatePreference;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 57
    new-instance p1, Lcom/android/settings/a;

    iget-object p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/settings/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/a$a;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/TwoStatePreference;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ril.cdma.inecmmode"

    .line 67
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 70
    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isChecked()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    .line 1149
    iget-object v0, v0, Lcom/android/settings/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "exit_ecm_result"

    .line 120
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/TwoStatePreference;

    .line 123
    invoke-virtual {p3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p3

    .line 122
    invoke-virtual {p2, p1, p3}, Lcom/android/settings/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    invoke-virtual {v0}, Lcom/android/settings/a;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    invoke-virtual {v0}, Lcom/android/settings/a;->a()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    invoke-virtual {v0, p1}, Lcom/android/settings/a;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method
