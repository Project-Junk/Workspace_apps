.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field a:Lcom/android/settings/wifi/tether/WifiTetherSettings$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field private d:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field private e:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field private f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

.field private g:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private h:Landroid/net/wifi/WifiManager;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->b:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.COUNTRY_CODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 87
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string v1, "wifi_tether_auto_turn_off"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 1

    .line 5246
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 5247
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a()V

    .line 5248
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 5249
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a()V

    .line 5250
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 5251
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a()V

    .line 5252
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 5253
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->h:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->i:Z

    return p0
.end method

.method static synthetic d(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 6241
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->i:Z

    .line 6242
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->c:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->b()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiTetherSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$Dnar2SnqiXferWIHdHmWwpMlL-Y;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/-$$Lambda$Dnar2SnqiXferWIHdHmWwpMlL-Y;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f6

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150149

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->j:Z

    if-eqz p1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 130
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/f;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/f;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->c:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->c:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 134
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "wifi"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->h:Landroid/net/wifi/WifiManager;

    .line 113
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$a;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings$a;

    .line 115
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->d:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 116
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->g:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 117
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->e:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 118
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1248
    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->o:Z

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->j:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 139
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStart()V

    .line 140
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->j:Z

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->n:Landroid/widget/TextView;

    const v1, 0x7f121697

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings$a;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 155
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStop()V

    .line 156
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->a:Lcom/android/settings/wifi/tether/WifiTetherSettings$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onTetherConfigUpdated()V
    .locals 5

    .line 3223
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3224
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->g:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 4093
    iget v1, v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->a:I

    .line 3226
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->d:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 4106
    iget-object v2, v2, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->a:Ljava/lang/String;

    .line 3226
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3227
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 3228
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->e:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3229
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 3230
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 4174
    iget v1, v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a:I

    .line 3230
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3232
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3234
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->e:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->b(I)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 4178
    iget-boolean v1, v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->b:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->g:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 5104
    iget-boolean v1, v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->b:Z

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 199
    invoke-virtual {v3}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->b()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 200
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a(Landroid/net/wifi/WifiConfiguration;)V

    move v2, v4

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    const-string v1, "TetheringSettings"

    const-string v3, "Wifi AP config changed while enabled, stop and restart"

    .line 211
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-boolean v4, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->i:Z

    .line 214
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->c:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->a()V

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->h:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    if-eqz v2, :cond_4

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->f:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->a()V

    :cond_4
    return-void
.end method
