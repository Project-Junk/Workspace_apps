.class public final Lcom/android/settings/fuelgauge/a;
.super Lcom/android/settingslib/core/a;
.source "BackgroundActivityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:Landroid/app/admin/DevicePolicyManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Landroid/app/AppOpsManager;

.field private final d:Landroid/os/UserManager;

.field private final e:I

.field private f:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private g:Ljava/lang/String;

.field private h:Lcom/android/settingslib/j/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V
    .locals 6

    .line 61
    invoke-static {p1}, Lcom/android/settingslib/j/c;->a(Landroid/content/Context;)Lcom/android/settingslib/j/c;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/a;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/j/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/j/c;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p5, p0, Lcom/android/settings/fuelgauge/a;->h:Lcom/android/settingslib/j/c;

    const-string/jumbo p5, "user"

    .line 69
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/a;->d:Landroid/os/UserManager;

    const-string p5, "device_policy"

    .line 70
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/a;->a:Landroid/app/admin/DevicePolicyManager;

    const-string p5, "appops"

    .line 71
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/AppOpsManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/a;->c:Landroid/app/AppOpsManager;

    .line 72
    iput p3, p0, Lcom/android/settings/fuelgauge/a;->e:I

    .line 73
    iput-object p2, p0, Lcom/android/settings/fuelgauge/a;->f:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 74
    iput-object p4, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/a;->b:Lcom/android/settings/fuelgauge/g;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/settings/fuelgauge/a;->h:Lcom/android/settingslib/j/c;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1202aa

    .line 121
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/a;->c:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/a;->e:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f1202a9

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const v0, 0x7f12125f

    goto :goto_1

    :cond_3
    const v0, 0x7f12125e

    .line 131
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "background_activity"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 109
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_activity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/android/settings/fuelgauge/a;->c:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/a;->e:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1138
    :goto_0
    new-instance p1, Lcom/android/settings/fuelgauge/batterytip/c$a;

    invoke-direct {p1}, Lcom/android/settings/fuelgauge/batterytip/c$a;-><init>()V

    iget v2, p0, Lcom/android/settings/fuelgauge/a;->e:I

    .line 2128
    iput v2, p1, Lcom/android/settings/fuelgauge/batterytip/c$a;->d:I

    .line 1139
    iget-object v2, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    .line 3118
    iput-object v2, p1, Lcom/android/settings/fuelgauge/batterytip/c$a;->b:Ljava/lang/String;

    .line 1141
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/c$a;->a()Lcom/android/settings/fuelgauge/batterytip/c;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 1142
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/c/j;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/batterytip/c/j;-><init>(Lcom/android/settings/fuelgauge/batterytip/c;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/c/g;

    invoke-direct {v1, p1}, Lcom/android/settings/fuelgauge/batterytip/c/g;-><init>(Lcom/android/settings/fuelgauge/batterytip/c;)V

    .line 1146
    :goto_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/a;->f:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 1147
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p1

    .line 1146
    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->a(Lcom/android/settings/fuelgauge/batterytip/c/c;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object p1

    .line 1148
    iget-object v1, p0, Lcom/android/settings/fuelgauge/a;->f:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1149
    iget-object v1, p0, Lcom/android/settings/fuelgauge/a;->f:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BgActivityPrefContr"

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 81
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/a;->c:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/a;->e:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/settings/fuelgauge/a;->h:Lcom/android/settingslib/j/c;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/j/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/android/settings/fuelgauge/a;->d:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/a;->a:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/a;->g:Ljava/lang/String;

    .line 89
    invoke-static {v0, v1, v2}, Lcom/android/settings/m;->a(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 94
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/a;->a(Landroidx/preference/Preference;)V

    return-void
.end method
