.class public final Lcom/android/settings/location/g;
.super Lcom/android/settings/location/e;
.source "RecentLocationRequestPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settings/location/LocationSettings;

.field private final b:Lcom/android/settingslib/location/b;

.field private c:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/android/settingslib/location/b;

    invoke-direct {v0, p1}, Lcom/android/settingslib/location/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/g;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/location/b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/location/b;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/e;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 82
    iput-object p2, p0, Lcom/android/settings/location/g;->a:Lcom/android/settings/location/LocationSettings;

    .line 83
    iput-object p4, p0, Lcom/android/settings/location/g;->b:Lcom/android/settingslib/location/b;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/android/settingslib/widget/apppreference/AppPreference;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 132
    new-instance v0, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {v0, p0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/android/settingslib/location/b$a;)Lcom/android/settingslib/widget/apppreference/AppPreference;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 137
    invoke-static {p1}, Lcom/android/settings/location/g;->a(Landroid/content/Context;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object p1

    .line 138
    iget-object v0, p2, Lcom/android/settingslib/location/b$a;->f:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p2, Lcom/android/settingslib/location/b$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p2, Lcom/android/settingslib/location/b$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    new-instance v0, Lcom/android/settings/location/g$a;

    iget-object v1, p0, Lcom/android/settings/location/g;->a:Lcom/android/settings/location/LocationSettings;

    iget-object v2, p2, Lcom/android/settingslib/location/b$a;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settingslib/location/b$a;->b:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/location/g$a;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object p1
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 127
    iget-object p2, p0, Lcom/android/settings/location/g;->c:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/location/g;->e:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->a(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/location/e;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "recent_location_requests"

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/g;->c:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "recent_location_requests"

    return-object v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/android/settings/location/g;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 101
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/android/settings/location/g;->b:Lcom/android/settingslib/location/b;

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/settingslib/location/b;->b(Z)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    :goto_0
    if-ge v1, v3, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/settings/location/g;->c:Landroidx/preference/PreferenceCategory;

    .line 108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/location/b$a;

    invoke-direct {p0, p1, v4}, Lcom/android/settings/location/g;->a(Landroid/content/Context;Lcom/android/settingslib/location/b$a;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object v4

    .line 107
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/b$a;

    .line 113
    iget-object v2, p0, Lcom/android/settings/location/g;->c:Landroidx/preference/PreferenceCategory;

    .line 114
    invoke-direct {p0, p1, v1}, Lcom/android/settings/location/g;->a(Landroid/content/Context;Lcom/android/settingslib/location/b$a;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object v1

    .line 113
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_2
    return-void

    .line 118
    :cond_3
    invoke-static {p1}, Lcom/android/settings/location/g;->a(Landroid/content/Context;)Lcom/android/settingslib/widget/apppreference/AppPreference;

    move-result-object p1

    const v0, 0x7f120c25

    .line 119
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 120
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/location/g;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method
