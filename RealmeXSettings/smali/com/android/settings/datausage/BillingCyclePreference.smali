.class public Lcom/android/settings/datausage/BillingCyclePreference;
.super Landroidx/preference/Preference;
.source "BillingCyclePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/g;


# instance fields
.field private a:Landroid/net/NetworkTemplate;

.field private b:Lcom/android/settings/datausage/g$a;

.field private c:I

.field private final d:Lcom/android/settings/datausage/CellDataPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance p1, Lcom/android/settings/datausage/BillingCyclePreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/BillingCyclePreference$1;-><init>(Lcom/android/settings/datausage/BillingCyclePreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->d:Lcom/android/settings/datausage/CellDataPreference$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/datausage/BillingCyclePreference;)V
    .locals 3

    const/4 v0, 0x0

    .line 1066
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->b:Lcom/android/settings/datausage/g$a;

    iget-object v1, v1, Lcom/android/settings/datausage/g$a;->a:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->b:Lcom/android/settings/datausage/g$a;

    iget-object v1, v1, Lcom/android/settings/datausage/g$a;->d:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->c:I

    .line 1067
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->b:Lcom/android/settings/datausage/g$a;

    iget-object v1, v1, Lcom/android/settings/datausage/g$a;->f:Landroid/os/UserManager;

    .line 1068
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1066
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1070
    :catch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->a:Landroid/net/NetworkTemplate;

    .line 57
    iput p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->c:I

    .line 58
    iput-object p3, p0, Lcom/android/settings/datausage/BillingCyclePreference;->b:Lcom/android/settings/datausage/g$a;

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCyclePreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->a:Landroid/net/NetworkTemplate;

    const-string v2, "network_template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120351

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onAttached()V
    .locals 4

    .line 43
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 44
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->d:Lcom/android/settings/datausage/CellDataPreference$a;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->c:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$a;->a(ZILandroid/content/Context;)V

    return-void
.end method

.method public onDetached()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->d:Lcom/android/settings/datausage/CellDataPreference$a;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->c:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$a;->a(ZILandroid/content/Context;)V

    .line 50
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method
