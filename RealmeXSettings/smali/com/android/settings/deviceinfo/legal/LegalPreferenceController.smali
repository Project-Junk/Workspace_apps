.class public abstract Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;
.super Lcom/android/settings/core/a;
.source "LegalPreferenceController.java"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private findMatchingSpecificActivity()Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 73
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 74
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method private replacePreferenceIntent()V
    .locals 5

    .line 85
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->findMatchingSpecificActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->getAvailabilityStatus()I

    move-result p1

    if-nez p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->replacePreferenceIntent()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/legal/LegalPreferenceController;->findMatchingSpecificActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method protected abstract getIntent()Landroid/content/Intent;
.end method
