.class public Lcom/android/settings/accounts/AccountHeaderPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AccountHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroidx/preference/PreferenceFragmentCompat;

.field private final c:Landroid/accounts/Account;

.field private final d:Landroid/os/UserHandle;

.field private e:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->a:Landroid/app/Activity;

    .line 57
    iput-object p4, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->b:Landroidx/preference/PreferenceFragmentCompat;

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    const-string p3, "account"

    .line 58
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 59
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->c:Landroid/accounts/Account;

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->c:Landroid/accounts/Account;

    :goto_0
    if-eqz p5, :cond_1

    const-string/jumbo p3, "user_handle"

    .line 64
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 65
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->d:Landroid/os/UserHandle;

    goto :goto_1

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->d:Landroid/os/UserHandle;

    :goto_1
    if-eqz p2, :cond_2

    .line 70
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "account_header"

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->e:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "account_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->c:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->d:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 5

    .line 92
    new-instance v0, Lcom/android/settingslib/b/a;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->d:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/b/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->b:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->e:Lcom/android/settingslib/widget/LayoutPreference;

    const v4, 0x7f0a0260

    .line 95
    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->c:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1163
    iput-object v2, v1, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 96
    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->c:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method
