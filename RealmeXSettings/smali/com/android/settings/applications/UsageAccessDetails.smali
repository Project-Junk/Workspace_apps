.class public Lcom/android/settings/applications/UsageAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private q:Lcom/android/settings/applications/k;

.field private r:Landroid/app/AppOpsManager;

.field private s:Landroidx/preference/TwoStatePreference;

.field private t:Landroidx/preference/Preference;

.field private u:Landroid/content/Intent;

.field private v:Lcom/android/settings/applications/k$a;

.field private w:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final b()Z
    .locals 5

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->a()Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->g:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return v1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->q:Lcom/android/settings/applications/k;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/k;->c(Ljava/lang/String;I)Lcom/android/settings/applications/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    invoke-virtual {v0}, Lcom/android/settings/applications/k$a;->a()Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    iget-boolean v1, v1, Lcom/android/settings/applications/k$a;->e:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->m:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->u:Landroid/content/Intent;

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->h:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 151
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->u:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_2

    const-string v0, "android.settings.metadata.USAGE_ACCESS_REASON"

    .line 154
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    .line 156
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/settings/applications/k;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/k;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->q:Lcom/android/settings/applications/k;

    const-string v0, "appops"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->r:Landroid/app/AppOpsManager;

    .line 69
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->w:Landroid/app/admin/DevicePolicyManager;

    .line 1176
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez p1, :cond_0

    .line 1177
    const-class p1, Lcom/coloros/settings/adaptor/UsageAccessDetailsAdaptor;

    invoke-static {p1}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 1178
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {p1, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 1180
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast p1, Lcom/coloros/settings/adaptor/UsageAccessDetailsAdaptor;

    const v0, 0x7f15001d

    .line 71
    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/UsageAccessDetailsAdaptor;->getPreferenceResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    const-string p1, "app_ops_settings_description"

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->t:Landroidx/preference/Preference;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const v0, 0x7f12179a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setTitle(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f121016

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->t:Landroidx/preference/Preference;

    const v0, 0x7f12179b

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->i:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->u:Landroid/content/Intent;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->s:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 94
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    invoke-virtual {p2}, Lcom/android/settings/applications/k$a;->a()Z

    move-result p2

    if-eq p1, p2, :cond_3

    .line 95
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    invoke-virtual {p1}, Lcom/android/settings/applications/k$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->w:Landroid/app/admin/DevicePolicyManager;

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "com.android.internal.R.drawable.ic_dialog_alert_material"

    .line 97
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1040014

    .line 98
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f121aa1

    .line 99
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120f1b

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1, p2, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->v:Lcom/android/settings/applications/k$a;

    invoke-virtual {p1}, Lcom/android/settings/applications/k$a;->a()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 2112
    iget-object v6, p0, Lcom/android/settings/applications/UsageAccessDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/16 p2, 0x30f

    goto :goto_0

    :cond_1
    const/16 p2, 0x310

    :goto_0
    move v4, p2

    .line 2122
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    .line 2124
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v3

    .line 2126
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getMetricsCategory()I

    move-result v5

    const/4 v7, 0x0

    .line 2123
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 2113
    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->r:Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/android/settings/applications/UsageAccessDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/UsageAccessDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->b()Z

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
