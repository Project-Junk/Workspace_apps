.class public final Lcom/android/settings/wifi/dpp/a;
.super Ljava/lang/Object;
.source "WifiDppUtils.java"


# static fields
.field private static final a:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    .line 101
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/dpp/a;->a:Ljava/time/Duration;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/content/Intent;
    .locals 3

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3391
    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3392
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    .line 259
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-static {v0, p1, p2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    const/4 p0, -0x1

    const-string p1, "networkId"

    .line 266
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "isHotspot"

    .line 267
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/a;)Landroid/content/Intent;
    .locals 2

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    invoke-static {p0, p2}, Lcom/android/settings/wifi/dpp/a;->b(Landroid/content/Context;Lcom/android/settingslib/wifi/a;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_GENERATOR"

    .line 200
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    iget-object p0, p2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 206
    invoke-static {v0, p1, p0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 2014
    iget p0, p2, Lcom/android/settingslib/wifi/a;->e:I

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    const-string p0, "security"

    const-string p1, "WPA"

    .line 210
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_DPP_ENROLLEE_QR_CODE_SCANNER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ssid"

    .line 126
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static a(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3

    .line 170
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SAE"

    return-object p0

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v1, "nopass"

    if-eqz v0, :cond_1

    return-object v1

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    .line 177
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    const-string p0, "WEP"

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "WPA"

    return-object p0
.end method

.method private static a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3

    .line 134
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 137
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v2, :cond_0

    .line 140
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 143
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object p0, p0, p1

    return-object p0

    .line 146
    :cond_1
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0

    .line 150
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "keyguard"

    .line 311
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 314
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    new-instance v1, Lcom/android/settings/wifi/dpp/a$1;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/a$1;-><init>(Ljava/lang/Runnable;)V

    .line 329
    new-instance p1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121999

    .line 330
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 333
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p0

    .line 337
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 338
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/dpp/-$$Lambda$a$4fmGiJ66g_CU5KhnwW7Jdfe-EiY;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/dpp/-$$Lambda$a$4fmGiJ66g_CU5KhnwW7Jdfe-EiY;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v2, v1}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 342
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 282
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ssid"

    .line 291
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "security"

    .line 294
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "preSharedKey"

    .line 297
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :cond_2
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string p2, "hiddenSsid"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private static synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 107
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 108
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    .line 382
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/a;->b(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/a;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/android/settingslib/wifi/a;)Z
    .locals 1

    .line 354
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4014
    :cond_0
    iget p1, p1, Lcom/android/settingslib/wifi/a;->e:I

    .line 357
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/a;->b(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/wifi/a;)Landroid/content/Intent;
    .locals 2

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-static {p0, p2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/a;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.settings.WIFI_DPP_CONFIGURATOR_QR_CODE_SCANNER"

    .line 229
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2764
    iget-object p0, p2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 235
    invoke-static {v0, p1, p0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Intent;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 237
    iget p1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 240
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string p1, "networkId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 238
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid network ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    move v2, v1

    .line 163
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/2addr v0, v1

    .line 166
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "vibrator"

    .line 441
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-nez p0, :cond_0

    return-void

    .line 445
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/dpp/a;->a:Ljava/time/Duration;

    .line 446
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    const/4 v2, -0x1

    .line 445
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private static b(Landroid/content/Context;I)Z
    .locals 3

    .line 396
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 401
    :cond_0
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2
.end method

.method public static b(Landroid/content/Context;Lcom/android/settingslib/wifi/a;)Z
    .locals 1

    .line 368
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5014
    :cond_0
    iget p1, p1, Lcom/android/settingslib/wifi/a;->e:I

    .line 371
    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/a;->c(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;I)Z
    .locals 2

    .line 417
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x8

    if-eq p1, p0, :cond_3

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method public static synthetic lambda$4fmGiJ66g_CU5KhnwW7Jdfe-EiY(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
