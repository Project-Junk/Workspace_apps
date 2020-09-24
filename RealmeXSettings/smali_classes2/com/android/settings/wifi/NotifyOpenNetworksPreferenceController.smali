.class public Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "NotifyOpenNetworksPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    new-instance v0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;

    const-string v1, "notify_open_networks"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;-><init>(Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notify_open_networks"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify_open_networks"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_1

    return v1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 88
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string v1, "wifi_networks_available_notification_on"

    .line 86
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->a:Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 99
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
