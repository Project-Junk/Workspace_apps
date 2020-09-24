.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$a;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;


# instance fields
.field a:Lcom/android/settingslib/widget/LayoutPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/coloros/settingslib/applications/ApplicationsState;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/coloros/settingslib/applications/ApplicationsState$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private g:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field private h:Lcom/android/settings/fuelgauge/a;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/c;Ljava/lang/String;)V
    .locals 6

    .line 159
    invoke-static {p0}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->a(Landroid/app/Activity;Lcom/android/settings/fuelgauge/g;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/c;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V
    .locals 5

    .line 165
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "extra_package_name"

    .line 167
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 168
    invoke-static {v2}, Lcom/android/settings/m;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_power_usage_percent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "extra_uid"

    .line 170
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 172
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Cannot find package: "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "AdvancedPowerDetail"

    invoke-static {v2, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :goto_0
    new-instance p2, Lcom/android/settings/core/f;

    invoke-direct {p2, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 176
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p2, 0x0

    const v1, 0x7f1202e7

    .line 3063
    invoke-virtual {p0, p2, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 179
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/android/settings/fuelgauge/g;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/c;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 109
    invoke-virtual {p3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 111
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 112
    iget-object v0, p4, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    .line 113
    iget-object v1, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 114
    iget-object v2, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p1, v4, v1}, Lcom/android/settings/fuelgauge/g;->a(ILandroid/os/BatteryStats$Uid;)J

    move-result-wide v3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    :goto_1
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 118
    invoke-virtual {p1, v2, v1}, Lcom/android/settings/fuelgauge/g;->a(ILandroid/os/BatteryStats$Uid;)J

    move-result-wide v1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x0

    .line 121
    :goto_2
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    .line 1234
    iget-object p1, p4, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    const-string v5, "extra_label"

    .line 123
    invoke-virtual {p3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget p1, p4, Lcom/android/settings/fuelgauge/c;->i:I

    const-string p4, "extra_icon_id"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object p1, v6

    goto :goto_3

    .line 128
    :cond_3
    iget-object p1, p4, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p4, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    aget-object p1, p1, v5

    :goto_3
    const-string p4, "extra_package_name"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    const-string p4, "extra_uid"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_background_time"

    .line 134
    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_foreground_time"

    .line 135
    invoke-virtual {p3, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "extra_power_usage_percent"

    .line 136
    invoke-virtual {p3, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-wide p4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    double-to-int p1, p4

    const-string p4, "extra_power_usage_amount"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 140
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    const p1, 0x7f1202e7

    .line 2063
    invoke-virtual {p0, v6, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 142
    invoke-virtual {p0, p3}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 143
    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    .line 2150
    iget-object p2, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object p3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne p2, p3, :cond_5

    .line 2151
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    goto :goto_4

    .line 2153
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 144
    :goto_4
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AdvancedPowerDetail"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_package_name"

    .line 279
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    new-instance v1, Lcom/android/settings/fuelgauge/a;

    invoke-direct {v1, p1, p0, v2, v8}, Lcom/android/settings/fuelgauge/a;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->h:Lcom/android/settings/fuelgauge/a;

    .line 283
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->h:Lcom/android/settings/fuelgauge/a;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance p1, Lcom/android/settings/fuelgauge/e;

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v1, p0, v8}, Lcom/android/settings/fuelgauge/e;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 284
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState;II)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->g:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 289
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->g:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->g:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500f2

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 296
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->g:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/app/Activity;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->d:Lcom/android/settings/fuelgauge/g;

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->h:Lcom/android/settings/fuelgauge/a;

    .line 312
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 311
    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/a;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->i:Ljava/lang/String;

    const-string p1, "app_usage_foreground"

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->e:Landroidx/preference/Preference;

    const-string p1, "app_usage_background"

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->f:Landroidx/preference/Preference;

    const-string p1, "header_view"

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->a:Lcom/android/settingslib/widget/LayoutPreference;

    .line 200
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .line 207
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 3215
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->a:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a0260

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    .line 3216
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 3217
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 3219
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v0

    .line 3220
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object v0

    const/4 v3, 0x0

    .line 3221
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object v0

    .line 3224
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    .line 3225
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4163
    iput-object v4, v0, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    const-string v4, "extra_icon_id"

    .line 3227
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 3229
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    goto :goto_0

    .line 3231
    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    goto :goto_0

    .line 3234
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->b:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v4}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 3235
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/b;->b(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/widget/b;

    .line 3236
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/widget/b;

    .line 3237
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    .line 3238
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->c:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    .line 4224
    iput-boolean v2, v0, Lcom/android/settings/widget/b;->h:Z

    :goto_0
    const/4 v2, 0x1

    .line 3241
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    .line 4246
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 4247
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "extra_foreground_time"

    .line 4249
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "extra_background_time"

    .line 4250
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4251
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->e:Landroidx/preference/Preference;

    const v8, 0x7f12034e

    .line 4252
    invoke-virtual {p0, v8}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/CharSequence;

    long-to-double v4, v4

    .line 4253
    invoke-static {v1, v4, v5}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v9, v3

    .line 4252
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 4251
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4254
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->f:Landroidx/preference/Preference;

    const v4, 0x7f1202d2

    .line 4255
    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/CharSequence;

    long-to-double v5, v6

    .line 4256
    invoke-static {v1, v5, v6}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v2, v3

    .line 4255
    invoke-static {v4, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4254
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
