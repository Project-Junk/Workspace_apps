.class public Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field final a:Landroid/net/wifi/WifiManager;

.field b:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/wifi/tether/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:[Ljava/lang/String;

.field private final f:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;B)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string p3, "connectivity"

    .line 68
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    const-string p3, "wifi"

    .line 69
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->a:Landroid/net/wifi/WifiManager;

    .line 70
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->e:[Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->f:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1124
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/tether/c;

    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->a:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {p3, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    invoke-direct {p1, p2, p3}, Lcom/android/settings/wifi/tether/c;-><init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/c$a;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->c:Lcom/android/settings/wifi/tether/c;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->g:I

    return p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "wifi_tether"

    .line 90
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->e:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->c:Lcom/android/settings/wifi/tether/c;

    if-eqz v0, :cond_0

    .line 2045
    iget-object v1, v0, Lcom/android/settings/wifi/tether/c;->a:Landroid/net/wifi/WifiManager;

    iget-object v2, v0, Lcom/android/settings/wifi/tether/c;->c:Landroid/net/wifi/WifiManager$SoftApCallback;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->c:Lcom/android/settings/wifi/tether/c;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v1, v0, Lcom/android/settings/wifi/tether/c;->a:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/c;->c:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    :cond_0
    return-void
.end method
