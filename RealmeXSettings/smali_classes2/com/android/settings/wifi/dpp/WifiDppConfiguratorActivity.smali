.class public Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "WifiDppConfiguratorActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$a;
.implements Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;
.implements Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$a;
.implements Lcom/android/settings/wifi/dpp/b$a;


# instance fields
.field a:Lcom/android/settings/wifi/dpp/b;

.field b:Lcom/android/settings/wifi/dpp/c;

.field private c:Landroidx/fragment/app/FragmentManager;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    const-string v1, "choose_saved_wifi_network_fragment"

    .line 234
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    if-nez v0, :cond_2

    .line 238
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;-><init>()V

    .line 239
    iget-boolean v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->d:Z

    if-eqz v2, :cond_0

    .line 240
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "test"

    .line 241
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->setArguments(Landroid/os/Bundle;)V

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a02c4

    .line 256
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 259
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 261
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 245
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppChooseSavedWifiNetworkFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 251
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private b(Z)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    const-string v1, "add_device_fragment"

    .line 266
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    if-nez v0, :cond_1

    .line 270
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;-><init>()V

    .line 281
    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0a02c4

    .line 283
    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 286
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 288
    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 272
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 346
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a(Z)V

    return-void
.end method

.method public final a(Lcom/android/settings/wifi/dpp/b;)V
    .locals 1

    .line 369
    new-instance v0, Lcom/android/settings/wifi/dpp/b;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/b;-><init>(Lcom/android/settings/wifi/dpp/b;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    const/4 p1, 0x1

    .line 371
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b(Z)V

    return-void
.end method

.method public final a(Lcom/android/settings/wifi/dpp/c;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b:Lcom/android/settings/wifi/dpp/c;

    const/4 p1, 0x1

    .line 341
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b(Z)V

    return-void
.end method

.method public final b()Lcom/android/settings/wifi/dpp/b;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d03a5

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "key_qr_code"

    .line 104
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/c;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b:Lcom/android/settings/wifi/dpp/c;

    const-string v1, "key_wifi_security"

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "key_wifi_ssid"

    .line 109
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "key_wifi_preshared_key"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "key_wifi_hidden_ssid"

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "key_wifi_network_id"

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v1, "key_is_hotspot"

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 115
    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    goto/16 :goto_9

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1131
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x35cc7698    # -2941530.0f

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x158370ce

    if-eq v2, v3, :cond_2

    const v3, 0x512412b9

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v2, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_1

    :cond_3
    const-string v2, "android.settings.PROCESS_WIFI_EASY_CONNECT_URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v5

    :goto_1
    const v2, 0x7f0a02c4

    if-eqz v1, :cond_16

    if-eq v1, v6, :cond_13

    const-string v2, "WifiDppConfiguratorActivity"

    if-eq v1, v4, :cond_5

    const-string p1, "Launch with an invalid action"

    .line 1173
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1151
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    move-object v1, v3

    goto :goto_2

    .line 1152
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v4, "test"

    .line 1153
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->d:Z

    .line 1154
    invoke-static {v1}, Lcom/android/settings/wifi/dpp/c;->a(Ljava/lang/String;)Lcom/android/settings/wifi/dpp/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b:Lcom/android/settings/wifi/dpp/c;

    .line 1155
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string v1, "Device doesn\'t support Wifi DPP"

    .line 1157
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b:Lcom/android/settings/wifi/dpp/c;

    if-eqz v1, :cond_1a

    if-nez p1, :cond_8

    goto/16 :goto_8

    .line 1375
    :cond_8
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 1376
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1380
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1385
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1386
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    .line 1387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1388
    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v1, :cond_9

    .line 1390
    invoke-static {v2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    .line 1391
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v12, 0x0

    .line 1389
    invoke-static/range {v7 .. v12}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/b;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_12

    .line 2210
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2214
    iget-object p1, v3, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 2219
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 2220
    iget-object v1, v3, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x13fb7

    if-eq v2, v4, :cond_c

    const v4, 0x15088

    if-eq v2, v4, :cond_b

    goto :goto_3

    :cond_b
    const-string v2, "WPA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v5, v6

    goto :goto_3

    :cond_c
    const-string v2, "SAE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v5, v0

    :cond_d
    :goto_3
    if-eqz v5, :cond_e

    if-eq v5, v6, :cond_10

    goto :goto_4

    .line 2222
    :cond_e
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    :goto_4
    move v6, v0

    :cond_10
    :goto_5
    if-nez v6, :cond_11

    goto :goto_6

    .line 1166
    :cond_11
    iput-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 1167
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b(Z)V

    goto :goto_7

    .line 1164
    :cond_12
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a(Z)V

    goto :goto_7

    .line 1142
    :cond_13
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/b;->a(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/b;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_8

    .line 1146
    :cond_14
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 1209
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_generator_fragment"

    .line 1210
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    if-nez p1, :cond_15

    .line 1214
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    invoke-direct {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;-><init>()V

    .line 1225
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 1227
    invoke-virtual {v3, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1229
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_7

    .line 1216
    :cond_15
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_19

    .line 1222
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_7

    .line 1133
    :cond_16
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/b;->a(Landroid/content/Intent;)Lcom/android/settings/wifi/dpp/b;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_8

    .line 1137
    :cond_17
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 1182
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    const-string v1, "qr_code_scanner_fragment"

    .line 1183
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    if-nez p1, :cond_18

    .line 1187
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;-><init>()V

    .line 1198
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    .line 1200
    invoke-virtual {v3, v2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1205
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_7

    .line 1189
    :cond_18
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_19

    .line 1195
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    :cond_19
    :goto_7
    move v6, v0

    :cond_1a
    :goto_8
    if-eqz v6, :cond_1b

    .line 1177
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->finish()V

    .line 121
    :cond_1b
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1c
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b:Lcom/android/settings/wifi/dpp/c;

    if-eqz v0, :cond_0

    .line 3199
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/c;->a:Ljava/lang/String;

    const-string v1, "key_qr_code"

    .line 352
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    if-eqz v0, :cond_1

    .line 4186
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    const-string v1, "key_wifi_security"

    .line 356
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 4190
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    const-string v1, "key_wifi_ssid"

    .line 357
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 4194
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    const-string v1, "key_wifi_preshared_key"

    .line 358
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 4198
    iget-boolean v0, v0, Lcom/android/settings/wifi/dpp/b;->d:Z

    const-string v1, "key_wifi_hidden_ssid"

    .line 359
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 4202
    iget v0, v0, Lcom/android/settings/wifi/dpp/b;->e:I

    const-string v1, "key_wifi_network_id"

    .line 360
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 4206
    iget-boolean v0, v0, Lcom/android/settings/wifi/dpp/b;->f:Z

    const-string v1, "key_is_hotspot"

    .line 361
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
