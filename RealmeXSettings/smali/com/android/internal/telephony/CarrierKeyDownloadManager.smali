.class public Lcom/android/internal/telephony/CarrierKeyDownloadManager;
.super Ljava/lang/Object;
.source "CarrierKeyDownloadManager.java"


# static fields
.field private static final CARRIER_KEY_TYPES:[I

.field private static final DAY_IN_MILLIS:I = 0x5265c00

.field private static final END_RENEWAL_WINDOW_DAYS:I = 0x7

.field private static final INTENT_KEY_RENEWAL_ALARM_PREFIX:Ljava/lang/String; = "com.android.internal.telephony.carrier_key_download_alarm"

.field private static final JSON_CARRIER_KEYS:Ljava/lang/String; = "carrier-keys"

.field private static final JSON_CERTIFICATE:Ljava/lang/String; = "certificate"

.field private static final JSON_CERTIFICATE_ALTERNATE:Ljava/lang/String; = "public-key"

.field private static final JSON_IDENTIFIER:Ljava/lang/String; = "key-identifier"

.field private static final JSON_TYPE:Ljava/lang/String; = "key-type"

.field private static final JSON_TYPE_VALUE_EPDG:Ljava/lang/String; = "EPDG"

.field private static final JSON_TYPE_VALUE_WLAN:Ljava/lang/String; = "WLAN"

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierKeyDownloadManager"

.field public static final MCC:Ljava/lang/String; = "MCC"

.field private static final MCC_MNC_PREF_TAG:Ljava/lang/String; = "CARRIER_KEY_DM_MCC_MNC"

.field public static final MNC:Ljava/lang/String; = "MNC"

.field private static final SEPARATOR:Ljava/lang/String; = ":"

.field private static final START_RENEWAL_WINDOW_DAYS:I = 0x15

.field private static final UNINITIALIZED_KEY_TYPE:I = -0x1


# instance fields
.field private mAllowedOverMeteredNetwork:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field public final mDownloadManager:Landroid/app/DownloadManager;

.field public mKeyAvailability:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 107
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    .line 115
    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mAllowedOverMeteredNetwork:Z

    .line 129
    new-instance v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager$1;-><init>(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->handleAlarmOrConfigChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/CarrierKeyDownloadManager;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getMccMncSetFromPref()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CarrierKeyDownloadManager;JLjava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->onDownloadComplete(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierKeyDownloadManager;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->onPostDownloadProcessing(J)V

    return-void
.end method

.method private carrierUsesKeys()Z
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 368
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 369
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "imsi_key_availability_int"

    .line 373
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    const-string v2, "imsi_key_download_url_string"

    .line 374
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    const-string v2, "allow_metered_network_for_cert_download_bool"

    .line 375
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mAllowedOverMeteredNetwork:Z

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    if-nez v0, :cond_2

    goto :goto_1

    .line 381
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v0, v3

    .line 382
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    const-string v0, "CarrierKeyDownloadManager"

    const-string v2, "Carrier not enabled or invalid values"

    .line 378
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private cleanupDownloadPreferences(J)V
    .locals 2

    .line 187
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleaning up download preferences: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierKeyDownloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private cleanupRenewalAlarms()V
    .locals 4

    const-string v0, "CarrierKeyDownloadManager"

    const-string v1, "Cleaning up existing renewal alarms"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 196
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    .line 200
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 201
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static convertToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 394
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 395
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 404
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private downloadKey()Z
    .locals 11

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting download from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierKeyDownloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 518
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "using values for mcc, mnc: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 530
    iget-boolean v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mAllowedOverMeteredNetwork:Z

    invoke-virtual {v2, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 531
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    const/4 v6, 0x2

    .line 532
    invoke-virtual {v2, v6}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 533
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v6, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 534
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 537
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 538
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "storing values in sharedpref mcc, mnc, days: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CARRIER_KEY_DM_MCC_MNC"

    .line 540
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 541
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 543
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "exception trying to dowload key from url: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string v0, "mcc, mnc: is empty"

    .line 522
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static getKeyInformation([B)Landroid/util/Pair;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, "X.509"

    .line 557
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 558
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 559
    new-instance v0, Landroid/util/Pair;

    .line 560
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getMccMncSetFromPref()Ljava/lang/String;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CARRIER_KEY_DM_MCC_MNC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAlarmOrConfigChange()V
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->carrierUsesKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->areCarrierKeysAbsentOrExpiring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->downloadKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->resetRenewalAlarm()V

    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupRenewalAlarms()V

    return-void
.end method

.method private onDownloadComplete(JLjava/lang/String;)V
    .locals 7

    .line 320
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadComplete: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierKeyDownloadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    .line 323
    new-array v3, v2, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "status"

    .line 331
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x8

    .line 332
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v5, v3, :cond_1

    const/4 v3, 0x0

    .line 334
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 335
    invoke-virtual {v6, p1, p2}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 336
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 337
    :try_start_1
    invoke-static {v5}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->convertToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->parseJsonAndPersistKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v2, v2, [J

    aput-wide p1, v2, v4

    invoke-virtual {p3, v2}, Landroid/app/DownloadManager;->remove([J)I

    .line 345
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p3

    move-object v3, v5

    goto :goto_1

    :catch_1
    move-exception p3

    move-object v3, v5

    goto :goto_0

    :catchall_1
    move-exception p3

    goto :goto_1

    :catch_2
    move-exception p3

    .line 340
    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in download:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 343
    iget-object p3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v2, v2, [J

    aput-wide p1, v2, v4

    invoke-virtual {p3, v2}, Landroid/app/DownloadManager;->remove([J)I

    .line 345
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v1, v2, [J

    aput-wide p1, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 345
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 348
    :goto_2
    throw p3

    :cond_1
    :goto_3
    const-string p1, "Completed downloading keys"

    .line 351
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private onPostDownloadProcessing(J)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->resetRenewalAlarm()V

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupDownloadPreferences(J)V

    return-void
.end method


# virtual methods
.method public areCarrierKeysAbsentOrExpiring()Z
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 494
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    .line 495
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 499
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 501
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Key not found for: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CarrierKeyDownloadManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 504
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x6c258c00

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getExpirationDate()J
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 211
    sget-object v0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->CARRIER_KEY_TYPES:[I

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    if-ge v4, v1, :cond_1

    aget v7, v0, v4

    .line 212
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->isKeyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 215
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 216
    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/Phone;->getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 217
    invoke-virtual {v7}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 218
    invoke-virtual {v7}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-lez v8, :cond_0

    .line 219
    invoke-virtual {v7}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-eqz v0, :cond_3

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    goto :goto_1

    .line 233
    :cond_2
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x48190800

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x240c8400

    add-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v5, v0

    goto :goto_2

    .line 229
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long v5, v0, v2

    :goto_2
    return-wide v5
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isKeyEnabled(I)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    iget v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mKeyAvailability:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shr-int p1, v0, p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValidDownload(Ljava/lang/String;)Z
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "CarrierKeyDownloadManager"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    .line 301
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 302
    aget-object v1, p1, v3

    const/4 v4, 0x1

    .line 303
    aget-object p1, p1, v4

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "values from sharedPrefs mcc, mnc: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    .line 306
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "using values for mcc, mnc: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p1, "simOperator or mcc/mnc is empty"

    .line 297
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public parseJsonAndPersistKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "certificate"

    const-string v1, "Exception getting certificate: "

    .line 422
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CarrierKeyDownloadManager"

    if-nez v2, :cond_9

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v4, ":"

    move-object/from16 v5, p2

    .line 430
    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 431
    aget-object v14, v4, v5

    const/4 v15, 0x1

    .line 432
    aget-object v4, v4, v15

    .line 433
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "carrier-keys"

    .line 434
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 435
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 436
    invoke-virtual {v13, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 440
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 441
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v7, "public-key"

    .line 443
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v8, "key-type"

    .line 445
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const-string v10, "WLAN"

    .line 447
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v8, 0x2

    goto :goto_2

    :cond_2
    const-string v10, "EPDG"

    .line 449
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v15

    goto :goto_2

    :cond_3
    move v8, v9

    :goto_2
    const-string v9, "key-identifier"

    .line 452
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 454
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 455
    new-instance v12, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v12, v7}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    :try_start_1
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getKeyInformation([B)Landroid/util/Pair;

    move-result-object v2

    .line 458
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    .line 459
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/security/PublicKey;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, p0

    move-object v2, v12

    move-object v12, v14

    move-object/from16 v16, v13

    move-object v13, v4

    :try_start_2
    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->savePublicKey(Ljava/security/PublicKey;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v12

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v2, v12

    goto :goto_7

    :cond_4
    if-eqz v2, :cond_5

    .line 468
    :try_start_3
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 471
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    :goto_4
    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v0, v17

    goto :goto_9

    :catch_3
    move-exception v0

    .line 464
    :goto_5
    :try_start_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_6

    .line 468
    :try_start_5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 471
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    return-void

    :catch_5
    move-exception v0

    .line 462
    :goto_7
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Json parsing error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_7

    .line 468
    :try_start_7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 471
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_8
    return-void

    :goto_9
    if-eqz v0, :cond_8

    .line 468
    :try_start_8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v4, v0

    .line 471
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_8
    :goto_a
    throw v2

    :cond_9
    :goto_b
    const-string v0, "jsonStr or mcc, mnc: is empty"

    .line 423
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetRenewalAlarm()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->cleanupRenewalAlarms()V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->getExpirationDate()J

    move-result-wide v1

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "minExpirationDate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CarrierKeyDownloadManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 256
    new-instance v5, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.android.internal.telephony.carrier_key_download_alarm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v0, v6, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v6, 0x2

    .line 259
    invoke-virtual {v3, v6, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setRenewelAlarm: action="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " time="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public savePublicKey(Ljava/security/PublicKey;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 576
    new-instance v7, Landroid/telephony/ImsiEncryptionInfo;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p4, p5}, Ljava/util/Date;-><init>(J)V

    move-object v0, v7

    move-object v1, p6

    move-object v2, p7

    move v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;)V

    .line 578
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierKeyDownloadManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/Phone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    return-void
.end method
