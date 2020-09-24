.class public Lcom/android/settings/wifi/ChangeWifiStateDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ChangeWifiStateDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private q:Lcom/android/settings/wifi/a;

.field private r:Landroid/app/AppOpsManager;

.field private s:Landroidx/preference/TwoStatePreference;

.field private t:Lcom/android/settings/wifi/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;
    .locals 2

    .line 119
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/wifi/a$a;

    if-eqz v0, :cond_0

    .line 120
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/a$a;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/d$a;

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lcom/android/settings/wifi/a$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/d$a;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/a$a;-><init>(Lcom/android/settings/applications/d$a;)V

    move-object p1, v0

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/wifi/a;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/wifi/a;->c(Ljava/lang/String;I)Lcom/android/settings/wifi/a$a;

    move-result-object p1

    .line 1131
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/a$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1201e9

    goto :goto_1

    :cond_2
    const p1, 0x7f1201ea

    :goto_1
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
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->g:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->q:Lcom/android/settings/wifi/a;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/a;->c(Ljava/lang/String;I)Lcom/android/settings/wifi/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->t:Lcom/android/settings/wifi/a$a;

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->t:Lcom/android/settings/wifi/a$a;

    invoke-virtual {v0}, Lcom/android/settings/wifi/a$a;->a()Z

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->s:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->t:Lcom/android/settings/wifi/a$a;

    iget-boolean v1, v1, Lcom/android/settings/wifi/a$a;->e:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x152

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/settings/wifi/a;

    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/wifi/a;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->q:Lcom/android/settings/wifi/a;

    const-string v0, "appops"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->r:Landroid/app/AppOpsManager;

    const p1, 0x7f150030

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->s:Landroidx/preference/TwoStatePreference;

    .line 59
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->s:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f1204d6

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->s:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 78
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->t:Lcom/android/settings/wifi/a$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->t:Lcom/android/settings/wifi/a$a;

    .line 79
    invoke-virtual {p2}, Lcom/android/settings/wifi/a$a;->a()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 80
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->t:Lcom/android/settings/wifi/a$a;

    invoke-virtual {p1}, Lcom/android/settings/wifi/a$a;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 1089
    iget-object p2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 v2, 0x306

    goto :goto_0

    :cond_0
    const/16 v2, 0x307

    .line 1098
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1090
    iget-object p2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->r:Landroid/app/AppOpsManager;

    const/16 v2, 0x47

    iget-object v3, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->b()Z

    :cond_2
    return v0

    :cond_3
    return v1
.end method
