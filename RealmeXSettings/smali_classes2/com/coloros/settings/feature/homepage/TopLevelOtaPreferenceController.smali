.class public Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelOtaPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final PACKAGE_OTA:Ljava/lang/String; = "com.oppo.otaui"

.field private static final TAG:Ljava/lang/String; = "TopLevelOtaPreferenceController"


# instance fields
.field private mGotaUpdateSupport:Z

.field private mIsOtaEnabled:Ljava/lang/Boolean;

.field private mOtaDataObserver:Landroid/database/ContentObserver;

.field private mPreference:Landroidx/preference/Preference;

.field private mUm:Landroid/os/UserManager;

.field private mUpdateManager:Landroid/os/SystemUpdateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mIsOtaEnabled:Ljava/lang/Boolean;

    .line 69
    invoke-static {}, Lcom/coloros/settings/utils/bh;->f()Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    .line 70
    iget-boolean p2, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-eqz p2, :cond_0

    .line 71
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mUm:Landroid/os/UserManager;

    const-string p2, "system_update"

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SystemUpdateManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mUpdateManager:Landroid/os/SystemUpdateManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->updatePreferenceMark(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 5

    const-string v0, "ci_action_on_sys_update_intent_string"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ci_action_on_sys_update_extra_string"

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ci_action_on_sys_update_extra_val_string"

    .line 173
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ciActionOnSysUpdate: broadcasting intent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with extra "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopLevelOtaPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x1000000

    .line 182
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private updatePreferenceMark(I)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, v0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updatePreferenceMark: otaCount = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TopLevelOtaPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsCornerMarkPreference;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 108
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, p1, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f05003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mUm:Landroid/os/UserManager;

    .line 92
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2

    .line 94
    :cond_2
    invoke-static {}, Lcom/coloros/settings/utils/bh;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mIsOtaEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "com.oppo.otaui"

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mIsOtaEnabled:Ljava/lang/Boolean;

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mIsOtaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.ota.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ci_action_on_sys_update_bool"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$updateState$0$TopLevelOtaPreferenceController()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mUpdateManager:Landroid/os/SystemUpdateManager;

    invoke-virtual {v0}, Landroid/os/SystemUpdateManager;->retrieveSystemUpdateInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mOtaDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mOtaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mOtaDataObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 119
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$1;-><init>(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mOtaDataObserver:Landroid/database/ContentObserver;

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_ota_patch"

    .line 130
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mOtaDataObserver:Landroid/database/ContentObserver;

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->V(Landroid/content/Context;)I

    move-result v0

    .line 132
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->updatePreferenceMark(I)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    const-string p1, "TopLevelOtaPreferenceController"

    .line 189
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->mGotaUpdateSupport:Z

    if-eqz v0, :cond_4

    .line 190
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/coloros/settings/feature/homepage/-$$Lambda$TopLevelOtaPreferenceController$NplkR7IBNAWT2_vL1gTyyg5zzyY;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/-$$Lambda$TopLevelOtaPreferenceController$NplkR7IBNAWT2_vL1gTyyg5zzyY;-><init>(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v1, 0x0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 196
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error getting system update info."

    .line 198
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v3, "status"

    .line 202
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const-string v0, "Update statue unknown"

    .line 210
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "Update statue idle"

    .line 213
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;->updatePreferenceMark(I)V

    .line 219
    new-instance p1, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;

    invoke-direct {p1, p0, v1}, Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController$2;-><init>(Lcom/coloros/settings/feature/homepage/TopLevelOtaPreferenceController;I)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    return-void
.end method
