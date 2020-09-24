.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field a:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Lcom/android/settings/fuelgauge/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Lcom/android/settings/fuelgauge/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Lcom/android/settingslib/widget/LayoutPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field h:Lcom/android/settings/fuelgauge/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field j:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final n:Landroid/database/ContentObserver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field o:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/d;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 424
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->q:I

    .line 112
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->n:Landroid/database/ContentObserver;

    .line 120
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->o:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 142
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->p:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 187
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->r:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private e()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->r:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PowerUsageSummary"

    return-object v0
.end method

.method protected final a(I)V
    .locals 3

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->e()V

    goto :goto_0

    .line 324
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->j:Z

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->d()V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c()V

    .line 330
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c:Lcom/android/internal/os/BatteryStatsHelper;

    .line 331
    invoke-static {v1}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatteryStatsHelper;)J

    move-result-wide v1

    long-to-double v1, v1

    .line 330
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final b(I)V
    .locals 0

    .line 408
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->b(I)V

    .line 409
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    return-void
.end method

.method final c()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->h:Lcom/android/settings/fuelgauge/d;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/d;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->b:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const v1, 0x7f1202e9

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->b:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->h:Lcom/android/settings/fuelgauge/d;

    iget-wide v2, v2, Lcom/android/settings/fuelgauge/d;->f:J

    long-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->c:Lcom/android/internal/os/BatteryStatsHelper;

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 353
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/g;->a(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v0

    .line 355
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->b:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const v3, 0x7f1202f4

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 356
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->b:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    long-to-double v0, v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 356
    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final d()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->o:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa4

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4ef

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500f4

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 209
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onAttach(Landroid/content/Context;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 212
    const-class v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 213
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setActivity(Landroid/app/Activity;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setFragment(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->i:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 217
    const-class v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 218
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setFragment(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 220
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    new-instance v0, Lcom/android/settings/fuelgauge/-$$Lambda$00vHCt64I3TsDFEbNYfszPLVfNw;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$00vHCt64I3TsDFEbNYfszPLVfNw;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->setBatteryTipListener(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$a;)V

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/c/c;)V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->e()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    .line 1375
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1376
    invoke-static {v1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v2

    .line 1377
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/b;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->e:Lcom/android/settings/fuelgauge/i;

    const-string v1, "battery_header"

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->g:Lcom/android/settingslib/widget/LayoutPreference;

    const-string v1, "screen_usage"

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const-string v1, "last_full_charge"

    .line 232
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->b:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 234
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const v2, 0x7f1202e8

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->f:Lcom/android/settings/fuelgauge/g;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->d()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->restoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 1396
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->j:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f120108

    .line 280
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 282
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 2364
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 309
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 302
    :cond_0
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 303
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f120108

    .line 2063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v2

    .line 294
    :cond_1
    iget p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->q:I

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 295
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->q:I

    goto :goto_0

    .line 297
    :cond_2
    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->q:I

    .line 299
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->a(I)V

    return v2
.end method

.method public onPause()V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 244
    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_estimates_last_update_time"

    .line 246
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->n:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 245
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 414
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->k:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
