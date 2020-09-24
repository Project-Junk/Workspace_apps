.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
.implements Lcom/android/settings/core/SettingsBaseActivity$b;
.implements Lcom/android/settings/core/a$a;
.implements Lcom/android/settings/dashboard/f$a;
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/android/settings/dashboard/b;

.field private c:Lcom/android/settings/dashboard/e;

.field private d:Z

.field private e:Lcom/android/settings/dashboard/f;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;>;"
        }
    .end annotation
.end field

.field m:Lcom/android/settings/dashboard/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->a:Ljava/util/Set;

    return-void
.end method

.method private static synthetic a(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/a;)V
    .locals 0

    .line 336
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/a;)V
    .locals 0

    .line 113
    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/android/settingslib/core/a;)V
    .locals 1

    .line 133
    move-object v0, p2

    check-cast v0, Lcom/android/settings/core/a;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/a;->setUiBlockListener(Lcom/android/settings/core/a$a;)V

    .line 134
    invoke-virtual {p2}, Lcom/android/settingslib/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;>;)V"
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 436
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->m:Lcom/android/settings/dashboard/g;

    if-nez v0, :cond_0

    goto :goto_2

    .line 4086
    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/dashboard/g;->b:Z

    .line 442
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 443
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 444
    invoke-virtual {v2}, Lcom/android/settingslib/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v2}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private static synthetic a(Lcom/android/settingslib/core/a;)Z
    .locals 0

    .line 131
    instance-of p0, p0, Lcom/android/settings/core/a$b;

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 460
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    .line 465
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/b;->a(Ljava/lang/String;)Lcom/android/settingslib/h/b;

    move-result-object v1

    if-nez v1, :cond_1

    .line 467
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO dashboard tiles for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 470
    :cond_1
    invoke-virtual {v1}, Lcom/android/settingslib/h/b;->a()Ljava/util/List;

    move-result-object v1

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->a:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->e:Lcom/android/settings/dashboard/f;

    if-eqz v3, :cond_2

    .line 480
    invoke-virtual {v3}, Lcom/android/settings/dashboard/f;->a()V

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    .line 483
    new-instance v3, Lcom/android/settings/dashboard/f;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings/dashboard/f;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->e:Lcom/android/settings/dashboard/f;

    .line 484
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->e:Lcom/android/settings/dashboard/f;

    .line 5083
    iput-object p0, v3, Lcom/android/settings/dashboard/f;->c:Lcom/android/settings/dashboard/f$a;

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->j()Z

    move-result v3

    .line 487
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/settingslib/h/c;

    .line 488
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    invoke-interface {v4, v9}, Lcom/android/settings/dashboard/b;->a(Lcom/android/settingslib/h/c;)Ljava/lang/String;

    move-result-object v12

    .line 489
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tile does not contain a key, skipping "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/settings/dashboard/DashboardFragment;->a(Lcom/android/settingslib/h/c;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 496
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->a:Ljava/util/Set;

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 498
    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 499
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->c:Lcom/android/settings/dashboard/e;

    .line 6064
    iget v11, v6, Lcom/android/settings/dashboard/e;->a:I

    move v6, v3

    move-object v10, v12

    .line 499
    invoke-interface/range {v4 .. v11}, Lcom/android/settings/dashboard/b;->a(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/h/c;Ljava/lang/String;I)V

    goto :goto_1

    .line 504
    :cond_5
    new-instance v13, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v13, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 505
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->c:Lcom/android/settings/dashboard/e;

    .line 7064
    iget v11, v6, Lcom/android/settings/dashboard/e;->a:I

    move v6, v3

    move-object v8, v13

    move-object v10, v12

    .line 505
    invoke-interface/range {v4 .. v11}, Lcom/android/settings/dashboard/b;->a(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/h/c;Ljava/lang/String;I)V

    .line 508
    invoke-virtual {v0, v13}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 509
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->a:Ljava/util/Set;

    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    :goto_1
    invoke-interface {v2, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 518
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 521
    :cond_8
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->e:Lcom/android/settings/dashboard/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/f;->a(Z)V

    return-void
.end method

.method private static synthetic b(Lcom/android/settings/core/a;)Z
    .locals 0

    .line 111
    instance-of p0, p0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    return p0
.end method

.method private d()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 297
    sget-object v0, Lcom/android/settings/dashboard/d;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private synthetic e()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$3ji9cCKjQKZxoex-HI_Fr2AqXCI(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->a(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/a;)V

    return-void
.end method

.method public static synthetic lambda$KYa0GFcvcnitAIp6s-XKOv00UU4(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->a(Ljava/util/List;Lcom/android/settingslib/core/a;)V

    return-void
.end method

.method public static synthetic lambda$hy97KfeYaQLjEdrRTf31aDYsZnY(Lcom/android/settings/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dashboard/DashboardFragment;->b(Lcom/android/settings/core/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ktxQX2DhOuZM1oa2XdFYpDThE9s(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->e()V

    return-void
.end method

.method public static synthetic lambda$uTcDJQTEPfewL7PoSychqh9-6Ck(Lcom/android/settingslib/core/a;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dashboard/DashboardFragment;->a(Lcom/android/settingslib/core/a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$v89ChbJfRguyCnXbbFTl6PFZb6I(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->a(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple controllers of Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found, returning first one."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DashboardFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 279
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/a;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Landroid/content/Context;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/core/a;",
            ">;"
        }
    .end annotation

    .line 541
    invoke-static {p1, p2}, Lcom/android/settings/core/c;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/settings/core/a;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->m:Lcom/android/settings/dashboard/g;

    invoke-virtual {p1}, Lcom/android/settings/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    .line 7094
    iget-object v1, v0, Lcom/android/settings/dashboard/g;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7095
    iget-object p1, v0, Lcom/android/settings/dashboard/g;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/android/settingslib/h/c;)Z
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->f:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/h/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/h/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public final b(Lcom/android/settingslib/h/c;)V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/b;->a(Lcom/android/settingslib/h/c;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p1}, Lcom/android/settingslib/h/c;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Can\'t find pref by key %s, skipping update summary %s"

    .line 205
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/h/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b_()V
    .locals 10

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    .line 350
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 351
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 352
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/a;

    .line 353
    invoke-virtual {v3}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    invoke-virtual {v3}, Lcom/android/settingslib/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "DashboardFragment"

    if-eqz v5, :cond_3

    .line 359
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    .line 360
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Preference key is %s in Controller %s"

    .line 359
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_4

    .line 366
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    .line 367
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Cannot find preference with key %s in Controller %s"

    .line 366
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {v3, v5}, Lcom/android/settingslib/core/a;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public abstract getPreferenceScreenResId()I
.end method

.method public final i()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    .line 164
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/b;->a(Ljava/lang/String;)Lcom/android/settingslib/h/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->f:Ljava/util/List;

    .line 85
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/b;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->k()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/dashboard/DashboardFragment;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 101
    invoke-static {v2, v1}, Lcom/android/settings/core/c;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 110
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$hy97KfeYaQLjEdrRTf31aDYsZnY;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$hy97KfeYaQLjEdrRTf31aDYsZnY;

    .line 111
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$3ji9cCKjQKZxoex-HI_Fr2AqXCI;

    invoke-direct {v3, v2}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$3ji9cCKjQKZxoex-HI_Fr2AqXCI;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 112
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    :cond_1
    new-instance v1, Lcom/android/settings/dashboard/e;

    invoke-direct {v1, p1}, Lcom/android/settings/dashboard/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->c:Lcom/android/settings/dashboard/e;

    .line 118
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->c:Lcom/android/settings/dashboard/e;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 1286
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1287
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2128
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2130
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$uTcDJQTEPfewL7PoSychqh9-6Ck;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$uTcDJQTEPfewL7PoSychqh9-6Ck;

    .line 2131
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$KYa0GFcvcnitAIp6s-XKOv00UU4;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V

    .line 2132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2138
    new-instance v0, Lcom/android/settings/dashboard/g;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/g;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->m:Lcom/android/settings/dashboard/g;

    .line 2139
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->m:Lcom/android/settings/dashboard/g;

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$ktxQX2DhOuZM1oa2XdFYpDThE9s;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$ktxQX2DhOuZM1oa2XdFYpDThE9s;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/g;->a(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v1}, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->b_()V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->a()Ljava/lang/String;

    move-result-object p1

    .line 2411
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2415
    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 3328
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result p2

    if-lez p2, :cond_1

    .line 3332
    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferencesFromResource(I)V

    .line 3333
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 3334
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceScreen;->setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;)V

    .line 3335
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$v89ChbJfRguyCnXbbFTl6PFZb6I;

    invoke-direct {v1, p2}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$v89ChbJfRguyCnXbbFTl6PFZb6I;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2421
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->b(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "All preferences added, reporting fully drawn"

    .line 2425
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    invoke-virtual {p2}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 2429
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->a(Ljava/util/Map;)V

    return-void
.end method

.method public onExpandButtonClick()V
    .locals 6

    .line 263
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v3

    const/4 v1, 0x0

    const/16 v2, 0x342

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 263
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->l:Ljava/util/Map;

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v4

    .line 224
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 227
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/a;

    .line 229
    invoke-virtual {v2, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    instance-of v0, v2, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;

    if-eqz v0, :cond_2

    .line 232
    move-object v0, v2

    check-cast v0, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;

    invoke-virtual {v0, p1, v2}, Lcom/coloros/settings/feature/controller/BasePreferenceWithStaticsController;->onHandlePreferenceClickedDcs(Landroidx/preference/Preference;Lcom/android/settingslib/core/a;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 239
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->b_()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->b:Lcom/android/settings/dashboard/b;

    .line 185
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/b;->a(Ljava/lang/String;)Lcom/android/settingslib/h/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->e:Lcom/android/settings/dashboard/f;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/f;->a(Z)V

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 194
    instance-of v2, v0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v2, :cond_3

    .line 195
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->d:Z

    .line 196
    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity;->addCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$b;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 245
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->e:Lcom/android/settings/dashboard/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/f;->a(Z)V

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->d:Z

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 251
    instance-of v2, v0, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v2, :cond_1

    .line 252
    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SettingsBaseActivity;->remCategoryListener(Lcom/android/settings/core/SettingsBaseActivity$b;)V

    .line 254
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->d:Z

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 532
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 535
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method
