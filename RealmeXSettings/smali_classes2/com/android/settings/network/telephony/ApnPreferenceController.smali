.class public Lcom/android/settings/network/telephony/ApnPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "ApnPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/ApnPreferenceController$a;
    }
.end annotation


# instance fields
.field mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$a;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p2, Landroid/telephony/CarrierConfigManager;

    invoke-direct {p2, p1}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 56
    new-instance p1, Lcom/android/settings/network/telephony/ApnPreferenceController$a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/ApnPreferenceController$a;-><init>(Lcom/android/settings/network/telephony/ApnPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$a;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/ApnPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/network/telephony/d;->b(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "show_apn_setting_cdma_bool"

    .line 64
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 65
    :goto_0
    iget-object v4, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/settings/network/telephony/d;->c(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const-string p1, "apn_expand_bool"

    .line 67
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    if-eqz v0, :cond_3

    const-string v4, "hide_carrier_network_settings_bool"

    .line 69
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    if-nez v2, :cond_5

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    return v3

    :cond_5
    const/4 p1, 0x2

    return p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APN_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, ":settings:show_fragment_as_subsetting"

    .line 108
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    iget v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mSubId:I

    const-string v2, "sub_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mSubId:I

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    .line 1132
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mDpcApnEnforcedObserver:Lcom/android/settings/network/telephony/ApnPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    .line 1137
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method setPreference(Landroidx/preference/Preference;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {v0}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/ApnPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {v0}, Lcom/android/settingslib/h;->d(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    return-void
.end method
