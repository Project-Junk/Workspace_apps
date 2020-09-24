.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private g:Landroid/accounts/Account;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p3, 0x0

    .line 173
    invoke-virtual {v0, p3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 174
    iget-object p4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 175
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 174
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 179
    :cond_1
    invoke-virtual {p3, p1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Provider needs a label for authority \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountPreferenceBase"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0, p2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 368
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "force"

    .line 369
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 373
    :cond_0
    iget-object p3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 349
    instance-of v3, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v3, :cond_0

    .line 352
    check-cast v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 353
    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5160
    iget-object v3, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 5164
    iget-object v2, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 356
    invoke-direct {p0, v3, v2, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 361
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/accounts/Account;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 484
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 486
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
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

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 379
    iget-object v1, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 12

    const-string v0, "AccountPreferenceBase"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 306
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 305
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/accounts/AccountManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 313
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p1, v4}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p1, v4}, Landroid/accounts/AccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 318
    :try_start_1
    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/accounts/AccountSyncSettings;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v2, "Error requesting account access"

    .line 321
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1

    :catch_1
    move-exception p1

    const-string v2, "Invalid sync "

    .line 308
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private d()V
    .locals 10

    .line 494
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 496
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 497
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 496
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    const-string v6, "AccountPreferenceBase"

    if-ge v4, v2, :cond_3

    .line 500
    aget-object v7, v0, v4

    .line 502
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 503
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 504
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateAccountSwitches: added authority "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to accountType "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 512
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 516
    :cond_3
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "looking for sync adapters that match account "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    const-string v0, "pref_app_header"

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 522
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_7

    .line 523
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncAdapterType;

    .line 525
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v7, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 526
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 525
    invoke-static {v4, v7, v8}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v4

    .line 527
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  found authority "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-lez v4, :cond_6

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 534
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 533
    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 535
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v8, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 536
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 535
    invoke-direct {p0, v7, v8, v9, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No uid for package"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 542
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/UserHandle;)V
    .locals 0

    .line 469
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Landroid/os/UserHandle;)V

    .line 470
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    return-void

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->d()V

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->b()V

    return-void
.end method

