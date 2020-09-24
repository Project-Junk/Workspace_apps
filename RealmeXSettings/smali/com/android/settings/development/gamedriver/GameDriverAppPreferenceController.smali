.class public Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;
.super Lcom/android/settings/core/a;
.source "GameDriverAppPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/gamedriver/a$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;
    }
.end annotation


# instance fields
.field private final appInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDevOptInApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevOptOutApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevPrereleaseOptInApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryList:[Ljava/lang/CharSequence;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mPreferenceDefault:Ljava/lang/String;

.field private final mPreferenceGameDriver:Ljava/lang/String;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mPreferencePrereleaseDriver:Ljava/lang/String;

.field private final mPreferenceSystem:Ljava/lang/String;

.field private final mPreferenceTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    new-instance p2, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$1;-><init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->appInfoComparator:Ljava/util/Comparator;

    .line 83
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    new-instance p2, Lcom/android/settings/development/gamedriver/a;

    new-instance v0, Landroid/os/Handler;

    .line 86
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p2, v0, p0}, Lcom/android/settings/development/gamedriver/a;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/a$a;)V

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/a;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030097

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    const v0, 0x7f120a33

    .line 90
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceTitle:Ljava/lang/String;

    const v0, 0x7f120a2f

    .line 91
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    const v0, 0x7f120a30

    .line 93
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    const v0, 0x7f120a31

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    const v0, 0x7f120a32

    .line 96
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getAppInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mAppInfos:Ljava/util/List;

    .line 102
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "game_driver_opt_in_apps"

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    .line 104
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "game_driver_prerelease_opt_in_apps"

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    .line 106
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "game_driver_opt_out_apps"

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    return-void
.end method

.method private getAppInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 212
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 213
    new-instance v3, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;-><init>(Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->appInfoComparator:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getGlobalSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 226
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 229
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p1, ""

    .line 230
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p2
.end method


# virtual methods
.method protected createListPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/ListPreference;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 246
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    invoke-direct {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a()V

    .line 249
    invoke-virtual {v0, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setKey(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mEntryList:[Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 264
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    :goto_0
    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 125
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;

    .line 127
    iget-object v2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v3, v1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController$a;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->createListPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/ListPreference;

    move-result-object v1

    .line 127
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "game_driver_all_apps"

    .line 113
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onGameDriverContentChanged()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 149
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceSystem:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 172
    :goto_0
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptInApps:Ljava/util/Set;

    const-string v0, ","

    .line 178
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "game_driver_opt_in_apps"

    .line 177
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevPrereleaseOptInApps:Ljava/util/Set;

    .line 181
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "game_driver_prerelease_opt_in_apps"

    .line 179
    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 182
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mDevOptOutApps:Ljava/util/Set;

    .line 183
    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "game_driver_opt_out_apps"

    .line 182
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/a;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/a;->a(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/a;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 1055
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/development/gamedriver/GameDriverAppPreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
