.class public Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppChooseSavedWifiNetworkFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 101
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public static synthetic lambda$-fYjlMXMV9qislnA7TT6YekqtoU(Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/dpp/WifiNetworkListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f0a07ac

    const-string v2, "wifi_network_list_fragment"

    .line 69
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d03a7

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f08088a

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->b(I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f12198c    # 1.9419993E38f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f12198d    # 1.9419995E38f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0108

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->a:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->a:Landroid/widget/Button;

    const v1, 0x7f120491

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->a:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppChooseSavedWifiNetworkFragment$-fYjlMXMV9qislnA7TT6YekqtoU;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppChooseSavedWifiNetworkFragment$-fYjlMXMV9qislnA7TT6YekqtoU;-><init>(Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0109

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->e:Landroid/widget/Button;

    .line 108
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->e:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p2, :cond_0

    .line 112
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->d:Landroid/view/View;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method
