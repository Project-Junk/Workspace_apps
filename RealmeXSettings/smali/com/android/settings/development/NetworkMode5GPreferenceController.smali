.class public Lcom/android/settings/development/NetworkMode5GPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "NetworkMode5GPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private b:Landroid/content/Context;

.field private c:Lcom/coloros/settings/receiver/a;

.field private e:Landroid/telephony/CarrierConfigManager;

.field private f:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/android/settings/development/NetworkMode5GPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/NetworkMode5GPreferenceController$1;-><init>(Lcom/android/settings/development/NetworkMode5GPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->f:Landroid/database/ContentObserver;

    .line 55
    iput-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/development/NetworkMode5GPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p0
.end method

.method private c()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/development/NetworkMode5GPreferenceController;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oppo_multi_sim_network_primary_slot"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 157
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->e:Landroid/telephony/CarrierConfigManager;

    const-string v3, "config_oppo_show_5g_pref"

    if-nez v2, :cond_1

    .line 162
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 164
    :cond_1
    aget v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 166
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 168
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_network_5G_mode_select"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/development/NetworkMode5GPreferenceController;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_network_5G_mode_select"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 69
    invoke-static {}, Lcom/coloros/settings/utils/bh;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/utils/bh;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1080
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "oppo.intent.action.simsettings.SET_NR_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.phone"

    .line 1081
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    new-instance p1, Lcom/coloros/settings/receiver/a;

    invoke-direct {p1}, Lcom/coloros/settings/receiver/a;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->c:Lcom/coloros/settings/receiver/a;

    .line 112
    iget-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->c:Lcom/coloros/settings/receiver/a;

    new-instance v0, Lcom/android/settings/development/NetworkMode5GPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/NetworkMode5GPreferenceController$2;-><init>(Lcom/android/settings/development/NetworkMode5GPreferenceController;)V

    .line 1107
    iput-object v0, p1, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    .line 128
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oppo.intent.action.SUBINFO_STATE_CHANGE"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->c:Lcom/coloros/settings/receiver/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/receiver/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->c:Lcom/coloros/settings/receiver/a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 139
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->f:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 138
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->updateState(Landroidx/preference/Preference;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/development/NetworkMode5GPreferenceController;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/NetworkMode5GPreferenceController;->a:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    return-void
.end method
