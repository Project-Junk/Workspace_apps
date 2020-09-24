.class public final Lcom/android/settings/wifi/f;
.super Lcom/android/settingslib/core/a;
.source "WifiConnectionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/wifi/f$a;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroidx/preference/PreferenceGroup;

.field private e:Lcom/android/settingslib/wifi/WifiTracker;

.field private f:Lcom/android/settingslib/wifi/AccessPointPreference;

.field private g:Lcom/android/settingslib/wifi/AccessPointPreference$b;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/f$a;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p3, p0, Lcom/android/settings/wifi/f;->a:Lcom/android/settings/wifi/f$a;

    .line 81
    iput-object p4, p0, Lcom/android/settings/wifi/f;->c:Ljava/lang/String;

    .line 82
    invoke-static {p1, p0, p2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/f;->e:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 p2, 0x0

    .line 84
    iput p2, p0, Lcom/android/settings/wifi/f;->h:I

    const/16 p2, 0x2ea

    .line 85
    iput p2, p0, Lcom/android/settings/wifi/f;->i:I

    .line 86
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$b;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/f;->g:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    return-void
.end method

.method private a(Lcom/android/settingslib/wifi/a;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/f;->d:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/f;->b:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 125
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/f;->g:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    const v5, 0x7f080883

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 127
    iget-object p1, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    const-string v0, "active_wifi_connection"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->b()V

    .line 129
    iget-object p1, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    iget v0, p0, Lcom/android/settings/wifi/f;->h:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOrder(I)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$f$NH6lVsGkZEut7k_SRi4ldAIxjY4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$f$NH6lVsGkZEut7k_SRi4ldAIxjY4;-><init>(Lcom/android/settings/wifi/f;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/wifi/f;->d:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 3

    .line 132
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 4141
    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/wifi/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f121068

    .line 5063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 135
    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/wifi/f;->i:I

    .line 138
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method private c()Lcom/android/settingslib/wifi/a;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/f;->e:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/a;

    .line 109
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/f;->e:Lcom/android/settingslib/wifi/WifiTracker;

    .line 2446
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/wifi/f;->c()Lcom/android/settingslib/wifi/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/f;->a(Lcom/android/settingslib/wifi/a;)V

    goto :goto_2

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    if-eqz v1, :cond_3

    .line 3141
    iget-object v1, v1, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 154
    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/f;->f:Lcom/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->b()V

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/f;->a(Lcom/android/settingslib/wifi/a;)V

    .line 160
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/f;->a:Lcom/android/settings/wifi/f$a;

    invoke-interface {v0}, Lcom/android/settings/wifi/f$a;->onChildrenUpdated()V

    return-void
.end method

.method public static synthetic lambda$NH6lVsGkZEut7k_SRi4ldAIxjY4(Lcom/android/settings/wifi/f;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/f;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/android/settings/wifi/f;->d()V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/f;->d:Landroidx/preference/PreferenceGroup;

    .line 103
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/f;->b:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/f;->d()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "active_wifi_connection"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/f;->e:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1446
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/wifi/f;->c()Lcom/android/settingslib/wifi/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n_()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/android/settings/wifi/f;->d()V

    return-void
.end method

.method public final o_()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/f;->d()V

    return-void
.end method
