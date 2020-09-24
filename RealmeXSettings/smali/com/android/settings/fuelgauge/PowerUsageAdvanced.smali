.class public Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field a:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private e:Lcom/android/settings/fuelgauge/g;

.field private f:Lcom/android/settings/fuelgauge/i;

.field private g:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "plugged"

    const/4 v1, -0x1

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 165
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->a:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->a()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AdvancedBatteryUsage"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v7, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/SettingsActivity;

    const-string v3, "app_list"

    move-object v1, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->g:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    .line 139
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->g:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected final a(I)V
    .locals 19

    move-object/from16 v0, p0

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->a:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->a(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 151
    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b(Landroid/content/Context;)V

    .line 153
    iget-object v1, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->g:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->c:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    .line 1171
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1175
    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->b:Lcom/android/internal/os/BatteryStatsHelper;

    .line 1176
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    const v5, 0x7f121061

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->setTitle(I)V

    .line 1178
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    .line 1179
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v5

    const-string v6, "screen.full"

    .line 1180
    invoke-virtual {v4, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v4, 0x0

    if-eqz v5, :cond_1

    .line 1183
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    .line 1185
    :goto_0
    iget-object v8, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    .line 1382
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    .line 1383
    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_3

    .line 1385
    invoke-virtual {v8, v10}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v11

    .line 1386
    invoke-virtual {v11}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1389
    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1186
    :cond_3
    iget-object v8, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v4}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_13

    .line 1190
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v6

    .line 1189
    invoke-virtual {v1, v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v3, :cond_4

    const-wide/16 v8, 0x0

    goto :goto_2

    .line 1191
    :cond_4
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    .line 1192
    invoke-virtual {v3, v6}, Lcom/android/settings/fuelgauge/g;->a(Ljava/util/List;)D

    move-result-wide v8

    :goto_2
    move-wide v15, v8

    .line 1193
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    invoke-virtual {v3, v6}, Lcom/android/settings/fuelgauge/g;->b(Ljava/util/List;)V

    .line 1195
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    move v14, v4

    move/from16 v17, v14

    :goto_3
    if-ge v14, v3, :cond_14

    .line 1197
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcom/android/internal/os/BatterySipper;

    .line 1198
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v10

    .line 1200
    iget-wide v8, v12, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object v7, v12

    move-wide v12, v15

    move/from16 v18, v14

    move v14, v5

    invoke-static/range {v8 .. v14}, Lcom/android/settings/fuelgauge/g;->a(DDDI)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v8

    double-to-int v10, v10

    if-lez v10, :cond_12

    .line 2355
    iget-object v10, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v11, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v10, v11, :cond_6

    iget-object v10, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v11, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v10, v11, :cond_6

    iget-object v10, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    .line 2357
    invoke-virtual {v10, v7}, Lcom/android/settings/fuelgauge/g;->b(Lcom/android/internal/os/BatterySipper;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    move v10, v4

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v10, 0x1

    :goto_5
    if-nez v10, :cond_12

    .line 1209
    new-instance v10, Landroid/os/UserHandle;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 1210
    new-instance v11, Lcom/android/settings/fuelgauge/c;

    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->f:Lcom/android/settings/SettingsActivity;

    iget-object v13, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->h:Landroid/os/Handler;

    iget-object v14, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->e:Landroid/os/UserManager;

    invoke-direct {v11, v12, v13, v14, v7}, Lcom/android/settings/fuelgauge/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 1212
    iget-object v12, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->e:Landroid/os/UserManager;

    .line 3227
    iget-object v13, v11, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 1212
    invoke-virtual {v12, v13, v10}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1214
    iget-object v13, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->e:Landroid/os/UserManager;

    .line 3234
    iget-object v14, v11, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 1214
    invoke-virtual {v13, v14, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 3362
    iget-object v13, v7, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v13, :cond_7

    .line 3363
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 3378
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 3364
    :cond_7
    iget-object v13, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v13, v14, :cond_8

    .line 3365
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 3366
    :cond_8
    iget-object v13, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v13, v14, :cond_9

    .line 3367
    iget-object v13, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v13}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 3368
    :cond_9
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 3369
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 3371
    :cond_a
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "PrefControllerMixin"

    invoke-static {v14, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "-1"

    .line 1219
    :goto_6
    invoke-virtual {v1, v13}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v14, :cond_b

    .line 1221
    new-instance v14, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->g:Landroid/content/Context;

    invoke-direct {v14, v4, v12, v10, v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/c;)V

    .line 1223
    invoke-virtual {v14, v13}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 1225
    :cond_b
    iput-wide v8, v7, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 4234
    iget-object v4, v11, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 1226
    invoke-virtual {v14, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v18, 0x1

    .line 1227
    invoke-virtual {v14, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 5075
    invoke-static {v8, v9}, Lcom/android/settings/m;->a(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/android/settings/fuelgauge/PowerGaugePreference;->c:Ljava/lang/CharSequence;

    .line 5076
    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    const/4 v4, 0x0

    .line 5093
    iput-boolean v4, v14, Lcom/android/settings/fuelgauge/PowerGaugePreference;->d:Z

    .line 5094
    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 1230
    iget-wide v8, v7, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_c

    iget-object v4, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v4, v8, :cond_c

    .line 1231
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    iget-object v8, v7, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v9, 0x1

    invoke-virtual {v4, v9, v8}, Lcom/android/settings/fuelgauge/g;->a(ILandroid/os/BatteryStats$Uid;)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 5340
    :cond_c
    iget-wide v8, v7, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/32 v10, 0xea60

    cmp-long v4, v8, v10

    if-ltz v4, :cond_f

    .line 5342
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v8, v8

    .line 5343
    invoke-static {v4, v8, v9}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5344
    iget-object v8, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v8, v9, :cond_e

    iget-object v8, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    .line 5345
    invoke-virtual {v8, v7}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_7

    :cond_d
    iget-object v7, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f12034e

    .line 5347
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v7, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v8, 0x1

    .line 5344
    :goto_8
    invoke-virtual {v14, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_f
    const/4 v8, 0x1

    .line 1236
    :goto_9
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v14}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1237
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 5449
    iget-object v7, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    if-eqz v7, :cond_10

    iget-object v7, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    goto :goto_a

    :cond_10
    const/4 v7, 0x0

    :goto_a
    sub-int/2addr v4, v7

    const/16 v7, 0x15

    if-gt v4, v7, :cond_11

    move/from16 v17, v8

    goto :goto_b

    :cond_11
    move/from16 v17, v8

    goto :goto_c

    :cond_12
    const/4 v8, 0x1

    :goto_b
    add-int/lit8 v14, v18, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_13
    const/16 v17, 0x0

    :cond_14
    :goto_c
    if-nez v17, :cond_15

    const-string v2, "not_available"

    .line 5454
    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_15

    .line 5456
    new-instance v3, Landroidx/preference/Preference;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 5457
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f121062

    .line 5458
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    .line 5459
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 5460
    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1246
    :cond_15
    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a(Landroidx/preference/PreferenceGroup;)V

    .line 1248
    invoke-static {}, Lcom/android/settings/fuelgauge/c;->a()V

    :cond_16
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500f1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "battery_graph"

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->a:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 65
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->f:Lcom/android/settings/fuelgauge/i;

    .line 67
    invoke-static {v0}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->e:Lcom/android/settings/fuelgauge/g;

    .line 70
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "show_all_apps"

    .line 1123
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120ad6

    goto :goto_0

    :cond_0
    const v0, 0x7f121478

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/android/settings/fuelgauge/c;->c()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120ad6

    goto :goto_0

    :cond_1
    const v0, 0x7f121478

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 110
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x354

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b(I)V

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->b:Z

    const-string v1, "show_all_apps"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
