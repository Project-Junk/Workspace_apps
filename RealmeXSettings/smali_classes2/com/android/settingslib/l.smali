.class public Lcom/android/settingslib/l;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:[I

.field static final d:[I

.field private static e:[Landroid/content/pm/Signature;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    .line 50
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/l;->a:[I

    .line 58
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/settingslib/l;->b:[I

    .line 66
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/settingslib/l;->c:[I

    .line 74
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settingslib/l;->d:[I

    return-void

    :array_0
    .array-data 4
        0x108054d
        0x108054e
        0x108054f
        0x1080550
        0x1080551
    .end array-data

    :array_1
    .array-data 4
        0x108053d
        0x108053e
        0x108053f
        0x1080540
        0x1080541
    .end array-data

    :array_2
    .array-data 4
        0x1080542
        0x1080543
        0x1080544
        0x1080545
        0x1080546
    .end array-data

    :array_3
    .array-data 4
        0x1080547
        0x1080548
        0x1080549
        0x108054a
        0x108054b
    .end array-data
.end method

.method public static a(IIZ)I
    .locals 2

    if-ltz p0, :cond_4

    .line 358
    sget-object v0, Lcom/android/settingslib/l;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    .line 374
    aget p0, v0, p0

    return p0

    .line 372
    :cond_0
    sget-object p1, Lcom/android/settingslib/l;->d:[I

    aget p0, p1, p0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 367
    sget-object p1, Lcom/android/settingslib/l;->d:[I

    aget p0, p1, p0

    return p0

    .line 369
    :cond_2
    sget-object p1, Lcom/android/settingslib/l;->c:[I

    aget p0, p1, p0

    return p0

    .line 364
    :cond_3
    sget-object p1, Lcom/android/settingslib/l;->b:[I

    aget p0, p1, p0

    return p0

    .line 359
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "No Wifi icon found for level: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/res/Resources;)I
    .locals 1

    :try_start_0
    const-string v0, "config_storageManagerDaystoRetainDefault"

    .line 383
    invoke-static {p0, v0}, Lcom/android/settingslib/m/a/a;->b(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 382
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0x5a

    :goto_0
    return p0
.end method

.method public static a(Landroid/net/ConnectivityManager;)I
    .locals 4

    .line 110
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    .line 114
    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 115
    :goto_0
    array-length v1, v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 116
    :goto_1
    array-length p0, p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 119
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_all:I

    return p0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 121
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_all:I

    return p0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 123
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_all:I

    return p0

    :cond_5
    if-eqz v1, :cond_6

    .line 125
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_wifi:I

    return p0

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 127
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_usb_bluetooth:I

    return p0

    :cond_7
    if-eqz v0, :cond_8

    .line 129
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_usb:I

    return p0

    .line 131
    :cond_8
    sget p0, Lcom/android/settingslib/e$h;->tether_settings_title_bluetooth:I

    return p0
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 1

    if-eqz p0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 327
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2

    :try_start_0
    const-string v0, "android"

    const/16 v1, 0x40

    .line 334
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lcom/android/settingslib/l;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 158
    invoke-static {p0}, Lcom/android/settingslib/g/b;->b(Landroid/content/Context;)I

    move-result v0

    .line 159
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 160
    invoke-static {p0}, Lcom/android/settingslib/g/b;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 161
    invoke-virtual {p0, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    .line 164
    :cond_0
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 165
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    new-instance p0, Lcom/android/settingslib/g/b;

    invoke-direct {p0, v0}, Lcom/android/settingslib/g/b;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/g/b;->a(Landroid/graphics/Bitmap;)Lcom/android/settingslib/g/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->a()Lcom/android/settingslib/g/b;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1
    new-instance p1, Lcom/android/settingslib/g/b;

    invoke-direct {p1, v0}, Lcom/android/settingslib/g/b;-><init>(I)V

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p2, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Lcom/android/settingslib/g/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/g/b;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lcom/android/settingslib/g/b;->a()Lcom/android/settingslib/g/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(D)Ljava/lang/String;
    .locals 0

    double-to-float p0, p0

    .line 177
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 178
    invoke-static {p0}, Lcom/android/settingslib/l;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 2193
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 0

    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 1193
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    sget p1, Lcom/android/settingslib/e$h;->managed_user_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    sget v0, Lcom/android/settingslib/e$h;->user_guest:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 147
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 149
    sget p1, Lcom/android/settingslib/e$h;->unknown:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/e$h;->running_process_item_user_label:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "status"

    const/4 v1, 0x1

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 207
    sget p1, Lcom/android/settingslib/e$h;->battery_info_status_charging:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 209
    sget p1, Lcom/android/settingslib/e$h;->battery_info_status_discharging:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 211
    sget p1, Lcom/android/settingslib/e$h;->battery_info_status_not_charging:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 213
    sget p1, Lcom/android/settingslib/e$h;->battery_info_status_full:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_3
    sget p1, Lcom/android/settingslib/e$h;->battery_info_status_unknown:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;ZI)V
    .locals 5

    .line 84
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_changer"

    const/4 v3, 0x1

    .line 86
    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v4, "CURRENT_MODE"

    .line 97
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "NEW_MODE"

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 99
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 102
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 304
    sget-object v0, Lcom/android/settingslib/l;->e:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 305
    new-array v0, v1, [Landroid/content/pm/Signature;

    invoke-static {p1}, Lcom/android/settingslib/l;->a(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settingslib/l;->e:[Landroid/content/pm/Signature;

    .line 307
    :cond_0
    sget-object v0, Lcom/android/settingslib/l;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/l;->f:Ljava/lang/String;

    .line 310
    :cond_1
    sget-object v0, Lcom/android/settingslib/l;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/l;->g:Ljava/lang/String;

    .line 313
    :cond_2
    sget-object v0, Lcom/android/settingslib/l;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 314
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/l;->h:Ljava/lang/String;

    .line 316
    :cond_3
    sget-object p1, Lcom/android/settingslib/l;->e:[Landroid/content/pm/Signature;

    aget-object v0, p1, v2

    if-eqz v0, :cond_4

    aget-object p1, p1, v2

    .line 317
    invoke-static {p2}, Lcom/android/settingslib/l;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/l;->f:Ljava/lang/String;

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/l;->g:Ljava/lang/String;

    .line 319
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/l;->h:Ljava/lang/String;

    .line 320
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.printspooler"

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 322
    invoke-static {p0, p1}, Lcom/android/settingslib/l;->a(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public static a(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "config_deviceProvisioningPackage"

    .line 347
    invoke-static {p0, v0}, Lcom/android/settingslib/m/a/a;->c(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/telephony/ServiceState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 430
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/l;->b(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static b(Landroid/telephony/ServiceState;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 459
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 463
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static b(D)Ljava/lang/String;
    .locals 1

    .line 193
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "level"

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    const-string v2, "scale"

    .line 198
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr v0, v1

    .line 199
    div-int/2addr v0, p0

    return v0
.end method

.method public static g(Landroid/content/Context;I)I
    .locals 1

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    .line 2253
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010033

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 2254
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 2255
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2261
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 2262
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 2263
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 2262
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    .line 268
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 270
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x1

    .line 275
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 278
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    throw p1
.end method

.method public static o(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0x1010435

    .line 222
    invoke-static {p0, v0}, Lcom/android/settingslib/l;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    .line 231
    invoke-static {p0, v0}, Lcom/android/settingslib/l;->i(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 1

    .line 391
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.storage_manager.enabled"

    .line 399
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 403
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    const-string v3, "automatic_storage_manager_enabled"

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 2

    .line 413
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 414
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method