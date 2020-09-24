.class public Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.super Landroid/os/Handler;
.source "EmergencyNumberTracker.java"


# static fields
.field public static final ADD_EMERGENCY_NUMBER_TEST_MODE:I = 0x1

.field public static DBG:Z = false

.field private static final EMERGENCY_NUMBER_DB_ASSETS_FILE:Ljava/lang/String; = "eccdata"

.field private static final EVENT_UNSOL_EMERGENCY_NUMBER_LIST:I = 0x1

.field private static final EVENT_UPDATE_DB_COUNTRY_ISO_CHANGED:I = 0x2

.field private static final EVENT_UPDATE_EMERGENCY_NUMBER_PREFIX:I = 0x4

.field private static final EVENT_UPDATE_EMERGENCY_NUMBER_TEST_MODE:I = 0x3

.field public static final REMOVE_EMERGENCY_NUMBER_TEST_MODE:I = 0x2

.field public static final RESET_EMERGENCY_NUMBER_TEST_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyNumberTracker"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCountryIso:Ljava/lang/String;

.field private mEmergencyNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyNumberListDatabaseLocalLog:Landroid/util/LocalLog;

.field private mEmergencyNumberListFromDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyNumberListFromRadio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyNumberListFromTestMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

.field private final mEmergencyNumberListPrefixLocalLog:Landroid/util/LocalLog;

.field private final mEmergencyNumberListRadioLocalLog:Landroid/util/LocalLog;

.field private final mEmergencyNumberListTestModeLocalLog:Landroid/util/LocalLog;

