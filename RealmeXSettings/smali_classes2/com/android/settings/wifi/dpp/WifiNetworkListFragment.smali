.class public Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiNetworkListFragment.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$b;
.implements Lcom/android/settingslib/wifi/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Lcom/android/settingslib/wifi/AccessPointPreference$b;

.field private d:Landroidx/preference/Preference;

.field private e:Landroidx/preference/Preference;

.field private f:Landroid/net/wifi/WifiManager;

.field private g:Lcom/android/settingslib/wifi/WifiTracker;

.field private h:Landroid/net/wifi/WifiManager$ActionListener;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/wifi/a;Lcom/android/settingslib/wifi/a;)I
    .locals 1

    .line 293
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private c(Lcom/android/settingslib/wifi/a;)Lcom/android/settingslib/wifi/AccessPointPreference;
    .locals 7

    .line 343
    new-instance v6, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->c:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    const v4, 0x7f080883

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZ)V

    return-object v6
.end method

.method private c()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->f:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/c;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$FQkBL2jsc5jbb_6WoN9ywiwkNNw;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$FQkBL2jsc5jbb_6WoN9ywiwkNNw;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    .line 289
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$nfN1gXs7TX3O1uO9y52XPNzpMhY;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$nfN1gXs7TX3O1uO9y52XPNzpMhY;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    .line 290
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$7VrWGvF8OUomoYvWiFrT23JOQWk;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$7VrWGvF8OUomoYvWiFrT23JOQWk;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 303
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/a;

    .line 309
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->c(Lcom/android/settingslib/wifi/a;)Lcom/android/settingslib/wifi/AccessPointPreference;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 311
    invoke-virtual {v3, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOrder(I)V

    .line 312
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->setEnabled(Z)V

    .line 7441
    iput-object p0, v2, Lcom/android/settingslib/wifi/a;->m:Lcom/android/settingslib/wifi/a$a;

    .line 315
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->b()V

    .line 316
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    move v1, v4

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->i:Z

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private synthetic d(Lcom/android/settingslib/wifi/a;)Lcom/android/settingslib/wifi/a;
    .locals 4

    .line 8332
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->g:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object v0

    .line 8764
    iget-object v1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 8334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/a;

    .line 8335
    invoke-virtual {v2, v1}, Lcom/android/settingslib/wifi/a;->b(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    return-object p1
.end method

.method private synthetic e(Lcom/android/settingslib/wifi/a;)Z
    .locals 1

    .line 10014
    iget p1, p1, Lcom/android/settingslib/wifi/a;->e:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic f(Lcom/android/settingslib/wifi/a;)V
    .locals 0

    .line 10382
    iget-object p0, p0, Lcom/android/settingslib/wifi/a;->n:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 196
    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$7VrWGvF8OUomoYvWiFrT23JOQWk(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;Lcom/android/settingslib/wifi/a;Lcom/android/settingslib/wifi/a;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a(Lcom/android/settingslib/wifi/a;Lcom/android/settingslib/wifi/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$FQkBL2jsc5jbb_6WoN9ywiwkNNw(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;Lcom/android/settingslib/wifi/a;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e(Lcom/android/settingslib/wifi/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$He2xlOrNuOKgCPaAXTieMntuqpo(Lcom/android/settingslib/wifi/a;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->f(Lcom/android/settingslib/wifi/a;)V

    return-void
.end method

.method public static synthetic lambda$nfN1gXs7TX3O1uO9y52XPNzpMhY(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;Lcom/android/settingslib/wifi/a;)Lcom/android/settingslib/wifi/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d(Lcom/android/settingslib/wifi/a;)Lcom/android/settingslib/wifi/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->c()V

    return-void

    .line 3275
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 3276
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/android/settingslib/wifi/a;)V
    .locals 2

    const-string v0, "WifiNetworkListFragment"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$He2xlOrNuOKgCPaAXTieMntuqpo;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiNetworkListFragment$He2xlOrNuOKgCPaAXTieMntuqpo;-><init>(Lcom/android/settingslib/wifi/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/settingslib/wifi/a;)V
    .locals 0

    .line 3382
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->n:Ljava/lang/Object;

    .line 204
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 4314
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->c()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method public n_()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->c()V

    return-void
.end method

.method public o_()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 99
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->g:Lcom/android/settingslib/wifi/WifiTracker;

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->g:Lcom/android/settingslib/wifi/WifiTracker;

    .line 2428
    iget-object p1, p1, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 101
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->f:Landroid/net/wifi/WifiManager;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "test"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->i:Z

    .line 108
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->h:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "wifi_config_key"

    .line 3248
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 3250
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->f:Landroid/net/wifi/WifiManager;

    iget-object p3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->h:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->g:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    instance-of v0, p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid context type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150145

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->addPreferencesFromResource(I)V

    const-string p1, "access_points"

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->b:Landroidx/preference/PreferenceCategory;

    .line 145
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e:Landroidx/preference/Preference;

    .line 146
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e:Landroidx/preference/Preference;

    const p2, 0x7f080883

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e:Landroidx/preference/Preference;

    const-string p2, "fake_key"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e:Landroidx/preference/Preference;

    const-string p2, "fake network"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d:Landroidx/preference/Preference;

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d:Landroidx/preference/Preference;

    const p2, 0x7f0806a1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d:Landroidx/preference/Preference;

    const p2, 0x7f121918

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 154
    new-instance p1, Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$b;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->c:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

    .line 92
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 209
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 210
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 5141
    iget-object p1, p1, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5764
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v7, 0x0

    .line 221
    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/b;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

    if-eqz v0, :cond_4

    .line 226
    invoke-interface {v0, p1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;->a(Lcom/android/settings/wifi/dpp/b;)V

    goto :goto_0

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid access point"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->d:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 6266
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const v2, 0x7f121918

    .line 7063
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 6267
    const-class v0, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 6268
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 6269
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 6270
    invoke-virtual {p1, p0, v1}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 6271
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->e:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 231
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->a:Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;

    if-eqz p1, :cond_4

    .line 232
    new-instance v0, Lcom/android/settings/wifi/dpp/b;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v3, "WPA"

    const-string v4, "fake network"

    const-string v5, "password"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/dpp/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-interface {p1, v0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;->a(Lcom/android/settings/wifi/dpp/b;)V

    :cond_4
    :goto_0
    return v1

    .line 242
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
