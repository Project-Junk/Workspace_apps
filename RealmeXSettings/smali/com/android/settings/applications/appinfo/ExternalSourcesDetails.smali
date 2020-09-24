.class public Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private q:Lcom/android/settings/applications/f;

.field private r:Landroid/app/AppOpsManager;

.field private s:Landroid/app/ActivityManager;

.field private t:Landroid/os/UserManager;

.field private u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

.field private v:Lcom/android/settings/applications/f$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;
    .locals 4

    .line 92
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 93
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    .line 94
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    const-string v3, "no_install_unknown_sources_globally"

    .line 96
    invoke-virtual {v1, v3, v0}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    or-int/2addr v0, v2

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const p1, 0x7f1207eb

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    const p1, 0x7f1207e9

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1
    new-instance v0, Lcom/android/settings/applications/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/f;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 105
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/f;->a(Ljava/lang/String;I)Lcom/android/settings/applications/f$a;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/android/settings/applications/f$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1201e9

    goto :goto_0

    :cond_2
    const p1, 0x7f1201ea

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->g:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->t:Landroid/os/UserManager;

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "no_install_unknown_sources"

    .line 133
    invoke-virtual {v0, v3, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const v3, 0x7f1207e9

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setSummary(I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return v2

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 1191
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const-string v3, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Ljava/lang/String;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 2191
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->b:Lcom/coloros/settings/widget/preference/a;

    .line 2195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-eqz v0, :cond_3

    return v2

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->q:Lcom/android/settings/applications/f;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/f;->a(Ljava/lang/String;I)Lcom/android/settings/applications/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->v:Lcom/android/settings/applications/f$a;

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->v:Lcom/android/settings/applications/f$a;

    invoke-virtual {v0}, Lcom/android/settings/applications/f$a;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setEnabled(Z)V

    return v2

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->v:Lcom/android/settings/applications/f$a;

    invoke-virtual {v1}, Lcom/android/settings/applications/f$a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x328

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/android/settings/applications/f;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/f;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->q:Lcom/android/settings/applications/f;

    const-string v0, "appops"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->r:Landroid/app/AppOpsManager;

    .line 61
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->s:Landroid/app/ActivityManager;

    .line 62
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->t:Landroid/os/UserManager;

    const p1, 0x7f15009b

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->addPreferencesFromResource(I)V

    const-string p1, "external_sources_settings_switch"

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    .line 71
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->u:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 78
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->v:Lcom/android/settings/applications/f$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/applications/f$a;->a()Z

    move-result p1

    if-eq p2, p1, :cond_4

    .line 79
    const-class p1, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->setResult(I)V

    .line 1113
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->r:Landroid/app/AppOpsManager;

    const/16 v0, 0x42

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->i:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    if-nez p2, :cond_3

    .line 1117
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1122
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1125
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->s:Landroid/app/ActivityManager;

    const-string v0, "User denied OP_REQUEST_INSTALL_PACKAGES"

    invoke-virtual {p2, p1, v0}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->b()Z

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method
