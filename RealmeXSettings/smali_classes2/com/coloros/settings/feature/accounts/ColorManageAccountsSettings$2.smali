.class final Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;
.super Ljava/lang/Object;
.source "ColorManageAccountsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Landroidx/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;->b:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;->a:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 525
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 533
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;->b:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;->a:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->a(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;->b:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$2;->b:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->b(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 536
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Refusing to launch authenticator intent because it exploits Settings permissions: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountPreferenceBase"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
