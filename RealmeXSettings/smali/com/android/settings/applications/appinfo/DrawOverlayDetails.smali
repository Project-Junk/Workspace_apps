.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private q:Lcom/android/settings/applications/h;

.field private r:Landroid/app/AppOpsManager;

.field private s:Landroidx/preference/TwoStatePreference;

.field private t:Lcom/android/settings/applications/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState$a;)Ljava/lang/CharSequence;
    .locals 2

    .line 162
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/h$a;

    if-eqz v0, :cond_0

    .line 163
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/h$a;

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/d$a;

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lcom/android/settings/applications/h$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/d$a;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/h$a;-><init>(Lcom/android/settings/applications/d$a;)V

    move-object p1, v0

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Lcom/android/settings/applications/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/h;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/h;->c(Ljava/lang/String;I)Lcom/android/settings/applications/h$a;

    move-result-object p1

    .line 1175
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/applications/h$a;->a()Z

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
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->g:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->q:Lcom/android/settings/applications/h;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/h;->c(Ljava/lang/String;I)Lcom/android/settings/applications/h$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    invoke-virtual {v0}, Lcom/android/settings/applications/h$a;->a()Z

    move-result v0

    .line 143
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->s:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    iget-boolean v2, v2, Lcom/android/settings/applications/h$a;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    iget-boolean v2, v2, Lcom/android/settings/applications/h$a;->g:Z

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xdd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/android/settings/applications/h;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/h;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->q:Lcom/android/settings/applications/h;

    const-string v0, "appops"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->r:Landroid/app/AppOpsManager;

    .line 64
    invoke-static {p1}, Lcom/android/settings/m;->n(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iput-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->g:Landroid/content/pm/PackageInfo;

    return-void

    :cond_0
    const p1, 0x7f150095

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->s:Landroidx/preference/TwoStatePreference;

    .line 74
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->g:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const p2, 0x7f0d01b4

    const/4 p3, 0x0

    .line 84
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onDestroy()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->q:Lcom/android/settings/applications/h;

    invoke-virtual {v0}, Lcom/android/settings/applications/h;->d()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->s:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 103
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    invoke-virtual {p2}, Lcom/android/settings/applications/h$a;->a()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 104
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->t:Lcom/android/settings/applications/h$a;

    invoke-virtual {p1}, Lcom/android/settings/applications/h$a;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 1113
    iget-object v6, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 p2, 0x302

    goto :goto_0

    :cond_0
    const/16 p2, 0x303

    :goto_0
    move v4, p2

    .line 1124
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    .line 1126
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v3

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getMetricsCategory()I

    move-result v5

    const/4 v7, 0x0

    .line 1125
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 1114
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->r:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->b()Z

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
