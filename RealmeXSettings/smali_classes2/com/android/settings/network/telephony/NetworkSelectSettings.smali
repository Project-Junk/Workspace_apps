.class public Lcom/android/settings/network/telephony/NetworkSelectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkSelectSettings.java"


# instance fields
.field a:Landroidx/preference/PreferenceCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroidx/preference/PreferenceCategory;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/telephony/TelephonyManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private f:Landroid/view/View;

.field private g:Landroidx/preference/Preference;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/android/settings/network/telephony/e;

.field private final n:Ljava/util/concurrent/ExecutorService;

.field private o:Lcom/android/settingslib/core/instrumentation/d;

.field private p:Z

.field private final q:Landroid/os/Handler;

.field private final r:Lcom/android/settings/network/telephony/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->h:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->j:Z

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->n:Ljava/util/concurrent/ExecutorService;

    .line 221
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->q:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->r:Lcom/android/settings/network/telephony/e$a;

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 4401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4402
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 4403
    invoke-static {v1}, Lcom/android/settings/network/telephony/a;->b(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 4404
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 4407
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4408
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v3

    .line 4409
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 4414
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4405
    :cond_2
    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4417
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private synthetic a(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1, v1}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V
    .locals 2

    const/4 v0, 0x0

    .line 5388
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Z)V

    .line 5389
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->g:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 5390
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 5391
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 5392
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->g:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static synthetic b(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->q:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Z)V

    .line 422
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->k:Lcom/android/settings/network/telephony/e;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/e;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$2lYdfDfAG3nUplbutIPb1gnHNFM(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NetworkSelectSettings"

    return-object v0
.end method

.method protected final a(Z)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 383
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method final c()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 4360
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 4361
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4373
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 4374
    new-instance v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 4375
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->i:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->j:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V

    const v1, 0x7f120e16

    .line 4376
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setSummary(I)V

    .line 4377
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 4378
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    const/4 v0, 0x0

    .line 296
    :goto_1
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_3

    .line 298
    new-instance v1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    .line 299
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->i:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->j:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-static {v2}, Lcom/android/settings/network/telephony/a;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setKey(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setOrder(I)V

    .line 302
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x62d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150033

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "com.android.internal.R.bool.config_enableNewAutoSelectNetworkUI"

    .line 99
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->p:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->h:I

    const-string p1, "connected_network_operator_preference"

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    const-string p1, "network_operators_preference"

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a:Landroidx/preference/PreferenceCategory;

    .line 104
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->g:Landroidx/preference/Preference;

    .line 105
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->g:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->h:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    .line 108
    new-instance p1, Lcom/android/settings/network/telephony/e;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->r:Lcom/android/settings/network/telephony/e$a;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->n:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settings/network/telephony/e;-><init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/e$a;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->k:Lcom/android/settings/network/telephony/e;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->h:I

    .line 111
    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->j:Z

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->o:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->n:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 430
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    :cond_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 174
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 3062
    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    .line 175
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v2, 0x7f120e17

    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setSummary(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->o:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x4ba

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    .line 183
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    check-cast v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 184
    invoke-static {p1}, Lcom/android/settings/network/telephony/a;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    .line 4062
    iget-object v3, v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->a:Landroid/telephony/CellInfo;

    .line 185
    invoke-static {v3}, Lcom/android/settings/network/telephony/a;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f120e23

    .line 186
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setSummary(I)V

    .line 190
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 194
    invoke-static {p1}, Lcom/android/settings/network/telephony/a;->b(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    .line 195
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return v1
.end method

.method public onStart()V
    .locals 5

    .line 136
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 2152
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2154
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->i:Ljava/util/List;

    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->k:Lcom/android/settings/network/telephony/e;

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->p:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 2170
    invoke-static {}, Lcom/google/a/d/a/j;->d()Lcom/google/a/d/a/j;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/network/telephony/e;->f:Lcom/google/a/d/a/f;

    .line 2171
    iget-object v0, v1, Lcom/android/settings/network/telephony/e;->f:Lcom/google/a/d/a/f;

    new-instance v2, Lcom/android/settings/network/telephony/e$1;

    invoke-direct {v2, v1}, Lcom/android/settings/network/telephony/e$1;-><init>(Lcom/android/settings/network/telephony/e;)V

    .line 2392
    sget-object v3, Lcom/google/a/d/a/b;->a:Lcom/google/a/d/a/b;

    .line 3050
    invoke-static {v2}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    new-instance v4, Lcom/google/a/d/a/d$a;

    invoke-direct {v4, v0, v2}, Lcom/google/a/d/a/d$a;-><init>(Ljava/util/concurrent/Future;Lcom/google/a/d/a/c;)V

    invoke-interface {v0, v4, v3}, Lcom/google/a/d/a/f;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2186
    iget-object v0, v1, Lcom/android/settings/network/telephony/e;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/settings/network/telephony/e$c;

    iget-object v3, v1, Lcom/android/settings/network/telephony/e;->b:Landroid/telephony/TelephonyManager;

    iget-object v1, v1, Lcom/android/settings/network/telephony/e;->f:Lcom/google/a/d/a/f;

    check-cast v1, Lcom/google/a/d/a/j;

    invoke-direct {v2, v3, v1}, Lcom/android/settings/network/telephony/e$c;-><init>(Landroid/telephony/TelephonyManager;Lcom/google/a/d/a/j;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 2189
    :cond_2
    iget-object v0, v1, Lcom/android/settings/network/telephony/e;->b:Landroid/telephony/TelephonyManager;

    sget-object v2, Lcom/android/settings/network/telephony/e;->a:Landroid/telephony/NetworkScanRequest;

    iget-object v3, v1, Lcom/android/settings/network/telephony/e;->d:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Lcom/android/settings/network/telephony/e;->c:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/network/telephony/e;->e:Landroid/telephony/NetworkScan;

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 160
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0d0291

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a051b

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->f:Landroid/view/View;

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Z)V

    .line 1321
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1323
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    const/4 v0, 0x1

    .line 1325
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1332
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 2053
    instance-of v0, p1, Landroid/telephony/CellIdentityLte;

    if-eqz v0, :cond_2

    .line 2054
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    .line 2055
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, p1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    goto :goto_0

    .line 2057
    :cond_2
    instance-of v0, p1, Landroid/telephony/CellIdentityCdma;

    if-eqz v0, :cond_3

    .line 2058
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    .line 2059
    check-cast p1, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0, p1}, Landroid/telephony/CellInfoCdma;->setCellIdentity(Landroid/telephony/CellIdentityCdma;)V

    goto :goto_0

    .line 2061
    :cond_3
    instance-of v0, p1, Landroid/telephony/CellIdentityWcdma;

    if-eqz v0, :cond_4

    .line 2062
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoWcdma;-><init>()V

    .line 2063
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0, p1}, Landroid/telephony/CellInfoWcdma;->setCellIdentity(Landroid/telephony/CellIdentityWcdma;)V

    goto :goto_0

    .line 2065
    :cond_4
    instance-of v0, p1, Landroid/telephony/CellIdentityGsm;

    if-eqz v0, :cond_5

    .line 2066
    new-instance v0, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0}, Landroid/telephony/CellInfoGsm;-><init>()V

    .line 2067
    check-cast p1, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {v0, p1}, Landroid/telephony/CellInfoGsm;->setCellIdentity(Landroid/telephony/CellIdentityGsm;)V

    goto :goto_0

    :cond_5
    const-string p1, "NetworkSelectSetting"

    const-string v0, "Invalid CellInfo type"

    .line 2070
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 1335
    new-instance p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 1336
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->i:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->j:Z

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V

    .line 1337
    iget-object p2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f120e16

    .line 1338
    invoke-virtual {p1, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setSummary(I)V

    const/4 p2, 0x4

    .line 1341
    invoke-virtual {p1, p2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(I)V

    .line 1342
    iget-object p2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 1345
    :cond_6
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void

    .line 1329
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void

    .line 1349
    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method
