.class public Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "ColorAdbPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field a:Landroidx/preference/TwoStatePreference;

.field private b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private c:Landroid/database/ContentObserver;

.field private e:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c:Landroid/database/ContentObserver;

    .line 144
    new-instance p1, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController$2;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->e:Landroid/database/ContentObserver;

    .line 61
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz p3, :cond_0

    .line 63
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;)Landroidx/preference/TwoStatePreference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    .line 88
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private e()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->e()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable_adb"

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "enable_adb"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/development/b;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m_()V
    .locals 2

    .line 209
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Z)V

    .line 211
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1204
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2168
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/EnableAdbWarningDialog;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->a(Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    .line 117
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "ZQ_ADB_ENABLED"

    .line 120
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->e:Landroid/database/ContentObserver;

    .line 119
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 92
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorAdbPreferenceController;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
