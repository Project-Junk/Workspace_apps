.class public Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ColorAccountSyncSettings.java"


# instance fields
.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/accounts/Account;

.field private l:Ljava/util/ArrayList;
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

    .line 65
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 77
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->l:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 284
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    const/4 p1, 0x0

    .line 292
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setPersistent(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object p4, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 294
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 293
    invoke-virtual {p3, p2, p1, p4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    .line 299
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 300
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

    :cond_2
    const p4, 0x7f12164a

    const/4 v1, 0x1

    .line 303
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, p1

    invoke-virtual {p0, p4, v1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v0, p2}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 446
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "force"

    .line 447
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void

    .line 451
    :cond_0
    iget-object p3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 90
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    new-instance v3, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$3wX5ftx2Dowt5bfbiULcte68-lc;-><init>(Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;Landroid/content/DialogInterface;)V

    iget-object v5, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    const/4 v4, 0x0

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 99
    :try_start_0
    invoke-interface {p2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string v1, "booleanResult"

    .line 100
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, p2

    :catch_0
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 113
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    const/16 p1, 0x65

    .line 115
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->showDialog(I)V

    return-void

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->finish()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 427
    instance-of v3, v2, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    if-eqz v3, :cond_0

    .line 430
    check-cast v2, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    .line 431
    invoke-virtual {v2}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8169
    iget-object v3, v2, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 8173
    iget-object v2, v2, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 434
    invoke-direct {p0, v3, v2, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 439
    iget-object v2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/accounts/Account;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 561
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 563
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

    .line 456
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 457
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

    .line 383
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 384
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 383
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/accounts/AccountManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 391
    iget-object v3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p1, v4}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, p1, v4}, Landroid/accounts/AccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    .line 396
    :try_start_1
    invoke-virtual/range {v4 .. v11}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v2, "Error requesting account access"

    .line 399
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1

    :catch_1
    move-exception p1

    const-string v2, "Invalid sync "

    .line 386
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private d()V
    .locals 12

    .line 571
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 573
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 574
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 573
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    const-string v6, "AccountPreferenceBase"

    if-ge v4, v2, :cond_3

    .line 577
    aget-object v7, v0, v4

    .line 579
    iget-object v8, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v9, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 582
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 583
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "updateAccountSwitches: added authority "

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

    .line 587
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 591
    :cond_1
    iget-object v5, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 598
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 599
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_6

    .line 601
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncAdapterType;

    .line 603
    iget-object v8, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v9, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v10, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    .line 604
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 603
    invoke-static {v8, v9, v10}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v8

    .line 605
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 606
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  found authority "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-lez v8, :cond_5

    .line 611
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 612
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 611
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    .line 613
    iget-object v9, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v10, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 614
    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 613
    invoke-direct {p0, v9, v10, v11, v8}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    .line 616
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No uid for package"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 621
    :cond_6
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 623
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    move v2, v3

    :goto_4
    if-ge v2, v1, :cond_8

    .line 624
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 625
    instance-of v5, v4, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    if-eqz v5, :cond_7

    .line 626
    invoke-static {v4, v2, v1, v3}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/Preference;IIZ)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public static synthetic lambda$3wX5ftx2Dowt5bfbiULcte68-lc(Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;Landroid/content/DialogInterface;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/content/DialogInterface;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method public static synthetic lambda$CuFnsCnKKVD3drD_6lPI1qNyp_8(Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 637
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->a()V

    .line 638
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 639
    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->i:Landroid/widget/ImageView;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/UserHandle;)V
    .locals 0

    .line 544
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->a(Landroid/os/UserHandle;)V

    .line 545
    iget-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->finish()V

    return-void

    .line 550
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->d()V

    .line 551
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->b()V

    return-void
.end method

.method public final b()V
    .locals 20

    move-object/from16 v0, p0

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8474
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 8475
    iget-object v2, v0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 8476
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 8480
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->d()V

    .line 8482
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_10

    .line 8483
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    .line 8484
    instance-of v9, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    if-eqz v9, :cond_f

    .line 8487
    check-cast v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    .line 9173
    iget-object v9, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 10169
    iget-object v10, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 8492
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v11

    .line 8493
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    if-nez v11, :cond_1

    const/4 v13, 0x0

    goto :goto_1

    .line 8495
    :cond_1
    iget-boolean v13, v11, Landroid/content/SyncStatusInfo;->pending:Z

    :goto_1
    if-nez v11, :cond_2

    const/4 v14, 0x0

    goto :goto_2

    .line 8496
    :cond_2
    iget-boolean v14, v11, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 8498
    :goto_2
    invoke-static {v3, v10, v9}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    const-wide/16 v16, 0x0

    if-eqz v11, :cond_3

    move/from16 v18, v6

    .line 8499
    iget-wide v5, v11, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v5, v5, v16

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 8501
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
    if-nez v11, :cond_7

    move-object v6, v3

    move/from16 v19, v4

    move-wide/from16 v3, v16

    goto :goto_4

    :cond_7
    move-object v6, v3

    move/from16 v19, v4

    .line 8514
    iget-wide v3, v11, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    :goto_4
    if-nez v12, :cond_8

    const v3, 0x7f121643

    .line 8516
    invoke-virtual {v8, v3}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setSummary(I)V

    :goto_5
    move-object/from16 v17, v1

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    if-eqz v15, :cond_9

    const v3, 0x7f121648

    .line 8518
    invoke-virtual {v8, v3}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setSummary(I)V

    goto :goto_5

    :cond_9
    cmp-long v11, v3, v16

    if-eqz v11, :cond_a

    .line 8520
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 10651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->e:Ljava/text/DateFormat;

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->f:Ljava/text/DateFormat;

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8522
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v17, v1

    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v1, v11

    const v3, 0x7f120be5

    invoke-virtual {v4, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    move-object/from16 v17, v1

    const/4 v11, 0x0

    const-string v1, ""

    .line 8524
    invoke-virtual {v8, v1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 8526
    :goto_6
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    if-eqz v15, :cond_b

    if-ltz v1, :cond_b

    if-nez v14, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    move v3, v11

    .line 11118
    :goto_7
    iput-boolean v3, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->a:Z

    .line 11119
    invoke-virtual {v8}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->notifyChanged()V

    if-eqz v13, :cond_c

    if-ltz v1, :cond_c

    if-nez v14, :cond_c

    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    move v1, v11

    .line 11127
    :goto_8
    iput-boolean v1, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->b:Z

    .line 11128
    invoke-virtual {v8}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->notifyChanged()V

    .line 11136
    iput-boolean v5, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->c:Z

    .line 11137
    invoke-virtual {v8}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->notifyChanged()V

    .line 8534
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    const/4 v5, 0x1

    xor-int/2addr v1, v5

    .line 11144
    iput-boolean v1, v8, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->h:Z

    .line 11145
    invoke-virtual {v8}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->notifyChanged()V

    if-nez v1, :cond_e

    if-eqz v12, :cond_d

    goto :goto_9

    :cond_d
    move v5, v11

    .line 8537
    :cond_e
    :goto_9
    invoke-virtual {v8, v5}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->setChecked(Z)V

    goto :goto_a

    :cond_f
    move-object/from16 v17, v1

    move/from16 v19, v4

    move/from16 v18, v6

    const/4 v11, 0x0

    move-object v6, v3

    :goto_a
    add-int/lit8 v1, v18, 0x1

    move-object v3, v6

    move/from16 v4, v19

    move v6, v1

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_10
    const/4 v11, 0x0

    .line 8539
    iget-object v1, v0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->j:Landroid/widget/TextView;

    if-eqz v7, :cond_11

    move v5, v11

    goto :goto_b

    :cond_11
    const/16 v5, 0x8

    :goto_b
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/16 p1, 0x24b

    return p1

    :pswitch_1
    const/16 p1, 0x24a

    return p1

    :pswitch_2
    const/16 p1, 0x249

    return p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 2

    .line 237
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccountPreferenceBase"

    if-nez p1, :cond_0

    const-string p1, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    .line 241
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->finish()V

    return-void

    :cond_0
    const-string v1, "account"

    .line 245
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    .line 246
    iget-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Account provided does not exist"

    .line 247
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->finish()V

    return-void

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->k:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 316
    instance-of v1, v0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    .line 5181
    iget v1, v0, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->g:I

    if-ne v1, p1, :cond_0

    .line 319
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f130148

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    const p1, 0x7f15003a

    .line 162
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string p1, "user"

    .line 1256
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1257
    iget-object v2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1258
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1259
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz p1, :cond_1

    const p1, 0x7f1200c2

    goto :goto_1

    :cond_1
    const p1, 0x7f120073

    .line 1260
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 1261
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1264
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v2, p1}, Lcom/android/settings/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const v0, 0x7f1211af

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 83
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1211ae

    .line 85
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 86
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121227

    new-instance v1, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$CuFnsCnKKVD3drD_6lPI1qNyp_8;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/accounts/-$$Lambda$ColorAccountSyncSettings$CuFnsCnKKVD3drD_6lPI1qNyp_8;-><init>(Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;)V

    .line 87
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x65

    const v3, 0x104000a

    if-ne p1, v2, :cond_1

    .line 123
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121226

    .line 126
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 129
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120495

    .line 130
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120494

    .line 131
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 196
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 3190
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0e001b

    goto :goto_1

    :cond_1
    const v0, 0x7f0e001a

    .line 3191
    :goto_1
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 173
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f130148

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a06c0

    .line 2225
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->j:Landroid/widget/TextView;

    .line 2226
    iget-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->j:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0a0700

    .line 2227
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const p2, 0x7f0a0773

    .line 2230
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->g:Landroid/widget/TextView;

    const p2, 0x7f0a052a

    .line 2231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->h:Landroid/widget/TextView;

    const p2, 0x7f0a0529

    .line 2232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->i:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v0, 0x1

    .line 3407
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Z)V

    .line 3408
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3410
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x0

    .line 3415
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Z)V

    .line 3416
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3418
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x64

    .line 210
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->showDialog(I)V

    .line 4182
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4183
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;Landroid/content/res/Resources;)V

    .line 219
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0561 -> :sswitch_2
        0x7f0a06be -> :sswitch_1
        0x7f0a06bf -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 278
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 279
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->c()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 329
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 332
    :cond_0
    instance-of v0, p1, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    if-eqz v0, :cond_6

    .line 333
    check-cast p1, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;

    .line 6173
    iget-object v0, p1, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->e:Ljava/lang/String;

    .line 7169
    iget-object v1, p1, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->d:Landroid/accounts/Account;

    .line 336
    iget-object v2, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 7177
    iget-object v3, p1, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->f:Ljava/lang/String;

    .line 339
    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 8152
    iget-boolean v5, p1, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->h:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 345
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v6

    .line 348
    :cond_1
    invoke-direct {p0, v1, v0, v6}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/settings/feature/accounts/ColorSyncStateSwitchPreference;->isChecked()Z

    move-result p1

    if-eq p1, v4, :cond_5

    if-eqz p1, :cond_3

    .line 357
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v6

    .line 361
    :cond_3
    invoke-static {v1, v0, p1, v2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 365
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_5

    .line 366
    :cond_4
    invoke-direct {p0, v1, v0, p1}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_5
    :goto_0
    return v6

    .line 372
    :cond_6
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    const-string v0, "dummy"

    .line 269
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->removePreference(Ljava/lang/String;)Z

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->b()V

    .line 271
    invoke-virtual {p0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->c()V

    .line 272
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/accounts/ColorAccountSyncSettings;->a(Landroid/os/UserHandle;)V

    .line 273
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method
