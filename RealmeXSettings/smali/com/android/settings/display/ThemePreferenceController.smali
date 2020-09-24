.class public Lcom/android/settings/display/ThemePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ThemePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Lcom/android/settingslib/core/instrumentation/d;

.field private final b:Landroid/content/om/IOverlayManager;

.field private final c:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "overlay"

    .line 54
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ThemePreferenceController;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/android/settings/display/ThemePreferenceController;->b:Landroid/content/om/IOverlayManager;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/display/ThemePreferenceController;->c:Landroid/content/pm/PackageManager;

    .line 62
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ThemePreferenceController;->a:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/display/ThemePreferenceController;->a(Z)[Ljava/lang/String;

    move-result-object v0

    .line 148
    array-length v1, v0

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(Landroid/content/om/OverlayInfo;)Z
    .locals 2

    .line 126
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    const-string v1, "android.theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->c:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    return v1
.end method

.method private a(Z)[Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->b:Landroid/content/om/IOverlayManager;

    const-string v1, "android"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 159
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    invoke-direct {p0, v5}, Lcom/android/settings/display/ThemePreferenceController;->a(Landroid/content/om/OverlayInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 161
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/om/OverlayInfo;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    aput-object v0, p1, v3

    return-object p1

    .line 163
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    iget-object v5, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 173
    new-array p1, v3, [Ljava/lang/String;

    return-object p1

    .line 175
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "theme"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 72
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "theme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/settings/display/ThemePreferenceController;->a:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/display/ThemePreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x330

    new-array v3, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    return v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->b:Landroid/content/om/IOverlayManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/display/ThemePreferenceController;->a(Z)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/android/settings/display/ThemePreferenceController;->a()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 118
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/display/ThemePreferenceController;->b:Landroid/content/om/IOverlayManager;

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {p1, p2, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 80
    check-cast p1, Landroidx/preference/ListPreference;

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/android/settings/display/ThemePreferenceController;->a(Z)[Ljava/lang/String;

    move-result-object v1

    .line 82
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/CharSequence;

    move v3, v0

    .line 83
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/display/ThemePreferenceController;->c:Landroid/content/pm/PackageManager;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/display/ThemePreferenceController;->c:Landroid/content/pm/PackageManager;

    .line 86
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :catch_0
    aget-object v4, v1, v3

    aput-object v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/display/ThemePreferenceController;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 96
    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 97
    aget-object v5, v1, v0

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    aget-object v4, v2, v0

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 103
    :cond_2
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12074b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    :cond_3
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