.method protected final b()V
    .locals 21

    move-object/from16 v0, p0

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 5398
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 5399
    iget-object v2, v0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5400
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 5404
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->d()V

    .line 5406
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_11

    .line 5407
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    .line 5408
    instance-of v9, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v9, :cond_10

    .line 5411
    check-cast v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 6164
    iget-object v9, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 7160
    iget-object v10, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 5416
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v11

    .line 5417
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    if-nez v11, :cond_1

    const/4 v13, 0x0

    goto :goto_1

    .line 5419
    :cond_1
    iget-boolean v13, v11, Landroid/content/SyncStatusInfo;->pending:Z

    :goto_1
    if-nez v11, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    .line 5420
    :cond_2
    iget-boolean v14, v11, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 5422
    :goto_2
    invoke-static {v3, v10, v9}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    const-wide/16 v16, 0x0

    if-eqz v11, :cond_3

    move/from16 v18, v6

    .line 5423
    iget-wide v5, v11, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v5, v5, v16

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 5425
    invoke-virtual {v11, v5}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v6

    const/4 v5, 0x1

    if-eq v6, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    move/from16 v18, v6

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v12, :cond_5

    const/4 v5, 0x0

    :cond_5
    if-eqz v5, :cond_6

    if-nez v15, :cond_6

    if-nez v13, :cond_6

    const/4 v7, 0x1

    :cond_6
    const/4 v6, 0x3

    move-object/from16 v19, v3

    const-string v3, "AccountPreferenceBase"

    .line 5431
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5432
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v20, v4

    const-string v4, "Update sync status: "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " active = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " pend ="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move/from16 v20, v4

    :goto_4
    if-nez v11, :cond_8

    move-wide/from16 v3, v16

    goto :goto_5

    .line 5436
    :cond_8
    iget-wide v3, v11, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    :goto_5
    if-nez v12, :cond_9

    const v3, 0x7f121643

    .line 5438
    invoke-virtual {v8, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    :goto_6
    move-object/from16 v16, v1

    move v4, v7

    const/4 v11, 0x0

    goto :goto_7

    :cond_9
    if-eqz v15, :cond_a

    const v3, 0x7f121648

    .line 5440
    invoke-virtual {v8, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_6

    :cond_a
    cmp-long v6, v3, v16

    if-eqz v6, :cond_b

    .line 5442
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 5443
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v7

    .line 7551
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/16 v11, 0x15

    invoke-static {v3, v6, v7, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 5444
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120be5

    move-object/from16 v16, v1

    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v1, v11

    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    move-object/from16 v16, v1

    move v4, v7

    const/4 v11, 0x0

    const-string v1, ""

    .line 5446
    invoke-virtual {v8, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 5448
    :goto_7
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    if-eqz v15, :cond_c

    if-ltz v1, :cond_c

    if-nez v14, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    move v3, v11

    .line 8109
    :goto_8
    iput-boolean v3, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;->a:Z

    .line 8110
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    if-eqz v13, :cond_d

    if-ltz v1, :cond_d

    if-nez v14, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    move v1, v11

    .line 8118
    :goto_9
    iput-boolean v1, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;->b:Z

    .line 8119
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 8127
    iput-boolean v5, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;->c:Z

    .line 8128
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 5456
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    .line 8135
    iput-boolean v1, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;->h:Z

    .line 8136
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    if-nez v1, :cond_f

    if-eqz v12, :cond_e

    goto :goto_a

    :cond_e
    move v5, v11

    .line 5459
    :cond_f
    :goto_a
    invoke-virtual {v8, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    move v7, v4

    goto :goto_b

    :cond_10
    move-object/from16 v16, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v6

    const/4 v11, 0x0

    :goto_b
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto/16 :goto_0

    :cond_11
    if-eqz v7, :cond_12

    .line 5462
    iget-object v1, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const v2, 0x7f121649

    .line 5463
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 390
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 392
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_13
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x24b

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a9d

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccountPreferenceBase"

    if-nez p1, :cond_0

    const-string p1, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    return-void

    :cond_0
    const-string v1, "account"

    .line 115
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    .line 116
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Account provided does not exist: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Got account: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    .line 126
    invoke-static {p1, p0, v0}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1163
    iput-object v1, v0, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 129
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->g:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1173
    iput-object v1, v0, Lcom/android/settings/widget/b;->c:Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 235
    instance-of v1, v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 2172
    iget v1, v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->g:I

    if-ne v1, p1, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15000d

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string/jumbo p1, "user"

    .line 1137
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1138
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1139
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1140
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f1200c2

    goto :goto_1

    :cond_1
    const p1, 0x7f120073

    :goto_1
    const/4 v2, 0x1

    .line 1141
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 1142
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1145
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v1, p1}, Lcom/android/settings/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 73
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120495

    .line 74
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120494

    .line 75
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 76
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const v0, 0x7f12164c

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 190
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080743

    .line 192
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f12164b

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 193
    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "com.android.internal.R.drawable.ic_menu_close_clear_cancel"

    .line 195
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x4

    .line 197
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 199
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 202
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Z)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1340
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return v1

    .line 1329
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Z)V

    .line 1330
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1332
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_3
    return v1
.end method

.method public onPause()V
    .locals 1

    .line 158
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->c()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 251
    :cond_0
    instance-of v0, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v0, :cond_7

    .line 252
    check-cast p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 3164
    iget-object v0, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4160
    :cond_1
    iget-object v1, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 258
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 4168
    iget-object v3, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;->f:Ljava/lang/String;

    .line 261
    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 5143
    iget-boolean v5, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;->h:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 267
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v6

    .line 270
    :cond_2
    invoke-direct {p0, v1, v0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result p1

    if-eq p1, v4, :cond_6

    if-eqz p1, :cond_4

    .line 279
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v6

    .line 283
    :cond_4
    invoke-static {v1, v0, p1, v2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 287
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_6

    .line 288
    :cond_5
    invoke-direct {p0, v1, v0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_6
    :goto_0
    return v6

    .line 294
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 207
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 210
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 209
    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 211
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 212
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->b()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->c()V

    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Landroid/os/UserHandle;)V

    .line 153
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method
