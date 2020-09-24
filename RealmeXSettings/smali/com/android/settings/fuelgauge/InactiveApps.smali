.class public Lcom/android/settings/fuelgauge/InactiveApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InactiveApps.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final b:[Ljava/lang/CharSequence;

.field private static final c:[Ljava/lang/CharSequence;


# instance fields
.field protected a:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 47
    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "ACTIVE"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "WORKING_SET"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "FREQUENT"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "RARE"

    aput-object v6, v1, v5

    sput-object v1, Lcom/android/settings/fuelgauge/InactiveApps;->b:[Ljava/lang/CharSequence;

    .line 50
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/16 v1, 0xa

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x14

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1e

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x28

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/fuelgauge/InactiveApps;->c:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "NEVER"

    return-object p0

    :cond_1
    const-string p0, "RARE"

    return-object p0

    :cond_2
    const-string p0, "FREQUENT"

    return-object p0

    :cond_3
    const-string p0, "WORKING_SET"

    return-object p0

    :cond_4
    const-string p0, "ACTIVE"

    return-object p0

    :cond_5
    const-string p0, "EXEMPTED"

    return-object p0
.end method

.method private a(Landroidx/preference/ListPreference;)V
    .locals 6

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->a:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;)I

    move-result v1

    .line 121
    invoke-static {v1}, Lcom/android/settings/fuelgauge/InactiveApps;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 122
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v2, 0x7f121537

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa

    if-lt v1, v0, :cond_0

    const/16 v0, 0x28

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    :cond_1
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 86
    const-class v4, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 89
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 92
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 93
    new-instance v5, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v5, v4}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/android/settings/fuelgauge/InactiveApps;->b:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 98
    sget-object v2, Lcom/android/settings/fuelgauge/InactiveApps;->c:[Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0, v5}, Lcom/android/settings/fuelgauge/InactiveApps;->a(Landroidx/preference/ListPreference;)V

    .line 100
    invoke-virtual {v5, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f1500a6

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xee

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->a:Landroid/app/usage/UsageStatsManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/InactiveApps;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->a:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/app/usage/UsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;I)V

    .line 137
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/InactiveApps;->a(Landroidx/preference/ListPreference;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->a()V

    return-void
.end method
