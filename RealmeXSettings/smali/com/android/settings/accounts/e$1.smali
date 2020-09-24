.class final Lcom/android/settings/accounts/e$1;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/e;->a(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/accounts/e;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/e;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/accounts/e$1;->c:Lcom/android/settings/accounts/e;

    iput-object p2, p0, Lcom/android/settings/accounts/e$1;->a:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/accounts/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lcom/android/settings/accounts/e$1;->c:Lcom/android/settings/accounts/e;

    iget-object v1, p0, Lcom/android/settings/accounts/e$1;->a:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/accounts/e$1;->b:Ljava/lang/String;

    .line 1052
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/accounts/e;->a(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/accounts/e$1;->c:Lcom/android/settings/accounts/e;

    .line 2052
    iget-object v0, v0, Lcom/android/settings/accounts/e;->b:Landroidx/preference/PreferenceFragmentCompat;

    .line 168
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/e$1;->c:Lcom/android/settings/accounts/e;

    .line 3052
    iget-object v1, v1, Lcom/android/settings/accounts/e;->a:Landroid/os/UserHandle;

    .line 168
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountTypePrefLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
