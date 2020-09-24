.class public Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiMasterSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/e$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private a:Lcom/android/settings/widget/MasterSwitchPreference;

.field private b:Lcom/android/settings/wifi/g;

.field private final c:Lcom/android/settings/wifi/h;

.field private final d:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->d:Lcom/android/settingslib/core/instrumentation/d;

    .line 50
    new-instance p1, Lcom/android/settings/wifi/h;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/wifi/h;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->c:Lcom/android/settings/wifi/h;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "toggle_wifi"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "toggle_wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->b:Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->b()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->c:Lcom/android/settings/wifi/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/h;->a(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->c:Lcom/android/settings/wifi/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/h;->a(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->b:Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/g;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 87
    new-instance v0, Lcom/android/settings/wifi/g;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->d:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/g;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->b:Lcom/android/settings/wifi/g;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->b:Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->a()V

    :cond_0
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;->a:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
