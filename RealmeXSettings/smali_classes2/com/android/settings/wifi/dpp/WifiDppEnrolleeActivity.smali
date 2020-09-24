.class public Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "WifiDppEnrolleeActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;


# instance fields
.field private a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/wifi/dpp/c;)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130193

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->setTheme(I)V

    :cond_0
    const v0, 0x7f0d03a5

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->a:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1077
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x7c1bddca

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    const-string p1, "WifiDppEnrolleeActivity"

    const-string v1, "Launch with an invalid action"

    .line 1083
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->finish()V

    goto :goto_1

    :cond_3
    const-string v1, "ssid"

    .line 1079
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1089
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->a:Landroidx/fragment/app/FragmentManager;

    const-string v2, "qr_code_scanner_fragment"

    .line 1090
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez v1, :cond_4

    .line 1094
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>(Ljava/lang/String;)V

    .line 1105
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v3, 0x7f0a02c4

    .line 1107
    invoke-virtual {p1, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1112
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 1096
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1102
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 69
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_6
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppEnrolleeActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
