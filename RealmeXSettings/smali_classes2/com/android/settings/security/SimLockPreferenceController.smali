.class public Lcom/android/settings/security/SimLockPreferenceController;
.super Lcom/android/settings/core/a;
.source "SimLockPreferenceController.java"


# static fields
.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock_settings"


# instance fields
.field protected final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "sim_lock_settings"

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "user"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 49
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v0, "telephony_subscription_service"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v0, "phone"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/security/SimLockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private isIccCardActivated(Landroid/content/Context;I)Z
    .locals 1

    .line 116
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 121
    invoke-static {p1}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p1

    .line 123
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "e="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sim_lock_settings"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/security/SimLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/SimLockPreferenceController;->isSimReady()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/android/settings/security/SimLockPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/security/SimLockPreferenceController;->isSimIccReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hide_sim_lock_settings_bool"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x4

    return v0
.end method

.method protected isSimIccReady()Z
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 105
    iget-object v3, p0, Lcom/android/settings/security/SimLockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/security/SimLockPreferenceController;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/android/settings/security/SimLockPreferenceController;->isIccCardActivated(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected isSimReady()Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 86
    iget-object v3, p0, Lcom/android/settings/security/SimLockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
