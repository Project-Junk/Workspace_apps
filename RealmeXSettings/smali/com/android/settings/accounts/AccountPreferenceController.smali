.class public Lcom/android/settings/accounts/AccountPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AccountPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/b/a$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountPreferenceController$a;,
        Lcom/android/settings/accounts/AccountPreferenceController$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/UserManager;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/accounts/AccountPreferenceController$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/settings/accounts/AccountPreferenceController$a;

.field private d:Landroidx/preference/Preference;

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:Lcom/android/settings/SettingsPreferenceFragment;

.field private h:I

.field private i:Lcom/android/settings/accounts/c;

.field private j:Lcom/android/settingslib/core/instrumentation/d;

.field private k:Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)V
    .locals 1

    .line 144
    new-instance v0, Lcom/android/settings/accounts/c;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/c;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$a;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;B)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->c:Lcom/android/settings/accounts/AccountPreferenceController$a;

    .line 98
    iput v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->f:I

    const/4 v0, 0x1

    .line 100
    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->h:I

    const-string/jumbo v0, "user"

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    .line 152
    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->e:[Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 154
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->e:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 155
    array-length p1, p1

    iput p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->f:I

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->j:Lcom/android/settingslib/core/instrumentation/d;

    .line 159
    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->i:Lcom/android/settings/accounts/c;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 417
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p2}, Lcom/android/settings/m;->a(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 421
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 422
    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120d27

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/android/settingslib/b/a;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/b/a;",
            "Landroid/os/UserHandle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 514
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/b/a;->a()[Ljava/lang/String;

    move-result-object v13

    .line 515
    new-instance v12, Ljava/util/ArrayList;

    array-length v1, v13

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    move/from16 v11, v16

    .line 518
    :goto_0
    array-length v1, v13

    if-ge v11, v1, :cond_7

    .line 519
    aget-object v10, v13, v11

    .line 521
    invoke-direct {v0, v14, v10}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Lcom/android/settingslib/b/a;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 524
    iget-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v1, v10}, Lcom/android/settingslib/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 5150
    iget-object v1, v14, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5151
    iget-object v1, v14, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 5152
    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v28, v1

    goto :goto_1

    :cond_0
    const/16 v28, 0x0

    .line 5164
    :goto_1
    iget-object v1, v14, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5165
    iget-object v1, v14, Lcom/android/settingslib/b/a;->a:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 5166
    iget v1, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    move v8, v1

    .line 531
    iget-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v10, v15}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v7

    .line 533
    iget-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v1, v10}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 534
    iget-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v30

    .line 537
    array-length v6, v7

    move/from16 v5, v16

    :goto_3
    if-ge v5, v6, :cond_5

    aget-object v4, v7, v5

    .line 539
    invoke-static {v4}, Lcom/android/settings/accounts/AccountTypePreference;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/AccountTypePreference;

    if-eqz v1, :cond_2

    .line 541
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 544
    :cond_2
    iget-object v1, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 545
    invoke-virtual {v14, v1}, Lcom/android/settingslib/b/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 546
    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->e:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/settings/accounts/c;->a([Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 550
    invoke-static {v9}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v9, v4

    move-object v4, v12

    move/from16 v31, v5

    move-object v5, v10

    move/from16 v32, v6

    move-object/from16 v6, v27

    move-object/from16 v33, v7

    move-object/from16 v7, v28

    move/from16 v34, v8

    move-object/from16 v20, v9

    move-object/from16 v9, v33

    move-object v14, v10

    move-object/from16 v10, v30

    move/from16 v35, v11

    move-object/from16 v11, v19

    move-object/from16 v36, v12

    move-object/from16 v12, v20

    move-object/from16 v37, v13

    move/from16 v13, v18

    .line 549
    invoke-virtual/range {v1 .. v13}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->addAccountTypePreference(Lcom/android/settingslib/b/a;Landroid/os/UserHandle;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;I[Landroid/accounts/Account;Landroid/content/Context;Landroid/content/Context;Landroid/accounts/Account;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 553
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account"

    move-object/from16 v3, v20

    .line 554
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "user_handle"

    .line 556
    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "account_type"

    .line 558
    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "account_label"

    .line 560
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "account_title_res"

    move/from16 v4, v34

    .line 562
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android.intent.extra.USER"

    .line 564
    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 565
    new-instance v2, Lcom/android/settings/accounts/AccountTypePreference;

    iget-object v5, v0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 566
    invoke-static {v5}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v19

    const-class v5, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 568
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v2

    move-object/from16 v18, v30

    move-object/from16 v21, v28

    move/from16 v22, v4

    move-object/from16 v23, v27

    move-object/from16 v25, v1

    move-object/from16 v26, v29

    invoke-direct/range {v17 .. v26}, Lcom/android/settings/accounts/AccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v1, v36

    .line 565
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    move/from16 v4, v34

    move-object/from16 v1, v36

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v31, v5

    move/from16 v32, v6

    move-object/from16 v33, v7

    move v4, v8

    move-object v14, v10

    move/from16 v35, v11

    move-object v1, v12

    move-object/from16 v37, v13

    :goto_5
    add-int/lit8 v5, v31, 0x1

    move-object v12, v1

    move v8, v4

    move-object v10, v14

    move/from16 v6, v32

    move-object/from16 v7, v33

    move/from16 v11, v35

    move-object/from16 v13, v37

    move-object/from16 v14, p1

    goto/16 :goto_3

    :cond_5
    move-object v14, v10

    move/from16 v35, v11

    move-object v1, v12

    move-object/from16 v37, v13

    .line 570
    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 6080
    new-instance v3, Lcom/android/settingslib/b/a$1;

    move-object/from16 v4, p1

    move-object v5, v14

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settingslib/b/a$1;-><init>(Lcom/android/settingslib/b/a;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    .line 6086
    invoke-virtual {v3, v2, v5}, Lcom/android/settingslib/b/a$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6

    :cond_6
    move/from16 v35, v11

    move-object v1, v12

    move-object/from16 v37, v13

    move-object v4, v14

    :goto_6
    add-int/lit8 v11, v35, 0x1

    move-object v12, v1

    move-object v14, v4

    move-object/from16 v13, v37

    goto/16 :goto_0

    :cond_7
    move-object v1, v12

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v2

    invoke-virtual {v2, v15, v1}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->filterPreferenceList(Landroid/os/UserHandle;Ljava/util/ArrayList;)V

    .line 574
    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$1;

    invoke-direct {v2, v0}, Lcom/android/settings/accounts/AccountPreferenceController$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private a()V
    .locals 5

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AccountPrefController"

    const-string v1, "We should not be showing settings for a managed profile"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$b;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->g:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Landroid/content/pm/UserInfo;)V

    goto :goto_2

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 300
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Landroid/content/pm/UserInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->e()V

    .line 308
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    .line 310
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$b;

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Lcom/android/settings/accounts/AccountPreferenceController$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private a(Landroid/content/pm/UserInfo;)V
    .locals 9

    .line 315
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 320
    iput-boolean v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$b;->g:Z

    .line 321
    iput-object p1, v0, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    .line 322
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    new-instance v1, Lcom/android/settingslib/b/a;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 325
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settingslib/b/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V

    iput-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$b;->e:Lcom/android/settingslib/b/a;

    :cond_1
    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 330
    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$b;

    invoke-direct {v2}, Lcom/android/settings/accounts/AccountPreferenceController$b;-><init>()V

    .line 331
    iput-object p1, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    .line 332
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 333
    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/accounts/c;->a(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;

    move-result-object v3

    .line 334
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->h:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/settings/accounts/AccountPreferenceController;->h:I

    invoke-virtual {v4, v5}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->getOrder(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setOrder(I)V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->h()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 337
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v4

    const v6, 0x7f1200c7

    new-array v5, v5, [Ljava/lang/Object;

    .line 338
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 337
    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->getTitle(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f1200c8

    .line 341
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3035
    iput-object v1, v3, Lcom/android/settings/AccessiblePreferenceCategory;->a:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f1204b8

    .line 343
    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setTitle(I)V

    .line 344
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v6, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f120050

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 347
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4035
    iput-object v1, v3, Lcom/android/settings/AccessiblePreferenceCategory;->a:Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->c()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->c:Lcom/android/settingslib/RestrictedPreference;

    .line 349
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->i:Lcom/android/settings/accounts/c;

    iget-object v4, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->c:Lcom/android/settingslib/RestrictedPreference;

    .line 350
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v6, "no_remove_managed_profile"

    .line 349
    invoke-virtual {v1, v4, v6, v5}, Lcom/android/settings/accounts/c;->a(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 351
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->d()Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->d:Landroidx/preference/Preference;

    goto :goto_0

    :cond_4
    const v1, 0x7f1204b7

    .line 353
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setTitle(I)V

    .line 354
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f12004f

    .line 355
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5035
    iput-object v1, v3, Lcom/android/settings/AccessiblePreferenceCategory;->a:Ljava/lang/String;

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 359
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 361
    :cond_5
    iput-object v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    .line 362
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    new-instance v1, Lcom/android/settingslib/b/a;

    .line 364
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v0, v3, p0}, Lcom/android/settingslib/b/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->e:Lcom/android/settingslib/b/a;

    .line 365
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->b()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->b:Lcom/android/settingslib/RestrictedPreference;

    .line 366
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->i:Lcom/android/settings/accounts/c;

    iget-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->b:Lcom/android/settingslib/RestrictedPreference;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v4, "no_modify_accounts"

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settings/accounts/c;->a(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 369
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/android/settings/accounts/AccountPreferenceController$b;)V
    .locals 7

    .line 461
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    .line 462
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 466
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 467
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->h:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 469
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->e:Lcom/android/settingslib/b/a;

    iget-object v3, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    .line 470
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 469
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Lcom/android/settingslib/b/a;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v2

    .line 472
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_2

    .line 474
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountTypePreference;

    .line 475
    invoke-virtual {v4, v1}, Lcom/android/settings/accounts/AccountTypePreference;->setOrder(I)V

    .line 476
    invoke-virtual {v4}, Lcom/android/settings/accounts/AccountTypePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 477
    iget-object v6, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->h:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 478
    iget-object v6, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 479
    iget-object v6, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->h:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_2
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->b:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_3

    .line 483
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->b:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 485
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    iget-object v3, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->h:Landroid/util/ArrayMap;

    .line 487
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 486
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 488
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->h:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 491
    :cond_4
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 493
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    if-nez v0, :cond_5

    .line 494
    new-instance v0, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 495
    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    const v1, 0x7f08053b

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    const v1, 0x7f120d24

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 502
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 504
    :cond_6
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->c:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_7

    .line 505
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->c:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 507
    :cond_7
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->d:Landroidx/preference/Preference;

    if-eqz v0, :cond_8

    .line 508
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    iget-object p1, p1, Lcom/android/settings/accounts/AccountPreferenceController$b;->d:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->g()V

    return-void
.end method

.method private a(Lcom/android/settingslib/b/a;Ljava/lang/String;)Z
    .locals 3

    .line 587
    iget v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/b/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 594
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "No sync authorities for account type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountPrefController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    move p2, v0

    .line 597
    :goto_0
    iget v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->f:I

    if-ge p2, v2, :cond_3

    .line 598
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->e:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private b()Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 373
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 374
    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200ea

    .line 375
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    const-string v1, "add_account_key"

    .line 377
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->setAddIcon()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0806a1

    .line 379
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setIcon(I)V

    .line 382
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3e8

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->getAddLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setLayoutResource(I)V

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->a()V

    return-void
.end method

.method private c()Lcom/android/settingslib/RestrictedPreference;
    .locals 3

    .line 389
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 390
    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12122c

    .line 391
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    const v1, 0x7f0d00a7

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setLayoutResource(I)V

    const-string v1, "remove_managed_profile_key"

    .line 394
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v1

    const v2, 0x7f0806ca

    invoke-virtual {v1, v2}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->getRemoveIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setIcon(I)V

    .line 397
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3ea

    .line 398
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->f()V

    return-void
.end method

.method private d()Landroidx/preference/Preference;
    .locals 3

    .line 404
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120d25

    .line 405
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "managed_profile_settings_key"

    .line 407
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    move-result-object v1

    const v2, 0x7f080811

    invoke-virtual {v1, v2}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->getManagedIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 410
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/16 v1, 0x3e9

    .line 411
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private e()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 432
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$b;

    .line 433
    iget-boolean v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->g:Z

    if-eqz v3, :cond_1

    .line 434
    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 435
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private f()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 443
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$b;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->e:Lcom/android/settingslib/b/a;

    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {v2}, Lcom/android/settingslib/b/a;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 453
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$b;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$b;->e:Lcom/android/settingslib/b/a;

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {v2}, Lcom/android/settingslib/b/a;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()Z
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private i()Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->k:Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    if-nez v0, :cond_0

    .line 652
    const-class v0, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->k:Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    .line 653
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->k:Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;->bind(Ljava/lang/Object;)V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->k:Lcom/coloros/settings/adaptor/AccountPreferenceControllerAdaptor;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/UserHandle;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$b;

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Lcom/android/settings/accounts/AccountPreferenceController$b;)V

    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing Settings screen for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountPrefController"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200d3

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 189
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 190
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    iget-object v6, p0, Lcom/android/settings/accounts/AccountPreferenceController;->i:Lcom/android/settings/accounts/c;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "no_modify_accounts"

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/accounts/c;->a(Ljava/lang/String;I)Z

    move-result v6

    const v7, 0x7f080987

    if-nez v6, :cond_1

    .line 192
    new-instance v6, Lcom/android/settings/search/e;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v8, "add_account_key"

    .line 193
    iput-object v8, v6, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v8, 0x7f1200ea

    .line 194
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 195
    iput-object v1, v6, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 196
    iput v7, v6, Lcom/android/settings/search/e;->iconResId:I

    .line 197
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    iget-object v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->i:Lcom/android/settings/accounts/c;

    .line 201
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const-string v8, "no_remove_managed_profile"

    .line 200
    invoke-virtual {v5, v8, v6}, Lcom/android/settings/accounts/c;->a(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 202
    new-instance v5, Lcom/android/settings/search/e;

    iget-object v6, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "remove_managed_profile_key"

    .line 203
    iput-object v6, v5, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f12122c

    .line 204
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 205
    iput-object v1, v5, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 206
    iput v7, v5, Lcom/android/settings/search/e;->iconResId:I

    .line 207
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_2
    new-instance v5, Lcom/android/settings/search/e;

    iget-object v6, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v6, "managed_profile_settings_key"

    .line 210
    iput-object v6, v5, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v6, 0x7f120d25

    .line 211
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 212
    iput-object v1, v5, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 213
    iput v7, v5, Lcom/android/settings/search/e;->iconResId:I

    .line 214
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->a()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->g()V

    .line 230
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->c:Lcom/android/settings/accounts/AccountPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 1639
    iget-boolean v2, v0, Lcom/android/settings/accounts/AccountPreferenceController$a;->a:Z

    if-eqz v2, :cond_0

    .line 1640
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 1641
    iput-boolean v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$a;->a:Z

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 246
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 248
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$b;

    .line 249
    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->b:Lcom/android/settingslib/RestrictedPreference;

    const-string v5, "android.intent.extra.USER"

    const/4 v6, 0x1

    if-ne p1, v4, :cond_0

    .line 250
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "users_and_accounts_add_account"

    const-string v1, "1"

    .line 251
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v0, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->e:[Ljava/lang/String;

    const-string v1, "authorities"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v6

    .line 260
    :cond_0
    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->c:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v4, :cond_1

    .line 261
    iget-object p1, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 262
    invoke-static {p1}, Lcom/android/settings/accounts/RemoveUserFragment;->a(I)Lcom/android/settings/accounts/RemoveUserFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "removeUser"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accounts/RemoveUserFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v6

    .line 266
    :cond_1
    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->d:Landroidx/preference/Preference;

    if-ne p1, v4, :cond_2

    .line 267
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 268
    iget-object v0, v3, Lcom/android/settings/accounts/AccountPreferenceController$b;->f:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->g:Lcom/android/settings/SettingsPreferenceFragment;

    .line 270
    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 271
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120d25

    .line 2063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 222
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->a()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->c:Lcom/android/settings/accounts/AccountPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 1629
    iget-boolean v2, v0, Lcom/android/settings/accounts/AccountPreferenceController$a;->a:Z

    if-nez v2, :cond_0

    .line 1630
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1631
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1632
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1634
    iput-boolean v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$a;->a:Z

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->f()V

    return-void
.end method
