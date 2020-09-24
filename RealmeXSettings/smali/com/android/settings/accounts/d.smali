.class public final Lcom/android/settings/accounts/d;
.super Lcom/android/settingslib/core/a;
.source "AccountSyncPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/b/a$a;


# instance fields
.field a:Landroid/accounts/Account;

.field b:Landroid/os/UserHandle;

.field private c:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroidx/preference/Preference;)V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/settings/accounts/d;->a:Landroid/accounts/Account;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/d;->b:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 108
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 112
    array-length v4, v1

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_4

    .line 113
    aget-object v8, v1, v5

    .line 114
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/accounts/d;->a:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 117
    iget-object v9, p0, Lcom/android/settings/accounts/d;->a:Landroid/accounts/Account;

    iget-object v10, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 118
    invoke-static {v9, v10, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 121
    iget-object v9, p0, Lcom/android/settings/accounts/d;->a:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v8, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    .line 124
    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v9

    xor-int/2addr v9, v3

    if-nez v9, :cond_1

    if-eqz v8, :cond_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v6, v2

    move v7, v6

    :cond_4
    if-nez v7, :cond_5

    const v0, 0x7f1200ce

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_5
    if-ne v7, v6, :cond_6

    const v0, 0x7f1200cf

    .line 134
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accounts/d;->mContext:Landroid/content/Context;

    const v1, 0x7f1200d0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/UserHandle;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/android/settings/accounts/d;->c:Landroidx/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/d;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/accounts/d;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/d;->c:Landroidx/preference/Preference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "account_sync"

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "account_sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 63
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/android/settings/accounts/d;->a:Landroid/accounts/Account;

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/accounts/d;->b:Landroid/os/UserHandle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/accounts/d;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x8

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f1200d1

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/d;->a(Landroidx/preference/Preference;)V

    return-void
.end method
