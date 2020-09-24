.class public Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ColorManageAccountsSettings.java"

# interfaces
.implements Lcom/android/settingslib/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;
    }
.end annotation


# instance fields
.field private final g:Landroid/os/Handler;

.field private h:[Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Landroid/accounts/Account;

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->g:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$1;-><init>(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->l:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->d:Lcom/android/settings/accounts/e;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/accounts/e;->a(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroidx/preference/PreferenceGroup;)V
    .locals 6

    .line 484
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 485
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 486
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 487
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 488
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Landroidx/preference/PreferenceGroup;)V

    .line 490
    :cond_0
    invoke-virtual {v2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 506
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    new-instance v3, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;

    const-class v4, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    .line 511
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;-><init>(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_1
    const/high16 v4, 0x10000

    .line 514
    iget-object v5, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    .line 515
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 514
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_2

    .line 517
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 520
    :cond_2
    iget-object v4, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->k:Landroid/accounts/Account;

    const-string v5, "account"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 521
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    new-instance v3, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;-><init>(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;)V
    .locals 26

    move-object/from16 v0, p0

    .line 4278
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 4282
    :cond_0
    iget-object v1, v0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 4285
    invoke-static {v1}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v2

    .line 4288
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 4291
    invoke-static {v1}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 4292
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4293
    array-length v6, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    .line 4294
    aget-object v9, v4, v8

    .line 4295
    invoke-virtual {v9}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4296
    iget-object v9, v9, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4299
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v4, :cond_10

    .line 4300
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v9

    .line 4301
    instance-of v10, v9, Lcom/android/settings/accounts/AccountPreference;

    if-eqz v10, :cond_f

    .line 4305
    check-cast v9, Lcom/android/settings/accounts/AccountPreference;

    .line 5066
    iget-object v10, v9, Lcom/android/settings/accounts/AccountPreference;->a:Landroid/accounts/Account;

    .line 5070
    iget-object v11, v9, Lcom/android/settings/accounts/AccountPreference;->b:Ljava/util/ArrayList;

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_a

    .line 4313
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v19, v8

    move-wide/from16 v17, v12

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v14, v20

    check-cast v14, Ljava/lang/String;

    .line 4314
    invoke-static {v10, v14, v1}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v7

    .line 5375
    invoke-static {v10, v14, v1}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 5376
    invoke-static {v1}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 5377
    invoke-static {v10, v14, v1}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v21

    if-lez v21, :cond_3

    const/16 v21, 0x1

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    .line 4317
    :goto_3
    invoke-static {v10, v14}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v22

    .line 4318
    invoke-static {v2, v10, v14}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v23

    if-eqz v7, :cond_4

    if-eqz v21, :cond_4

    move/from16 v24, v1

    move-object/from16 v25, v2

    .line 4319
    iget-wide v1, v7, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 4322
    invoke-virtual {v7, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    move/from16 v24, v1

    move-object/from16 v25, v2

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_6

    if-nez v23, :cond_6

    if-nez v22, :cond_6

    const/4 v8, 0x1

    const/16 v19, 0x1

    :cond_6
    or-int v16, v16, v23

    if-eqz v7, :cond_7

    .line 4329
    iget-wide v1, v7, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v1, v17, v1

    if-gez v1, :cond_7

    .line 4330
    iget-wide v1, v7, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v17, v1

    :cond_7
    if-eqz v21, :cond_8

    .line 4332
    invoke-virtual {v5, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v15, v1

    move/from16 v1, v24

    move-object/from16 v2, v25

    goto :goto_2

    :cond_9
    move/from16 v24, v1

    move-object/from16 v25, v2

    move-wide/from16 v1, v17

    goto :goto_6

    :cond_a
    move/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v19, v8

    move-wide v1, v12

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_6
    if-eqz v8, :cond_b

    const/4 v1, 0x2

    const/4 v7, 0x1

    .line 4338
    invoke-virtual {v9, v1, v7}, Lcom/android/settings/accounts/AccountPreference;->a(IZ)V

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    :cond_b
    const/4 v7, 0x1

    if-eqz v15, :cond_e

    if-lez v15, :cond_e

    if-eqz v16, :cond_c

    const/4 v1, 0x3

    .line 4343
    invoke-virtual {v9, v1, v7}, Lcom/android/settings/accounts/AccountPreference;->a(IZ)V

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    .line 4345
    invoke-virtual {v9, v8, v7}, Lcom/android/settings/accounts/AccountPreference;->a(IZ)V

    cmp-long v7, v1, v12

    if-lez v7, :cond_d

    .line 4347
    invoke-virtual {v9, v8, v8}, Lcom/android/settings/accounts/AccountPreference;->a(IZ)V

    .line 4348
    invoke-virtual {v3, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 5612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->e:Ljava/text/DateFormat;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->f:Ljava/text/DateFormat;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4350
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f120be5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    invoke-virtual {v2, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/settings/accounts/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_d
    move v10, v8

    goto :goto_8

    :cond_e
    move v8, v7

    const/4 v10, 0x0

    .line 4355
    invoke-virtual {v9, v8, v8}, Lcom/android/settings/accounts/AccountPreference;->a(IZ)V

    :goto_8
    move/from16 v8, v19

    goto :goto_9

    :cond_f
    move/from16 v24, v1

    move-object/from16 v25, v2

    const/4 v10, 0x0

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v24

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_10
    const/4 v10, 0x0

    .line 4359
    iget-object v0, v0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->i:Landroid/widget/TextView;

    if-eqz v8, :cond_11

    move v7, v10

    goto :goto_a

    :cond_11
    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    :goto_b
    return-void
.end method

.method private a(Z)V
    .locals 11

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 233
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 234
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "force"

    .line 235
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 240
    instance-of v7, v6, Lcom/android/settings/accounts/AccountPreference;

    if-eqz v7, :cond_2

    .line 241
    check-cast v6, Lcom/android/settings/accounts/AccountPreference;

    .line 3066
    iget-object v6, v6, Lcom/android/settings/accounts/AccountPreference;->a:Landroid/accounts/Account;

    move v7, v4

    .line 243
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_2

    .line 244
    aget-object v8, v1, v7

    .line 245
    aget-object v9, v1, v7

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 246
    invoke-static {v6, v9, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz p1, :cond_0

    .line 249
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v8, v0, v2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_2

    .line 252
    :cond_0
    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v6, v8, v0}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 5

    .line 557
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b:Lcom/android/settingslib/b/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    .line 558
    invoke-virtual {v0, v1}, Lcom/android/settingslib/b/a;->b(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    .line 560
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_0

    return v2

    .line 564
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 565
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 567
    :try_start_0
    iget-boolean v3, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 568
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v3, :cond_1

    return v4

    .line 570
    :cond_1
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    return v4

    .line 575
    :cond_2
    iget-object p2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 576
    iget p2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, p1, :cond_3

    return v4

    :cond_3
    return v2

    :catch_0
    move-exception p1

    const-string p2, "AccountPreferenceBase"

    const-string v0, "Intent considered unsafe due to exception."

    .line 578
    invoke-static {p2, v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method static synthetic a(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 364
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 366
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncInfo;

    .line 367
    iget-object v4, v3, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/b/a;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 11

    .line 387
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    .line 391
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 390
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    const/4 v1, 0x0

    .line 393
    iput-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->k:Landroid/accounts/Account;

    const v1, 0x7f150055

    .line 394
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 395
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    .line 396
    aget-object v4, v0, v3

    .line 398
    iget-object v5, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 401
    :cond_1
    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 404
    iget-object v6, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->h:[Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 406
    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    .line 407
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move v7, v2

    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 415
    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 416
    new-instance v6, Lcom/android/settings/accounts/AccountPreference;

    .line 417
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v4, v5}, Lcom/android/settings/accounts/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    const v5, 0x7f0d00a7

    .line 418
    invoke-virtual {v6, v5}, Lcom/android/settings/accounts/AccountPreference;->setLayoutResource(I)V

    .line 419
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 420
    iget-object v5, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->k:Landroid/accounts/Account;

    if-nez v5, :cond_5

    .line 421
    iput-object v4, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->k:Landroid/accounts/Account;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->k:Landroid/accounts/Account;

    if-eqz v0, :cond_7

    .line 426
    invoke-direct {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->e()V

    return-void

    .line 429
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->finish()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Landroidx/preference/PreferenceGroup;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 586
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 588
    instance-of v2, v1, Lcom/android/settings/accounts/AccountPreference;

    if-eqz v2, :cond_0

    .line 589
    check-cast v1, Lcom/android/settings/accounts/AccountPreference;

    .line 4066
    iget-object v2, v1, Lcom/android/settings/accounts/AccountPreference;->a:Landroid/accounts/Account;

    .line 590
    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/UserHandle;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->d()V

    .line 383
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b()V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 263
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a06c0

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->i:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->h:[Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "account_label"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f130145

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "account_type"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->j:Ljava/lang/String;

    :cond_0
    const p1, 0x7f150055

    .line 118
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->addPreferencesFromResource(I)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f12164c

    .line 200
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f08085f

    .line 201
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f12164b

    .line 203
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    .line 204
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f130145

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onDestroy()V

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 225
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Z)V

    return v1

    .line 222
    :cond_1
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Z)V

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->c()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 180
    instance-of v0, p1, Lcom/android/settings/accounts/AccountPreference;

    if-eqz v0, :cond_0

    .line 181
    move-object v0, p1

    check-cast v0, Lcom/android/settings/accounts/AccountPreference;

    .line 1187
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2066
    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreference;->a:Landroid/accounts/Account;

    const-string v2, "account"

    .line 1188
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1189
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1190
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 1191
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    const-class v2, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;

    .line 1192
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f1200cd

    .line 3063
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 1195
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c:Landroid/os/UserHandle;

    .line 213
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 212
    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 214
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 215
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 126
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->b()V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->c()V

    .line 129
    invoke-direct {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->d()V

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 169
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 170
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
