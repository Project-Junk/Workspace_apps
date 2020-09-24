.class public Lcom/android/settings/notification/ZenAccessSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "ZenAccessSettings.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenAccessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    const-string v0, "ZenAccessSettings"

    .line 54
    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1201e9

    return p1

    :cond_0
    const p1, 0x7f1201ea

    return p1
.end method

.method private a()V
    .locals 9

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 106
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0093

    .line 107
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 108
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 117
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 124
    iget-object v5, p0, Lcom/android/settings/notification/ZenAccessSettings;->d:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    new-instance v2, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v5, p0, Lcom/android/settings/notification/ZenAccessSettings;->c:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v5}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 128
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 129
    iget-object v6, p0, Lcom/android/settings/notification/ZenAccessSettings;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 130
    new-instance v7, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v7, v5}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setKey(Ljava/lang/String;)V

    .line 132
    iget-object v8, p0, Lcom/android/settings/notification/ZenAccessSettings;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {v7, v6}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    invoke-virtual {v7, v4}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setEnabled(Z)V

    const v6, 0x7f121aba

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/ZenAccessSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 140
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenAccessSettings;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setSummary(I)V

    .line 142
    :goto_2
    new-instance v6, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$WaxexUsKHmM6oKp_LSY1kT1AiXY;

    invoke-direct {v6, p0, v5, v2}, Lcom/android/settings/notification/-$$Lambda$ZenAccessSettings$WaxexUsKHmM6oKp_LSY1kT1AiXY;-><init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v7, v6}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 154
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z
    .locals 7

    .line 143
    const-class v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getMetricsCategory()I

    move-result v6

    const v1, 0x7f120d1a

    const/4 v5, -0x1

    move-object v2, p1

    move-object v4, p0

    .line 143
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->a(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$WaxexUsKHmM6oKp_LSY1kT1AiXY(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenAccessSettings;->a(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->a()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15014c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->b:Landroid/content/Context;

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->c:Landroid/content/pm/PackageManager;

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->b:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings;->d:Landroid/app/NotificationManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$a;)V

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onResume()V

    .line 90
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->a()V

    return-void

    :cond_0
    const v0, 0x7f1207f9

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->a(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f121abb

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenAccessSettings;->a(I)V

    return-void
.end method
