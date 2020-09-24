.class public Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;


# instance fields
.field a:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/internal/os/BatteryStatsHelper;

.field c:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroid/os/UserManager;

.field f:Lcom/android/settings/SettingsActivity;

.field g:Landroid/content/Context;

.field h:Landroid/os/Handler;

.field private final i:Ljava/lang/String;

.field private j:Lcom/android/settings/core/InstrumentedPreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->h:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 118
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 121
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->i:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    const-string/jumbo p2, "user"

    .line 123
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->e:Landroid/os/UserManager;

    .line 124
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->f:Lcom/android/settings/SettingsActivity;

    .line 125
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->j:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->e:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->f:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_c

    .line 264
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 265
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_a

    .line 266
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 270
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    .line 2394
    invoke-static {v7}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-eqz v7, :cond_1

    .line 272
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v6

    .line 271
    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2398
    :cond_1
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v9, 0x3e8

    if-lt v7, v9, :cond_2

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_2

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    if-eqz v8, :cond_3

    .line 276
    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    const-string v8, "mediaserver"

    .line 277
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v6, v9

    .line 284
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 286
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings/fuelgauge/h;

    invoke-direct {v9, v6}, Lcom/android/settings/fuelgauge/h;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 288
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 289
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 290
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object v5, v7

    .line 294
    :cond_4
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_5

    .line 297
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 300
    :cond_5
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 301
    invoke-virtual {v6, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 302
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v7, :cond_6

    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 304
    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 307
    :cond_6
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v7, v7

    goto :goto_3

    :cond_7
    move v7, v3

    .line 309
    :goto_3
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    goto :goto_4

    :cond_8
    move v8, v3

    :goto_4
    if-lez v8, :cond_b

    add-int v9, v7, v8

    .line 312
    new-array v9, v9, [Ljava/lang/String;

    if-lez v7, :cond_9

    .line 314
    iget-object v10, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v10, v3, v9, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    :cond_9
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v5, v3, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iput-object v9, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_5

    .line 323
    :cond_a
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 327
    :cond_c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_6
    if-ge v3, p1, :cond_d

    .line 329
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 333
    :cond_d
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/g;->b(Ljava/util/List;)V

    return-object v1
.end method

.method final a(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 443
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->c:Landroid/util/ArrayMap;

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 144
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->g:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->a:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->i:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 160
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 1102
    iget-object v4, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a:Lcom/android/settings/fuelgauge/c;

    .line 163
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->f:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->d:Lcom/android/settings/fuelgauge/g;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->j:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->b:Lcom/android/internal/os/BatteryStatsHelper;

    .line 2080
    iget-object p1, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->a(Landroid/app/Activity;Lcom/android/settings/fuelgauge/g;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/c;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->f:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/android/settings/fuelgauge/c;->c()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/android/settings/fuelgauge/c;->b()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
