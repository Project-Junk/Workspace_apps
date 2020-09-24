.class public Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkDetailsFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog$a;


# instance fields
.field private a:Lcom/android/settingslib/wifi/a;

.field private b:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/WifiDialog$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiNetworkDetailsFrg"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 139
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    new-instance v6, Landroid/os/Handler;

    .line 144
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/wifi/WifiManager;

    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    move-object v4, p1

    move-object v5, p0

    .line 139
    invoke-static/range {v2 .. v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settingslib/wifi/a;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/d;)Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->b:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->b:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/android/settings/wifi/details/AddDevicePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/details/AddDevicePreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/details/AddDevicePreferenceController;->init(Lcom/android/settingslib/wifi/a;)Lcom/android/settings/wifi/details/AddDevicePreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    .line 1764
    iget-object v2, v2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 153
    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    .line 2764
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 158
    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->l()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->setIsEphemeral(Z)V

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    .line 161
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 160
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->setIsPasspoint(Z)V

    .line 162
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->b:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x25b

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x351

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150146

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/android/settingslib/wifi/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->b:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    if-nez p1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->a:Lcom/android/settingslib/wifi/a;

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->a(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$a;Lcom/android/settingslib/wifi/a;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1219e6

    .line 102
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "com.android.internal.R.drawable.ic_mode_edit"

    .line 106
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 108
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 110
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v1, 0x2

    .line 114
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->b:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/h;->d(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->showDialog(I)V

    :goto_0
    return v1
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiDialog$a;

    .line 175
    invoke-interface {v1, p1}, Lcom/android/settings/wifi/WifiDialog$a;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    :cond_0
    return-void
.end method
