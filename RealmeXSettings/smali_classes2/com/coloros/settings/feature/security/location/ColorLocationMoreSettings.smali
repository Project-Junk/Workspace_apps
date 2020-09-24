.class public Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorLocationMoreSettings.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/coloros/settings/feature/security/location/c;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/UserHandle;

.field private g:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;)Lcom/coloros/settings/feature/security/location/c;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->d:Lcom/coloros/settings/feature/security/location/c;

    return-object p0
.end method

.method private a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 132
    new-instance v0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$2;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    const v1, 0x7f0d00b0

    .line 141
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 142
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a:Landroid/app/Activity;

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a:Landroid/app/Activity;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->g:Landroid/os/UserManager;

    const p1, 0x7f150053

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->addPreferencesFromResource(I)V

    const-string p1, "key_more_settings_category"

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->g:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->f:Landroid/os/UserHandle;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Swallowing "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenResolutionFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 68
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a:Landroid/app/Activity;

    .line 1100
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->f:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->g:Landroid/os/UserManager;

    const-string v3, "no_share_location"

    .line 1101
    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1104
    :goto_0
    new-instance v2, Lcom/coloros/settings/feature/security/location/c;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/security/location/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->d:Lcom/coloros/settings/feature/security/location/c;

    .line 1107
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1108
    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->d:Lcom/coloros/settings/feature/security/location/c;

    if-eqz v1, :cond_1

    .line 1109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    .line 1108
    :goto_1
    invoke-virtual {v3, v2, v1}, Lcom/coloros/settings/feature/security/location/c;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->e:Ljava/util/List;

    .line 1111
    new-instance v1, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings$1;-><init>(Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->c:Landroid/content/BroadcastReceiver;

    .line 1119
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.location.InjectedSettingChanged"

    .line 1120
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1124
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1125
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->b:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/security/location/ColorLocationMoreSettings;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    :cond_2
    return-void
.end method
