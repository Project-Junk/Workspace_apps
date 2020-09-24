.class public Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;
.super Lcom/android/settings/core/a;
.source "TopLevelBatteryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private final mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/b;

.field private mBatteryInfo:Lcom/android/settings/fuelgauge/d;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/android/settings/fuelgauge/b;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/fuelgauge/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/b;

    .line 41
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/b;

    new-instance p2, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$oIj8RyiLDOIMC0diWhXw0e-Uw6I;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$oIj8RyiLDOIMC0diWhXw0e-Uw6I;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    .line 1084
    iput-object p2, p1, Lcom/android/settings/fuelgauge/b;->c:Lcom/android/settings/fuelgauge/b$a;

    return-void
.end method

.method static getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/d;)Ljava/lang/CharSequence;
    .locals 5

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 83
    iget-boolean v1, p1, Lcom/android/settings/fuelgauge/d;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/settings/fuelgauge/d;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 84
    iget-object p0, p1, Lcom/android/settings/fuelgauge/d;->a:Ljava/lang/CharSequence;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p1, Lcom/android/settings/fuelgauge/d;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 86
    iget-object p0, p1, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v1, 0x7f12105a

    const/4 v2, 0x2

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/settings/fuelgauge/d;->g:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p1, p1, Lcom/android/settings/fuelgauge/d;->b:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/d;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/d;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$TopLevelBatteryPreferenceController(I)V
    .locals 3

    .line 42
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$AaRop5-K4suZhxoXqQRiCBqbjFs;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$TopLevelBatteryPreferenceController$AaRop5-K4suZhxoXqQRiCBqbjFs;-><init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1146
    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/fuelgauge/d;->a(Landroid/content/Context;Lcom/android/settings/fuelgauge/d$b;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

.method public synthetic lambda$null$0$TopLevelBatteryPreferenceController(Lcom/android/settings/fuelgauge/d;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryInfo:Lcom/android/settings/fuelgauge/d;

    .line 44
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/b;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/b;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->mBatteryBroadcastReceiver:Lcom/android/settings/fuelgauge/b;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/b;->b()V

    return-void
.end method
