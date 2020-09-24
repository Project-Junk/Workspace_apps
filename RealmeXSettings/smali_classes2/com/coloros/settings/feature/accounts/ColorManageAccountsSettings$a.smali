.class final Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;
.super Ljava/lang/Object;
.source "ColorManageAccountsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->a:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->b:Ljava/lang/String;

    const p1, 0x7f120c33

    .line 454
    iput p1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->c:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 461
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->a:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->a:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    .line 462
    invoke-virtual {v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->b:Ljava/lang/String;

    .line 463
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->c:I

    const/4 v1, 0x0

    .line 1063
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    .line 468
    iget-object p1, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->b:Ljava/lang/String;

    const-class v0, Lcom/coloros/settings/feature/security/location/ColorLocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings$a;->a:Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/accounts/ColorManageAccountsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
