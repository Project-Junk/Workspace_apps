.class public Lcom/android/settings/location/LocationServicePreferenceController;
.super Lcom/android/settings/location/e;
.source "LocationServicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field static final a:Landroid/content/IntentFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field b:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Landroidx/preference/PreferenceCategory;

.field private f:Landroidx/preference/PreferenceCategory;

.field private final g:Lcom/android/settings/location/LocationSettings;

.field private final h:Lcom/android/settings/location/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.InjectedSettingChanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationServicePreferenceController;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/settings/location/b;

    invoke-direct {v0, p1}, Lcom/android/settings/location/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/LocationServicePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/e;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 68
    iput-object p2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->g:Lcom/android/settings/location/LocationSettings;

    .line 69
    iput-object p4, p0, Lcom/android/settings/location/LocationServicePreferenceController;->h:Lcom/android/settings/location/b;

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/LocationServicePreferenceController;)Lcom/android/settings/location/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->h:Lcom/android/settings/location/b;

    return-object p0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->h:Lcom/android/settings/location/b;

    invoke-virtual {p1}, Lcom/android/settings/location/b;->a()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/location/e;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "location_services"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->c:Landroidx/preference/PreferenceCategory;

    const-string v0, "location_services_managed_profile"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->f:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "location_services"

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/settings/location/LocationServicePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationServicePreferenceController$1;-><init>(Lcom/android/settings/location/LocationServicePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->b:Landroid/content/BroadcastReceiver;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->b:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/LocationServicePreferenceController;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 89
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 90
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1145
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->d:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    .line 1147
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->h:Lcom/android/settings/location/b;

    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->g:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Lcom/android/settings/location/LocationSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->e:Lcom/android/settings/location/LocationEnabler;

    .line 1149
    invoke-virtual {v2, p1}, Lcom/android/settings/location/LocationEnabler;->b(I)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 1147
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/location/b;->a(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    .line 96
    instance-of v6, v5, Lcom/android/settings/widget/RestrictedAppPreference;

    if-eqz v6, :cond_1

    .line 97
    check-cast v5, Lcom/android/settings/widget/RestrictedAppPreference;

    .line 2109
    iget-object v6, v5, Lcom/android/settings/widget/RestrictedAppPreference;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2112
    iget-object v6, v5, Lcom/android/settings/widget/RestrictedAppPreference;->a:Lcom/android/settingslib/i;

    iget-object v5, v5, Lcom/android/settings/widget/RestrictedAppPreference;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/settingslib/i;->a(Ljava/lang/String;I)V

    goto :goto_2

    .line 100
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 101
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/location/LocationServicePreferenceController;->c:Landroidx/preference/PreferenceCategory;

    invoke-static {v1, v3}, Lcom/android/settings/location/LocationSettings;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    move v1, v0

    goto :goto_1

    .line 104
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/location/LocationServicePreferenceController;->f:Landroidx/preference/PreferenceCategory;

    invoke-static {v2, v3}, Lcom/android/settings/location/LocationSettings;->a(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    move v2, v0

    goto :goto_1

    .line 109
    :cond_4
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method