.field private mEmergencyNumberListWithPrefix:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyNumberPrefix:[Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    .line 92
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Landroid/util/LocalLog;

    .line 93
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Landroid/util/LocalLog;

    .line 94
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Landroid/util/LocalLog;

    .line 95
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Landroid/util/LocalLog;

    .line 96
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;-><init>(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 134
    iput-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 135
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "carrier_config"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_0

    .line 139
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "emergency_number_prefix_string_array"

    .line 141
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "CarrierConfigManager is null."

    .line 145
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 149
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p1, "mPhone is null."

    .line 156
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->initializeDatabaseEmergencyNumberList()V

    .line 160
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->registerForEmergencyNumberList(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->onCarrierConfigChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V
    .locals 10

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 309
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 310
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "eccdata"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 1470
    new-instance v3, Lcom/android/a/a/a/k$a;

    invoke-direct {v3}, Lcom/android/a/a/a/k$a;-><init>()V

    .line 2131
    array-length v4, v1

    invoke-static {v3, v1, v4}, Lcom/android/a/a/a/i;->a(Lcom/android/a/a/a/i;[BI)Lcom/android/a/a/a/i;

    move-result-object v1

    .line 1470
    check-cast v1, Lcom/android/a/a/a/k$a;

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " emergency database is loaded. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 314
    iget-object v1, v1, Lcom/android/a/a/a/k$a;->d:[Lcom/android/a/a/a/k$b;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 315
    iget-object v7, v6, Lcom/android/a/a/a/k$b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 316
    iget-object v6, v6, Lcom/android/a/a/a/k$b;->d:[Lcom/android/a/a/a/k$c;

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 317
    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->convertEmergencyNumberFromEccInfo(Lcom/android/a/a/a/k$c;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 323
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_2
    :try_start_2
    const-string v0, "Cache emergency database failure: "

    .line 325
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private convertEmergencyNumberFromEccInfo(Lcom/android/a/a/a/k$c;Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 9

    .line 269
    iget-object v0, p1, Lcom/android/a/a/a/k$c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "EccInfo has empty phone number."

    .line 271
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    iget-object p1, p1, Lcom/android/a/a/a/k$c;->d:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v1, v0, :cond_7

    aget v3, p1, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_3

    :cond_1
    if-nez v5, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    or-int/lit8 v3, v5, 0x4

    :goto_1
    move v5, v3

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_4
    or-int/lit8 v3, v5, 0x2

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    or-int/lit8 v3, v5, 0x1

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_7
    new-instance p1, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v4, ""

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p1
.end method

.method private getEmergencyNumberListFromEccList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v1

    const-string v2, "ril.ecclist"

    if-gtz v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, ""

    .line 562
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "ro.ril.ecclist"

    .line 565
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ","

    if-nez v3, :cond_2

    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    aget-object v7, v2, v6

    .line 571
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-gez v1, :cond_3

    const-string v1, "112,911,000,08,110,118,119,999"

    goto :goto_2

    :cond_3
    const-string v1, "112,911"

    .line 575
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-ge v4, v2, :cond_4

    aget-object v3, v1, v4

    .line 576
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_5

    .line 579
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 581
    :cond_5
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    return-object v0
.end method

.method private getEmergencyNumberListFromEccListAndTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 803
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListFromEccList()Ljava/util/List;

    move-result-object v0

    .line 804
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/emergency/EmergencyNumber;

    move-object/from16 v3, p0

    .line 589
    iget-object v4, v3, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 591
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 592
    new-instance v8, Landroid/telephony/emergency/EmergencyNumber;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v11

    .line 594
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v13

    .line 595
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v15

    .line 596
    invoke-virtual {v2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v16

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    .line 592
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v3, p0

    return-object v0
.end method

.method private getInitialCountryIso()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLocaleTracker()Lcom/android/internal/telephony/LocaleTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/android/internal/telephony/LocaleTracker;->getCurrentCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "getInitialCountryIso mPhone is null."

    .line 251
    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getLabeledEmergencyNumberForEcclist(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 8

    .line 614
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/emergency/EmergencyNumber;

    .line 616
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    new-instance p1, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {v0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v3, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p1

    .line 623
    :cond_1
    new-instance p1, Landroid/telephony/emergency/EmergencyNumber;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, ""

    const-string v3, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    return-object p1
.end method

.method private initializeDatabaseEmergencyNumberList()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getInitialCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isEmergencyNumberForTest(Ljava/lang/String;)Z
    .locals 2

    .line 604
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 606
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isEmergencyNumberFromEccList(Ljava/lang/String;Z)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 644
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 650
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v1

    const-string v2, "ril.ecclist"

    if-gtz v1, :cond_2

    goto :goto_0

    .line 657
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, ""

    .line 659
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "slotId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " country:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " emergencyNumbers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 664
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "ro.ril.ecclist"

    .line 666
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ","

    const/4 v5, 0x1

    if-nez v3, :cond_c

    .line 672
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_b

    aget-object v4, v1, v3

    if-nez p2, :cond_7

    .line 675
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    const-string v7, "br"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 686
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v5

    .line 689
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v7, v6

    move v8, v0

    :goto_2
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    .line 690
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    return v5

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 676
    :cond_7
    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v5

    .line 679
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v7, v6

    move v8, v0

    :goto_4
    if-ge v8, v7, :cond_a

    aget-object v9, v6, v8

    .line 680
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    return v5

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    return v0

    :cond_c
    const-string v2, "System property doesn\'t provide any emergency numbers. Use embedded logic for determining ones."

    .line 701
    invoke-static {v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    if-gez v1, :cond_d

    const-string v1, "112,911,000,08,110,118,119,999"

    goto :goto_5

    :cond_d
    const-string v1, "112,911"

    .line 709
    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_6
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    if-eqz p2, :cond_10

    .line 711
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    return v5

    .line 714
    :cond_e
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v7, v6

    move v8, v0

    :goto_7
    if-ge v8, v7, :cond_13

    aget-object v9, v6, v8

    .line 715
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    return v5

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 721
    :cond_10
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    return v5

    .line 724
    :cond_11
    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v7, v6

    move v8, v0

    :goto_8
    if-ge v8, v7, :cond_13

    aget-object v9, v6, v8

    .line 725
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    return v5

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 734
    :cond_14
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 735
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    move-result-object v1

    if-eqz p2, :cond_18

    .line 737
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    return v5

    .line 740
    :cond_15
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v2, p2

    move v3, v0

    :goto_9
    if-ge v3, v2, :cond_17

    aget-object v4, p2, v3

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    return v5

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return v0

    .line 748
    :cond_18
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_19

    return v5

    .line 751
    :cond_19
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v2, p2

    move v3, v0

    :goto_a
    if-ge v3, v2, :cond_1b

    aget-object v4, p2, v3

    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    .line 753
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 752
    invoke-virtual {v1, v4, v6}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return v5

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1b
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    .line 821
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    .line 825
    sget-object v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyEmergencyNumberList()V
    .locals 2

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->notifyEmergencyNumberList()V

    const-string v0, "notifyEmergencyNumberList(): notified"

    .line 406
    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 409
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyEmergencyNumberList(): failure: Phone already destroyed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private onCarrierConfigChanged()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "emergency_number_prefix_string_array"

    .line 228
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "onCarrierConfigChanged mPhone is null."

    .line 237
    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private static readInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    .line 338
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 340
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 343
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private updateEmergencyNumberList()V
    .locals 4

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListWithPrefix(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateEmergencyNumberList:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListWithPrefix:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    invoke-static {v0}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 440
    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    return-void
.end method

.method private updateEmergencyNumberListDatabaseAndNotify(Ljava/lang/String;)V
    .locals 3

    .line 372
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateEmergencyNumberListDatabaseAndNotify(): receiving countryIso: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    .line 376
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->cacheEmergencyDatabaseByCountry(Ljava/lang/String;)V

    .line 377
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string/jumbo v0, "updateEmergencyNumberListDatabaseAndNotify:"

    if-nez p1, :cond_0

    .line 378
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromDatabase:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 383
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method

.method private updateEmergencyNumberListTestModeAndNotify(ILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 777
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 778
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 781
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 783
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 788
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    const-string/jumbo p2, "updateEmergencyNumberListTestModeAndNotify:"

    if-nez p1, :cond_3

    .line 789
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 793
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 794
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_4

    .line 795
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 799
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void

    :cond_5
    const-string/jumbo p1, "updateEmergencyNumberListTestModeAndNotify: Unexpected action in test mode."

    .line 785
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private updateEmergencyNumberPrefixAndNotify([Ljava/lang/String;)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateEmergencyNumberPrefixAndNotify(): receiving emergencyNumberPrefix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 393
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberPrefix:[Ljava/lang/String;

    .line 394
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 395
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateEmergencyNumberPrefixAndNotify:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V

    return-void
.end method

.method private updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 349
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateRadioEmergencyNumberListAndNotify(): receiving "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->logd(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    :try_start_0
    invoke-static {p1}, Landroid/telephony/emergency/EmergencyNumber;->mergeSameNumbersInEmergencyNumberList(Ljava/util/List;)V

    .line 353
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    .line 354
    sget-boolean v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "updateRadioEmergencyNumberList:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberList()V

    .line 359
    sget-boolean p1, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->DBG:Z

    if-nez p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateRadioEmergencyNumberListAndNotify:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->notifyEmergencyNumberList()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateRadioEmergencyNumberListAndNotify() Phone already destroyed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " EmergencyNumberList not notified"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 836
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Hal Version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " ========================================= "

    .line 838
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListDatabaseLocalLog:"

    .line 840
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 842
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListDatabaseLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 844
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListRadioLocalLog:"

    .line 846
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 848
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListRadioLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 850
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListPrefixLocalLog:"

    .line 852
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 854
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListPrefixLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 856
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListTestModeLocalLog:"

    .line 858
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 860
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListTestModeLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 862
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "mEmergencyNumberListLocalLog (valid >= 1.4 HAL):"

    .line 864
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 866
    iget-object v2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 868
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result p1

    const-string p2, "ril.ecclist"

    if-gtz p1, :cond_0

    goto :goto_0

    .line 871
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 872
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, " ril.ecclist: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ""

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Emergency Number List for Phone("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 878
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 879
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public executeEmergencyNumberTestModeCommand(ILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 769
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public getEmergencyCallRouting(Ljava/lang/String;)I
    .locals 3

    .line 541
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 543
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    .line 544
    invoke-virtual {v1, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;
    .locals 3

    .line 502
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 504
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEmergencyNumberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberListFromEccListAndTest()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyNumberListTestMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromTestMode:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmergencyServiceCategories(Ljava/lang/String;)I
    .locals 3

    .line 521
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 523
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 524
    invoke-virtual {v1, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 525
    invoke-virtual {v1, v2}, Landroid/telephony/emergency/EmergencyNumber;->isFromSources(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getRadioEmergencyNumberList()Ljava/util/List;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string p1, "EVENT_UPDATE_EMERGENCY_NUMBER_PREFIX: Result from onCarrierConfigChanged is null."

    .line 203
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberPrefixAndNotify([Ljava/lang/String;)V

    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-string p1, "EVENT_UPDATE_EMERGENCY_NUMBER_TEST_MODE: Result from executeEmergencyNumberTestModeCommand is null."

    .line 194
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberListTestModeAndNotify(ILandroid/telephony/emergency/EmergencyNumber;)V

    return-void

    .line 185
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_5

    const-string p1, "EVENT_UPDATE_DB_COUNTRY_ISO_CHANGED: Result from UpdateCountryIso is null."

    .line 186
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyNumberListDatabaseAndNotify(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 175
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string p1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Result from RIL is null."

    .line 176
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void

    .line 177
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 178
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateRadioEmergencyNumberListAndNotify(Ljava/util/List;)V

    return-void

    .line 180
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EVENT_UNSOL_EMERGENCY_NUMBER_LIST: Exception from RIL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public isEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 466
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberListFromRadio:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 468
    iget-object p2, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mEmergencyNumberList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    .line 472
    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    const-string v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    const-string v4, "cl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mCountryIso:Ljava/lang/String;

    const-string v4, "ni"

    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 479
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 483
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_5
    return v0

    .line 490
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberFromEccList(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    .line 491
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumberForTest(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v2
.end method

.method public updateEmergencyNumberDatabaseCountryChange(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
