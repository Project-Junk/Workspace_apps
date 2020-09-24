.class public final Lcom/android/settings/location/h;
.super Lcom/android/settings/location/e;
.source "RecentLocationRequestSeeAllPreferenceController.java"


# instance fields
.field a:Z

.field b:Landroidx/preference/Preference;

.field private final c:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

.field private f:Landroidx/preference/PreferenceCategory;

.field private g:Lcom/android/settingslib/location/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;)V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/settingslib/location/b;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/h;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;Lcom/android/settingslib/location/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/e;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/location/h;->a:Z

    .line 56
    iput-object p3, p0, Lcom/android/settings/location/h;->c:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    .line 57
    iput-object p4, p0, Lcom/android/settings/location/h;->g:Lcom/android/settingslib/location/b;

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 67
    iget-object p2, p0, Lcom/android/settings/location/h;->f:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/location/h;->e:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->a(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/location/e;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "all_recent_location_requests"

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/h;->f:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "all_recent_location_requests"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/android/settings/location/h;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 80
    iput-object p1, p0, Lcom/android/settings/location/h;->b:Landroidx/preference/Preference;

    .line 81
    iget-object v0, p0, Lcom/android/settings/location/h;->g:Lcom/android/settingslib/location/b;

    iget-boolean v1, p0, Lcom/android/settings/location/h;->a:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/location/b;->b(Z)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance p1, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v0, p0, Lcom/android/settings/location/h;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120c25

    .line 86
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/location/h;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/b$a;

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1100
    new-instance v3, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {v3, v2}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 1101
    iget-object v2, v1, Lcom/android/settingslib/location/b$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v2, v1, Lcom/android/settingslib/location/b$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    iget-object v2, v1, Lcom/android/settingslib/location/b$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1104
    new-instance v2, Lcom/android/settings/location/g$a;

    iget-object v4, p0, Lcom/android/settings/location/h;->c:Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    iget-object v5, v1, Lcom/android/settingslib/location/b$a;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/settingslib/location/b$a;->b:Landroid/os/UserHandle;

    invoke-direct {v2, v4, v5, v1}, Lcom/android/settings/location/g$a;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v2}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/location/h;->f:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
