.class public Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;
.super Lcom/color/injector/adaptor/g;
.source "AppDefaultLaunchFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_default_launch"
.end annotation


# static fields
.field private static final APP_LINKSTATE_ENTRYVALUES:[Ljava/lang/CharSequence;


# instance fields
.field private mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    .line 35
    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x4

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    sput-object v1, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->APP_LINKSTATE_ENTRYVALUES:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->updateApplinkPreference(I)V

    return-void
.end method

.method private updateApplinkPreference(I)V
    .locals 3

    const/4 v0, 0x4

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setValue(Ljava/lang/String;)V

    .line 4030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const v2, 0x7f1201cb

    if-eq p1, v0, :cond_1

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x7f1201cc

    .line 153
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const p1, 0x7f1201ca

    .line 147
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public buildStateDropDown(Lcom/android/settings/applications/AppLaunchSettings;)Z
    .locals 5

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-boolean v0, p1, Lcom/android/settings/applications/AppLaunchSettings;->r:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEnabled(Z)V

    .line 83
    iget-object p1, p1, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 91
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1201ca

    .line 92
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1201cb

    .line 93
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 3030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1201cc

    .line 94
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 96
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    sget-object v1, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->APP_LINKSTATE_ENTRYVALUES:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    iget-boolean v1, p1, Lcom/android/settings/applications/AppLaunchSettings;->s:Z

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setEnabled(Z)V

    .line 101
    iget-boolean v0, p1, Lcom/android/settings/applications/AppLaunchSettings;->s:Z

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p1, Lcom/android/settings/applications/AppLaunchSettings;->q:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/android/settings/applications/AppLaunchSettings;->i:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 106
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->updateApplinkPreference(I)V

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    new-instance v1, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature$1;-><init>(Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_0
    return v2
.end method

.method public getLayoutResourceId(I)I
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d0074

    return p1
.end method

.method public getPreferenceResId(I)I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f150050

    return p1
.end method

.method public initAppLinkPreference(Lcom/android/settings/applications/AppLaunchSettings;)Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "app_link_state"

    .line 57
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->mAppLinkState:Lcom/coloros/settings/widget/preference/ColorFullScreenListPreference;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/AppLaunchSettings;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settings/applications/AppLaunchSettings;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.oppo.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "app_launch_other_defaults"

    .line 132
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/AppLaunchSettings;->removePreference(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public setAppDomainUrls([Ljava/lang/CharSequence;Lcom/android/settings/applications/AppLaunchSettings;)Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppDefaultLaunchFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 65
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p2, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppDomainsPreference;->a([Ljava/lang/CharSequence;)V

    .line 69
    iget-object p2, p2, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    array-length p1, p1

    new-array p1, p1, [I

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/AppDomainsPreference;->a([I)V

    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    iget-object p1, p2, Lcom/android/settings/applications/AppLaunchSettings;->t:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setEnabled(Z)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
