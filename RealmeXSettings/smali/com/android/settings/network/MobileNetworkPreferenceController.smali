.class public Lcom/android/settings/network/MobileNetworkPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "MobileNetworkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field a:Landroid/telephony/PhoneStateListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Z

.field private final c:Landroid/telephony/TelephonyManager;

.field private final d:Landroid/os/UserManager;

.field private e:Landroidx/preference/Preference;

.field private f:Landroid/telephony/SubscriptionManager;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Ljava/lang/String;

.field private final i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$3;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string/jumbo v0, "user"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->d:Landroid/os/UserManager;

    const-string v0, "phone"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->c:Landroid/telephony/TelephonyManager;

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->d:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->b:Z

    .line 80
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$1;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->g:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->f:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 8

    .line 1137
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->e:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    .line 1138
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->f:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1143
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 1158
    iget-object v6, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->c:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 1159
    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v3, :cond_2

    const-string v3, ", "

    .line 1144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_2
    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->c:Landroid/telephony/TelephonyManager;

    .line 1146
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v3

    .line 1145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    goto :goto_0

    .line 1150
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->h:Ljava/lang/String;

    return-void

    .line 1152
    :cond_4
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->h:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->e:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->e:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "mobile_network_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->h:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 202
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mobile_network_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    invoke-static {}, Lcom/android/settings/m;->c()Z

    move-result p1

    const-string v0, "android.intent.action.MAIN"

    if-eqz p1, :cond_0

    .line 204
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qualcomm.qti.networksetting"

    const-string v2, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_mobile_network_v2"

    invoke-static {p1, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 5

    .line 1096
    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    .line 1100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "no_config_mobile_networks"

    .line 1097
    invoke-static {v0, v4, v3}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public onStart()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->f:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->a:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$2;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->a:Landroid/telephony/PhoneStateListener;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->c:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->a:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->a:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->c:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->f:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->i:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 182
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 192
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 193
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    .line 196
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
