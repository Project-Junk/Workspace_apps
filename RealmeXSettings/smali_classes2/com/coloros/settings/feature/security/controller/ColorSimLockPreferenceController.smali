.class public Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;
.super Lcom/android/settings/security/SimLockPreferenceController;
.source "ColorSimLockPreferenceController.java"


# static fields
.field private static final CLASS_NAME_ICC_LOCK_SETTINGS:Ljava/lang/String; = "com.android.settings.Settings$IccLockSettingsActivity"

.field private static final CLASS_NAME_SELECT_SUBSCRIPTION:Ljava/lang/String; = "com.coloros.settings.SelectSubscription"


# instance fields
.field private mHideSimLockSettings:Ljava/lang/Boolean;

.field private mSimIccReady:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mSimIccReady:Ljava/lang/Boolean;

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mHideSimLockSettings:Ljava/lang/Boolean;

    return-void
.end method

.method private getHideSimLockSettings()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mHideSimLockSettings:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mHideSimLockSettings:Ljava/lang/Boolean;

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hide_sim_lock_settings_bool"

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mHideSimLockSettings:Ljava/lang/Boolean;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mHideSimLockSettings:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private getSimIccReady()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mSimIccReady:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->isSimIccReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mSimIccReady:Ljava/lang/Boolean;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mSimIccReady:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private updateIntent(Landroidx/preference/Preference;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->P(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "simList.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimLockPreferenceController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "com.android.settings.Settings$IccLockSettingsActivity"

    if-lt v3, v4, :cond_1

    const-string v1, "com.coloros.settings.SelectSubscription"

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TARGET_CLASS"

    .line 95
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v7, "subscription"

    if-ne v3, v4, :cond_2

    .line 97
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->getSimIccReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->getHideSimLockSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x4

    return v0
.end method

.method public isSimReady()Z
    .locals 1

    .line 110
    invoke-static {}, Lcom/coloros/settings/custom/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/android/settings/security/SimLockPreferenceController;->isSimReady()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/security/SimLockPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/controller/ColorSimLockPreferenceController;->updateIntent(Landroidx/preference/Preference;)V

    return-void
.end method
