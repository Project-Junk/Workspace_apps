.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageList.java"


# instance fields
.field a:Landroid/net/NetworkTemplate;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Landroid/widget/Spinner;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Lcom/android/settings/widget/d;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/c;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/android/settings/datausage/CellDataPreference$a;

.field private k:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private n:Landroid/telephony/TelephonyManager;

.field private o:Lcom/android/settingslib/net/g;

.field private p:Lcom/android/settings/datausage/b;

.field private q:Landroidx/preference/Preference;

.field private r:Landroidx/preference/PreferenceGroup;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final u:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "Landroid/app/usage/NetworkStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->j:Lcom/android/settings/datausage/CellDataPreference$a;

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    .line 473
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 497
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->i:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 523
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->u:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private static a(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/a;",
            ">;",
            "Landroid/app/usage/NetworkStats$Bucket;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/a;",
            ">;J)J"
        }
    .end annotation

    .line 460
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v0

    .line 461
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/a;

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Lcom/android/settingslib/a;

    invoke-direct {v1, p0}, Lcom/android/settingslib/a;-><init>(I)V

    .line 464
    iput p3, v1, Lcom/android/settingslib/a;->c:I

    .line 465
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget p0, v1, Lcom/android/settingslib/a;->a:I

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settingslib/a;->a(I)V

    .line 469
    iget-wide p0, v1, Lcom/android/settingslib/a;->e:J

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide p3

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr p3, v2

    add-long/2addr p0, p3

    iput-wide p0, v1, Lcom/android/settingslib/a;->e:J

    .line 470
    iget-wide p0, v1, Lcom/android/settingslib/a;->e:J

    invoke-static {p5, p6, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/android/settings/datausage/DataUsageList;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/datausage/DataUsageList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    return-object p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 153
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    const-string v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120351

    .line 4063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/datausage/DataUsageList;Landroid/app/usage/NetworkStats;[I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 4329
    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->r:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-eqz v1, :cond_b

    .line 4337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4340
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 4341
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    .line 4342
    invoke-virtual {v12}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    .line 4343
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 4345
    new-instance v15, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v15}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    const-wide/16 v16, 0x0

    move-wide/from16 v9, v16

    .line 4346
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v1, v15}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4348
    invoke-virtual {v15}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v8

    .line 4351
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4352
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    const/4 v7, -0x4

    const/16 v18, 0x2

    if-eqz v6, :cond_3

    .line 4353
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v4, v11, :cond_0

    rsub-int v4, v4, -0x7d0

    const/4 v7, 0x0

    move-object v5, v14

    move-object v6, v15

    move/from16 v19, v8

    move-object v8, v3

    .line 4357
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->a(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v9

    goto :goto_1

    :cond_0
    move/from16 v19, v8

    :goto_1
    move/from16 v7, v18

    move/from16 v4, v19

    goto :goto_3

    .line 4365
    :cond_1
    invoke-virtual {v12, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-nez v6, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    rsub-int v4, v4, -0x7d0

    move v7, v5

    goto :goto_3

    :cond_3
    move v4, v8

    if-eq v4, v7, :cond_5

    const/4 v5, -0x5

    if-eq v4, v5, :cond_5

    const/16 v5, 0x425

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x3e8

    :cond_5
    :goto_2
    move/from16 v7, v18

    :goto_3
    move-object v5, v14

    move-object v6, v15

    move-object v8, v3

    .line 4383
    invoke-static/range {v4 .. v10}, Lcom/android/settings/datausage/DataUsageList;->a(ILandroid/util/SparseArray;Landroid/app/usage/NetworkStats$Bucket;ILjava/util/ArrayList;J)J

    move-result-wide v9

    goto :goto_0

    .line 4385
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/NetworkStats;->close()V

    .line 4387
    array-length v1, v2

    move v4, v5

    :goto_4
    if-ge v4, v1, :cond_9

    .line 4389
    aget v6, v2, v4

    .line 4391
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4395
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/a;

    if-nez v7, :cond_7

    .line 4397
    new-instance v7, Lcom/android/settingslib/a;

    invoke-direct {v7, v6}, Lcom/android/settingslib/a;-><init>(I)V

    const-wide/16 v11, -0x1

    .line 4398
    iput-wide v11, v7, Lcom/android/settingslib/a;->e:J

    .line 4399
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4400
    iget v6, v7, Lcom/android/settingslib/a;->a:I

    invoke-virtual {v14, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    const/4 v6, 0x1

    .line 4402
    iput-boolean v6, v7, Lcom/android/settingslib/a;->b:Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4405
    :cond_9
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v5

    .line 4406
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    cmp-long v2, v9, v16

    if-eqz v2, :cond_a

    .line 4407
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/a;

    iget-wide v6, v2, Lcom/android/settingslib/a;->e:J

    const-wide/16 v11, 0x64

    mul-long/2addr v6, v11

    div-long/2addr v6, v9

    long-to-int v2, v6

    goto :goto_6

    :cond_a
    move v2, v5

    .line 4408
    :goto_6
    new-instance v4, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4409
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/a;

    iget-object v8, v0, Lcom/android/settings/datausage/DataUsageList;->o:Lcom/android/settingslib/net/g;

    invoke-direct {v4, v6, v7, v2, v8}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/a;ILcom/android/settingslib/net/g;)V

    .line 4410
    new-instance v2, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v2, v0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v4, v2}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 4419
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageList;->r:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method static synthetic b(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->k:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->d()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/PreferenceGroup;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->r:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->u:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 319
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    .line 320
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/net/c;

    .line 4040
    iget-wide v0, v0, Lcom/android/settingslib/net/d;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->q:Landroidx/preference/Preference;

    const v2, 0x7f12070e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/datausage/DataUsageList;)Landroidx/preference/Preference;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageList;->q:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static synthetic lambda$afWbL3UlVFaSOTffEae4gUdmRUA(Lcom/android/settings/datausage/DataUsageList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUsageList"

    return-object v0
.end method

.method final c()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->s:Landroid/view/View;

    const v2, 0x7f0a0292

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/datausage/DataUsageList;->a(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageList;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->k:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->a(Landroid/net/NetworkPolicy;)V

    const/4 v0, 0x0

    .line 293
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 294
    check-cast v1, Landroid/widget/ImageView;

    const v0, 0x106000b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->k:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->a(Landroid/net/NetworkPolicy;)V

    const/16 v0, 0x8

    .line 298
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->p:Lcom/android/settings/datausage/b;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/b;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->d()V

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x155

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150080

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataUsageList"

    const-string v1, "No bandwidth control; leaving"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 139
    :cond_0
    new-instance v0, Lcom/android/settingslib/net/g;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->o:Lcom/android/settingslib/net/g;

    .line 140
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->n:Landroid/telephony/TelephonyManager;

    const-string/jumbo p1, "usage_amount"

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->q:Landroidx/preference/Preference;

    const-string p1, "chart_data"

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->k:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const-string p1, "apps_group"

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->r:Landroidx/preference/PreferenceGroup;

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "network_template"

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const-string v2, "sub_id"

    .line 1225
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    .line 1226
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    const/4 v2, 0x0

    const-string v3, "network_type"

    .line 1227
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/DataUsageList;->c:I

    .line 1229
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    if-ne p1, v1, :cond_2

    .line 1230
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "android.provider.extra.SUB_ID"

    .line 1231
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    .line 1233
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->o:Lcom/android/settingslib/net/g;

    .line 3071
    iget-object v1, v0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3072
    :try_start_0
    iget-object v0, v0, Lcom/android/settingslib/net/g;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->o:Lcom/android/settingslib/net/g;

    .line 209
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    .line 3073
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 4

    .line 200
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPause()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->j:Lcom/android/settings/datausage/CellDataPreference$a;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$a;->a(ZILandroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 193
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->j:Lcom/android/settings/datausage/CellDataPreference$a;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$a;->a(ZILandroid/content/Context;)V

    .line 1242
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1249
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->a:Landroid/net/NetworkTemplate;

    .line 1275
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "template"

    .line 1276
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v3, 0x0

    const-string v5, "app"

    .line 1277
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v3, 0xa

    const-string v5, "fields"

    .line 1278
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1250
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->i:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    .line 1249
    invoke-virtual {v1, v2, v4, v3}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 1253
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    const-string v1, "accent_device_default_light"

    .line 1256
    invoke-static {v0, v1}, Lcom/android/settingslib/m/a/a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1257
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 1260
    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->e:Lcom/android/settings/datausage/g$a;

    iget-object v1, v1, Lcom/android/settings/datausage/g$a;->e:Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->b:I

    .line 1262
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1265
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    :cond_0
    const/16 v1, 0x7f

    .line 1269
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 1270
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 1269
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 1271
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->k:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 2182
    iput v0, v2, Lcom/android/settings/datausage/ChartDataUsagePreference;->e:I

    .line 2183
    iput v1, v2, Lcom/android/settings/datausage/ChartDataUsagePreference;->d:I

    .line 2184
    invoke-virtual {v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0d004a

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->s:Landroid/view/View;

    .line 152
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->s:Landroid/view/View;

    const p2, 0x7f0a0292

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$afWbL3UlVFaSOTffEae4gUdmRUA;

    invoke-direct {p2, p0}, Lcom/android/settings/datausage/-$$Lambda$DataUsageList$afWbL3UlVFaSOTffEae4gUdmRUA;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->s:Landroid/view/View;

    const p2, 0x7f0a0293

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    .line 163
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 164
    new-instance p1, Lcom/android/settings/datausage/b;

    iget-object p2, p0, Lcom/android/settings/datausage/DataUsageList;->d:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->t:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/settings/datausage/b;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/b$b;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->p:Lcom/android/settings/datausage/b;

    .line 186
    new-instance p1, Lcom/android/settings/widget/d;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a03b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/settings/widget/d;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->f:Lcom/android/settings/widget/d;

    .line 188
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->f:Lcom/android/settings/widget/d;

    invoke-virtual {p1}, Lcom/android/settings/widget/d;->a()V

    return-void
.end method
