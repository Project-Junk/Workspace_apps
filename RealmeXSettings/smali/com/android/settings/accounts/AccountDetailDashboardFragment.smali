.class public Lcom/android/settings/accounts/AccountDetailDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccountDetailDashboardFragment.java"


# instance fields
.field a:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/android/settings/accounts/d;

.field private f:Lcom/android/settings/accounts/RemoveAccountPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AccountDetailDashboard"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v1, Lcom/android/settings/accounts/d;

    invoke-direct {v1, p1}, Lcom/android/settings/accounts/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->e:Lcom/android/settings/accounts/d;

    .line 143
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->e:Lcom/android/settings/accounts/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->f:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    .line 145
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->f:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Lcom/android/settings/accounts/AccountHeaderPreferenceController;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/accounts/AccountHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;)V

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lcom/android/settingslib/h/c;)Z
    .locals 3

    .line 153
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->a(Lcom/android/settingslib/h/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 3241
    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/h/c;->f:Landroid/os/Bundle;

    if-nez v0, :cond_2

    return v1

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->b:Ljava/lang/String;

    const-string v2, "com.android.settings.ia.account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4130
    iget-object p1, p1, Lcom/android/settingslib/h/c;->d:Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "extra.accountName"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->c:Landroid/os/UserHandle;

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    return v0
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a9c

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15000e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2174
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2176
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "user_handle"

    .line 2177
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2178
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2180
    :goto_0
    new-instance v2, Lcom/android/settingslib/b/a;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/settingslib/b/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V

    .line 2181
    new-instance p1, Lcom/android/settings/accounts/e;

    invoke-direct {p1, p0, v2, v0}, Lcom/android/settings/accounts/e;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/b/a;Landroid/os/UserHandle;)V

    .line 2183
    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->b:Ljava/lang/String;

    .line 2184
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 2183
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accounts/e;->a(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2186
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->a:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/accounts/e;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v2, "user"

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->c:Landroid/os/UserHandle;

    if-eqz p1, :cond_2

    const-string v0, "account"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->a:Landroid/accounts/Account;

    :cond_0
    const-string v0, "account_label"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->d:Ljava/lang/String;

    :cond_1
    const-string v0, "account_type"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->b:Ljava/lang/String;

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->e:Lcom/android/settings/accounts/d;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->c:Landroid/os/UserHandle;

    .line 1098
    iput-object v0, p1, Lcom/android/settings/accounts/d;->a:Landroid/accounts/Account;

    .line 1099
    iput-object v1, p1, Lcom/android/settings/accounts/d;->b:Landroid/os/UserHandle;

    .line 86
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->f:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    .line 2098
    iput-object v0, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->a:Landroid/accounts/Account;

    .line 2099
    iput-object v1, p1, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->b:Landroid/os/UserHandle;

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 115
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 3100
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3101
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 3102
    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 3103
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3104
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 3105
    iget-object v6, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->a:Landroid/accounts/Account;

    invoke-virtual {v5, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3110
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->finish()V

    :cond_2
    return-void
.end method
