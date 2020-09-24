.class public final Lcom/android/settings/wifi/i;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static a(Lcom/android/settingslib/wifi/a;)I
    .locals 3

    .line 1764
    iget-object v0, p0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 268
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/a;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 2014
    :cond_0
    iget v1, p0, Lcom/android/settingslib/wifi/a;->e:I

    if-eqz v1, :cond_4

    .line 3014
    iget v1, p0, Lcom/android/settingslib/wifi/a;->e:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 4014
    iget v1, p0, Lcom/android/settingslib/wifi/a;->e:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "device_policy"

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.software.device_admin"

    .line 83
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    return v4

    :cond_1
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 91
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    .line 93
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 95
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_2

    move p1, v4

    goto :goto_0

    :catch_0
    :cond_2
    move p1, v0

    :goto_0
    if-nez p1, :cond_3

    return v0

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_device_owner_configs_lockdown"

    .line 106
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method public static a(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 114
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
