.class public final Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;,
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    }
.end annotation


# instance fields
.field a:Landroid/accounts/Account;

.field b:Landroid/os/UserHandle;

.field private c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "remove_account"

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a00fd

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "remove_account"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->b:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->b:Landroid/os/UserHandle;

    .line 87
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "no_modify_accounts"

    .line 86
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->b:Landroid/os/UserHandle;

    invoke-static {p1, v0, v1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->a(Landroidx/fragment/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    return-void
.end method
