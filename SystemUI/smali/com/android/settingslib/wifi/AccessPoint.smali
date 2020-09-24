.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;,
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;,
        Lcom/android/settingslib/wifi/AccessPoint$Speed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final EAP_UNKNOWN:I = 0x0

.field private static final EAP_WPA:I = 0x1

.field private static final EAP_WPA2_WPA3:I = 0x2

.field private static final HE_CAPABLE_BSSID:I = 0x3

.field public static final HIGHER_FREQ_24GHZ:I = 0x9c4

.field public static final HIGHER_FREQ_5GHZ:I = 0x170c

.field private static final HT_CAPABLE_BSSID:I = 0x1

.field static final KEY_CARRIER_AP_EAP_TYPE:Ljava/lang/String; = "key_carrier_ap_eap_type"

.field static final KEY_CARRIER_NAME:Ljava/lang/String; = "key_carrier_name"

.field static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field static final KEY_EAPTYPE:Ljava/lang/String; = "eap_psktype"

.field static final KEY_FQDN:Ljava/lang/String; = "key_fqdn"

.field static final KEY_IS_CARRIER_AP:Ljava/lang/String; = "key_is_carrier_ap"

.field static final KEY_NETWORKINFO:Ljava/lang/String; = "key_networkinfo"

.field public static final KEY_PREFIX_AP:Ljava/lang/String; = "AP:"

.field public static final KEY_PREFIX_FQDN:Ljava/lang/String; = "FQDN:"

.field public static final KEY_PREFIX_OSU:Ljava/lang/String; = "OSU:"

.field static final KEY_PROVIDER_FRIENDLY_NAME:Ljava/lang/String; = "key_provider_friendly_name"

.field static final KEY_PSKTYPE:Ljava/lang/String; = "key_psktype"

.field static final KEY_SCANRESULTS:Ljava/lang/String; = "key_scanresults"

.field static final KEY_SCOREDNETWORKCACHE:Ljava/lang/String; = "key_scorednetworkcache"

.field static final KEY_SECURITY:Ljava/lang/String; = "key_security"

.field static final KEY_SPEED:Ljava/lang/String; = "key_speed"

.field static final KEY_SSID:Ljava/lang/String; = "key_ssid"

.field static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field private static final LEGACY_CAPABLE_BSSID:I = 0x0

.field public static final LOWER_FREQ_24GHZ:I = 0x960

.field public static final LOWER_FREQ_5GHZ:I = 0x1324

.field private static final MAX_CAPABLE_BSSID:I = 0x7fffffff

.field private static final PSK_SAE:I = 0x4

.field private static final PSK_UNKNOWN:I = 0x0

.field private static final PSK_WPA:I = 0x1

.field private static final PSK_WPA2:I = 0x2

.field private static final PSK_WPA_WPA2:I = 0x3

.field public static final SECURITY_DPP:I = 0x9

.field public static final SECURITY_EAP:I = 0x3

.field public static final SECURITY_EAP_SUITE_B:I = 0x6

.field public static final SECURITY_MAX_VAL:I = 0xc

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_OWE:I = 0x4

.field public static final SECURITY_OWE_TRANSITION:I = 0x8

.field public static final SECURITY_PSK:I = 0x2

.field public static final SECURITY_PSK_SAE_TRANSITION:I = 0x7

.field public static final SECURITY_SAE:I = 0x5

.field public static final SECURITY_WAPI_CERT:I = 0xb

.field public static final SECURITY_WAPI_PSK:I = 0xa

.field public static final SECURITY_WEP:I = 0x1

.field public static final SIGNAL_LEVELS:I = 0x5

.field static final TAG:Ljava/lang/String; = "SettingsLib.AccessPoint"

.field public static final UNREACHABLE_RSSI:I = -0x80000000

.field private static final VHT_CAPABLE_BSSID:I = 0x2

.field private static final WIFI_GENERATION_4:I = 0x4

.field private static final WIFI_GENERATION_5:I = 0x5

.field private static final WIFI_GENERATION_6:I = 0x6

.field private static final WIFI_GENERATION_LEGACY:I

.field static final sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sOpenSuffix:Ljava/lang/String;

.field private static final sOweSuffix:Ljava/lang/String;

.field private static final sOweTransSuffix:Ljava/lang/String;

.field private static final sPskSaeSuffix:Ljava/lang/String;

.field private static final sPskSuffix:Ljava/lang/String;

.field private static final sSaeSuffix:Ljava/lang/String;


# instance fields
.field private bssid:Ljava/lang/String;

.field mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mCarrierApEapType:I

.field private mCarrierName:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mEapType:I

.field private final mExtraScanResults:Landroid/util/ArraySet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFqdn:Ljava/lang/String;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsCarrierAp:Z

.field private mIsRoaming:Z

.field private mIsScoredNetworkMetered:Z

.field private mKey:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOsuFailure:Ljava/lang/String;

.field private mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

.field private mOsuProvisioningComplete:Z

.field private mOsuStatus:Ljava/lang/String;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private final mScanResults:Landroid/util/ArraySet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mTag:Ljava/lang/Object;

.field private mTwtSupport:Z

.field private mVhtMax8SpatialStreamsSupport:Z

.field private mWifiGeneration:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;

.field private wapiPskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sPskSuffix:Ljava/lang/String;

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sSaeSuffix:Ljava/lang/String;

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sPskSaeSuffix:Ljava/lang/String;

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sOweSuffix:Ljava/lang/String;

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sOpenSuffix:Ljava/lang/String;

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sOweTransSuffix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 255
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 257
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 258
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 267
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 268
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 289
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 362
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 364
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/wifi/WifiConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 255
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 257
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 258
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 267
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 268
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 289
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 384
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 385
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 386
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 387
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->wapiPskType:I

    .line 388
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    .line 389
    invoke-virtual {p0, p3, p4}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResultsPasspoint(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 390
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/Collection;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/wifi/hotspot2/OsuProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 255
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 257
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 258
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 267
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 268
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 289
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 398
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 399
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 400
    invoke-virtual {p0, p3}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 401
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 3

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 255
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 257
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 258
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 267
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 268
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 289
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 372
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    .line 374
    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    .line 375
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 255
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 257
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 258
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 267
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 268
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 289
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const-string p1, "key_config"

    .line 295
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    const-string p1, "key_ssid"

    .line 301
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    :cond_2
    const-string p1, "key_security"

    .line 304
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    :cond_3
    const-string p1, "key_speed"

    .line 307
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    :cond_4
    const-string p1, "key_psktype"

    .line 310
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    :cond_5
    const-string p1, "eap_psktype"

    .line 313
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 314
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    :cond_6
    const-string p1, "key_wifiinfo"

    .line 316
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string p1, "key_networkinfo"

    .line 317
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    :cond_7
    const-string p1, "key_scanresults"

    .line 320
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 321
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 323
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p1, v1

    .line 324
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const-string p1, "key_scorednetworkcache"

    .line 327
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 329
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 331
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v2

    iget-object v2, v2, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v2, v2, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    const-string p1, "key_fqdn"

    .line 334
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 335
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    :cond_a
    const-string p1, "key_provider_friendly_name"

    .line 337
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 338
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    :cond_b
    const-string p1, "key_is_carrier_ap"

    .line 340
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 341
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    :cond_c
    const-string p1, "key_carrier_ap_eap_type"

    .line 343
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    :cond_d
    const-string p1, "key_carrier_name"

    .line 346
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "key_carrier_name"

    .line 347
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 349
    :cond_e
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 352
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 353
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateBestRssiInfo()V

    .line 354
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateWifiGeneration()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 251
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const/high16 v2, -0x80000000

    .line 255
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 257
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 258
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 267
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 268
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 276
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    .line 289
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 405
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 406
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 407
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settingslib/wifi/AccessPoint;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object p0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateAverageSpeedForSsid()I
    .locals 9

    .line 619
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const-string v2, "SettingsLib.AccessPoint"

    .line 623
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 624
    new-array v0, v3, [Ljava/lang/Object;

    .line 625
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    aput-object v5, v0, v4

    const-string v5, "Generating fallbackspeed for %s using cache: %s"

    .line 624
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v1

    move v6, v5

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 635
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v7

    iget v8, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v7, v8}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    move v0, v1

    goto :goto_1

    .line 641
    :cond_4
    div-int v0, v6, v5

    .line 642
    :goto_1
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 643
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "%s generated fallback speed is: %d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_5
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result p0

    return p0
.end method

.method private static getAppLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, ""

    const/4 v1, -0x2

    .line 1703
    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1704
    invoke-virtual {p1, p0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 1710
    invoke-virtual {p0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "SettingsLib.AccessPoint"

    const-string v1, "Failed to get app info"

    .line 1706
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static getEapType(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 1804
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "RSN-EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1808
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WPA-EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2

    .line 677
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    .line 685
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 688
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;
    .locals 2

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSU:"

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FQDN:"

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP:"

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p0, 0x2c

    .line 723
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaxCapability(Landroid/net/wifi/ScanResult;)I
    .locals 1

    .line 934
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 935
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SSID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bssid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", capabilities: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsLib.AccessPoint"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WFA-HE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 940
    :cond_1
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WFA-VHT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 942
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "WFA-HT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 7

    .line 1780
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1781
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "RSN-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1782
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "SAE"

    .line 1783
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1784
    :goto_0
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "RSN-SAE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    if-eqz v0, :cond_4

    return v3

    :cond_4
    if-nez v5, :cond_5

    .line 1796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received abnormal flag string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsLib.AccessPoint"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v4
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 3

    .line 1815
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "DPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x9

    return p0

    .line 1817
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1819
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "SAE"

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1820
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x7

    return p0

    .line 1822
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x5

    return p0

    .line 1824
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    return p0

    .line 1826
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP_SUITE_B_192"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 1828
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x3

    return p0

    .line 1832
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0xa

    return p0

    .line 1834
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0xb

    return p0

    .line 1838
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "OWE_TRANSITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x8

    return p0

    .line 1840
    :cond_9
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x4

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    .line 1847
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1850
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    .line 1853
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 1856
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1857
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1860
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_4

    return v2

    .line 1863
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x4

    return p0

    .line 1867
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 1870
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbf

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0xb

    return p0

    .line 1874
    :cond_7
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_8

    move v0, v1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v2
.end method

.method private static getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1675
    :cond_0
    sget p1, Lcom/android/settingslib/R$string;->speed_label_very_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1677
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->speed_label_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1679
    :cond_2
    sget p1, Lcom/android/settingslib/R$string;->speed_label_okay:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1681
    :cond_3
    sget p1, Lcom/android/settingslib/R$string;->speed_label_slow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;
    .locals 0

    .line 1691
    invoke-virtual {p1, p2}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1717
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 1718
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1720
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getAppLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1721
    sget p2, Lcom/android/settingslib/R$string;->connected_via_app:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    .line 1724
    const-class p1, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    .line 1726
    invoke-virtual {p1}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1727
    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1728
    sget p2, Lcom/android/settingslib/R$string;->connected_via_network_scorer:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1729
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1731
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->connected_via_network_scorer_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p3, "connectivity"

    .line 1738
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    .line 1739
    sget-object p4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, p4, :cond_5

    const-string p4, "wifi"

    .line 1741
    invoke-static {p4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p4

    .line 1740
    invoke-static {p4}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object p4

    const/4 v0, 0x0

    .line 1745
    :try_start_0
    invoke-interface {p4}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_5

    const/16 p3, 0x11

    .line 1749
    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1750
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "network_available_sign_in"

    const-string p3, "string"

    const-string p4, "android"

    .line 1751
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1752
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 p3, 0x18

    .line 1753
    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1755
    sget p1, Lcom/android/settingslib/R$string;->wifi_limited_connection:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p3, 0x10

    .line 1756
    invoke-virtual {v0, p3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-nez p3, :cond_5

    .line 1757
    sget p1, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p3, ""

    if-nez p2, :cond_6

    const-string p0, "SettingsLib.AccessPoint"

    const-string p1, "state is null, returning empty summary"

    .line 1762
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 1765
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p1, :cond_7

    sget p4, Lcom/android/settingslib/R$array;->wifi_status:I

    goto :goto_0

    :cond_7
    sget p4, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    :goto_0
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 1767
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p2

    .line 1769
    array-length p4, p0

    if-ge p2, p4, :cond_9

    aget-object p4, p0, p2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_8

    goto :goto_1

    .line 1772
    :cond_8
    aget-object p0, p0, p2

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    return-object p3
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 1920
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1923
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .line 1358
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1360
    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1365
    :cond_1
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 1366
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    if-ne v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 1368
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->isKeyEqual(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1373
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 1361
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1362
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 1359
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1
.end method

.method private isKeyEqual(Ljava/lang/String;)Z
    .locals 4

    .line 1452
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1456
    :cond_0
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sPskSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x2c

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sSaeSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/wifi/AccessPoint;->sPskSaeSuffix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1460
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1461
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1460
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 1464
    :cond_2
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sOpenSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sOweSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1465
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    sget-object v3, Lcom/android/settingslib/wifi/AccessPoint;->sOweTransSuffix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1468
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1469
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1468
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 1472
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 1964
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "SettingsLib.AccessPoint"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$updateScores$0(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V
    .locals 2

    .line 595
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getUpdatedTimestampMillis()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    .line 596
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1908
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1911
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 1912
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    .line 1913
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1914
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static roundToClosestSpeedEnum(I)I
    .locals 2

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x7

    if-ge p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    const/16 p0, 0x14

    return p0

    :cond_3
    const/16 p0, 0x1e

    return p0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "WEP"

    return-object p0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    if-ne p1, v0, :cond_1

    const-string p0, "WPA"

    return-object p0

    :cond_1
    if-ne p1, v2, :cond_2

    const-string p0, "WPA2"

    return-object p0

    :cond_2
    if-ne p1, v1, :cond_3

    const-string p0, "WPA_WPA2"

    return-object p0

    :cond_3
    const-string p0, "PSK"

    return-object p0

    :cond_4
    if-ne p0, v1, :cond_5

    const-string p0, "EAP"

    return-object p0

    :cond_5
    const/16 p1, 0x9

    if-ne p0, p1, :cond_6

    const-string p0, "DPP"

    return-object p0

    :cond_6
    const/4 p1, 0x5

    if-ne p0, p1, :cond_7

    const-string p0, "SAE"

    return-object p0

    :cond_7
    const/4 p1, 0x6

    if-ne p0, p1, :cond_8

    const-string p0, "SUITE_B"

    return-object p0

    :cond_8
    const/4 p1, 0x4

    if-ne p0, p1, :cond_9

    const-string p0, "OWE"

    return-object p0

    :cond_9
    const/4 p1, 0x7

    if-ne p0, p1, :cond_a

    const-string p0, "PSK+SAE"

    return-object p0

    :cond_a
    const/16 p1, 0x8

    if-ne p0, p1, :cond_b

    const-string p0, "OWE_TRANSITION"

    return-object p0

    :cond_b
    const-string p0, "NONE"

    return-object p0
.end method

.method private updateBestRssiInfo()V
    .locals 7

    .line 890
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 896
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v3, -0x80000000

    move-object v4, v0

    move v0, v3

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 898
    iget v6, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v6, v0, :cond_1

    .line 899
    iget v0, v5, Landroid/net/wifi/ScanResult;->level:I

    move-object v4, v5

    goto :goto_0

    .line 903
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v3, :cond_3

    .line 906
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    if-eq v2, v3, :cond_3

    add-int/2addr v2, v0

    .line 907
    div-int/2addr v2, v1

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    .line 909
    :cond_3
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    :goto_1
    if-eqz v4, :cond_7

    .line 913
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 914
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 915
    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 916
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 918
    :cond_4
    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 920
    :cond_5
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 921
    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getEapType(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    .line 923
    :cond_6
    iget-boolean v0, v4, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 924
    iget v0, v4, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 925
    iget-object v0, v4, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 928
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 929
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    .line 903
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateKey()V
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/hotspot2/OsuProvider;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 6

    .line 653
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    const/4 v1, 0x0

    .line 654
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 656
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_0

    .line 657
    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    .line 658
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 660
    iget-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean p1, p1, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    goto :goto_1

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 664
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 665
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v4, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    goto :goto_0

    .line 671
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_3
    :goto_1
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-ne v0, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :catchall_0
    move-exception p0

    .line 671
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z
    .locals 8

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 574
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 575
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 576
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    if-nez v6, :cond_1

    .line 582
    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v7, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-direct {v7, v5, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;-><init>(Landroid/net/ScoredNetwork;J)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {v6, v5, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->update(Landroid/net/ScoredNetwork;J)V

    goto :goto_0

    .line 589
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, p2

    .line 593
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 594
    new-instance p2, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;

    invoke-direct {p2, v0, v1, p1}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;-><init>(JLjava/util/Iterator;)V

    invoke-interface {p1, p2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 600
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 589
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateSpeed()Z
    .locals 5

    .line 607
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 608
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->generateAverageSpeedForSsid()I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 610
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 611
    :goto_0
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 612
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v4, v1, v3

    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s: Set speed to %d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SettingsLib.AccessPoint"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private updateWifiGeneration()V
    .locals 4

    .line 957
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 964
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 965
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 966
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 967
    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/AccessPoint;->getMaxCapability(Landroid/net/wifi/ScanResult;)I

    move-result v3

    if-ge v3, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 984
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    .line 975
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x5

    .line 978
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    .line 981
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    :goto_1
    return-void
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 772
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    .line 773
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    return-void
.end method

.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3
    .param p1    # Lcom/android/settingslib/wifi/AccessPoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 450
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 455
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 462
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 463
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 467
    :cond_6
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 468
    invoke-static {v2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v0

    .line 474
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 480
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 485
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 486
    :cond_0
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    .line 1394
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1396
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1398
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    return-void

    .line 1400
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1401
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1403
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEasyConnectSupported()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 1406
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1407
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto :goto_2

    .line 1404
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    :goto_2
    return-void
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getCarrierApEapType()I
    .locals 0

    .line 1134
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    return p0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 0

    .line 1138
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    return-object p0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 764
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1112
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object p0

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1115
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0

    .line 1117
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 1122
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    .line 1123
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SettingsLib.AccessPoint"

    const-string v0, "NetworkInfo is null, cannot return detailed state"

    .line 1125
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 845
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLevel()I
    .locals 1

    .line 855
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method public getPasspointFqdn()Ljava/lang/String;
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    return-object p0
.end method

.method public getRssi()I
    .locals 0

    .line 859
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    return p0
.end method

.method public getSavedNetworkSummary()Ljava/lang/String;
    .locals 7

    .line 1142
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 1145
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1146
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1148
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    goto :goto_0

    .line 1152
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1153
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-interface {v2, v0, v6, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    if-eqz v4, :cond_1

    .line 1157
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->settings_package:I

    .line 1158
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settingslib/R$string;->certinstaller_package:I

    .line 1160
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->saved_network:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getScanResults()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 868
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 869
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 871
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 872
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScoredNetworkCache()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    return-object p0
.end method

.method public getSecurity()I
    .locals 0

    .line 1014
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 6

    .line 1018
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 1019
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_10

    .line 1023
    :cond_0
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const-string v2, ""

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    if-eqz p1, :cond_17

    goto/16 :goto_f

    .line 1086
    :pswitch_0
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wapi_cert:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1084
    :pswitch_1
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wapi_psk:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    if-eqz p1, :cond_1

    .line 1062
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_dpp:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_dpp:I

    .line 1063
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 1074
    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    if-ne p0, v3, :cond_3

    if-eqz p1, :cond_2

    .line 1075
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_owe:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_owe:I

    .line 1076
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    .line 1078
    :cond_4
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :pswitch_4
    if-eqz p1, :cond_5

    .line 1040
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap_suiteb:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap_suiteb:I

    .line 1041
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    .line 1066
    :pswitch_5
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    if-ne p0, v3, :cond_7

    if-eqz p1, :cond_6

    .line 1067
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_psk_sae:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_6
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_psk_sae:I

    .line 1068
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    .line 1070
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_sae:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_8
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_sae:I

    .line 1071
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0

    :pswitch_6
    if-eqz p1, :cond_9

    .line 1080
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_owe:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_9
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_owe:I

    .line 1081
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0

    .line 1025
    :pswitch_7
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    if-eq p0, v5, :cond_d

    if-eq p0, v4, :cond_b

    if-eqz p1, :cond_a

    .line 1035
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap:I

    .line 1036
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_a
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap:I

    .line 1037
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_b
    if-eqz p1, :cond_c

    .line 1030
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap_wpa2_wpa3:I

    .line 1031
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_c
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap_wpa2_wpa3:I

    .line 1032
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_8
    return-object p0

    :cond_d
    if-eqz p1, :cond_e

    .line 1027
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap_wpa:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_e
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap_wpa:I

    .line 1028
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0

    .line 1043
    :pswitch_8
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    if-eq p0, v5, :cond_14

    if-eq p0, v4, :cond_12

    const/4 v1, 0x3

    if-eq p0, v1, :cond_10

    if-eqz p1, :cond_f

    .line 1055
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_psk_generic:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_f
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_psk_generic:I

    .line 1056
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_10
    if-eqz p1, :cond_11

    .line 1051
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wpa_wpa2:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_11
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wpa_wpa2:I

    .line 1052
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_12
    if-eqz p1, :cond_13

    .line 1048
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wpa2:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_13
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wpa2:I

    .line 1049
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_14
    if-eqz p1, :cond_15

    .line 1045
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wpa:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_15
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wpa:I

    .line 1046
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_d
    return-object p0

    :pswitch_9
    if-eqz p1, :cond_16

    .line 1059
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_wep:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_16
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_wep:I

    .line 1060
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_e
    return-object p0

    .line 1090
    :cond_17
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_none:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_f
    return-object v2

    :cond_18
    :goto_10
    if-eqz p1, :cond_19

    .line 1020
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_short_eap:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_19
    sget p0, Lcom/android/settingslib/R$string;->wifi_security_eap:I

    .line 1021
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSettingsSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1187
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsSummary(Z)Ljava/lang/String;
    .locals 8

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1197
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 1198
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    if-eqz p1, :cond_0

    .line 1199
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->osu_sign_up_complete:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1200
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1201
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1202
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 1203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1205
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->tap_to_sign_up:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1207
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1208
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    iget-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz p1, :cond_4

    .line 1210
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->connected_via_carrier:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1213
    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_5

    .line 1214
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_0

    :cond_5
    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 1215
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkSuggestionOrSpecifierPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v7

    .line 1213
    :goto_1
    invoke-static {p1, v7, v1, v5, v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1218
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1219
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lcom/android/settingslib/R$string;->wifi_no_internet_no_reconnect:I

    goto :goto_2

    :cond_8
    sget p1, Lcom/android/settingslib/R$string;->wifi_no_internet:I

    .line 1222
    :goto_2
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1223
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1224
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1225
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    .line 1226
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    if-eq p1, v2, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_c

    const/4 v1, 0x4

    if-eq p1, v1, :cond_b

    const/4 v1, 0x5

    if-eq p1, v1, :cond_b

    const/16 v1, 0xd

    if-eq p1, v1, :cond_a

    goto/16 :goto_3

    .line 1231
    :cond_a
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_check_password_try_again:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1235
    :cond_b
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1228
    :cond_c
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1238
    :cond_d
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_disabled_generic:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1241
    :cond_e
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1242
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_disabled_by_recommendation_provider:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1244
    :cond_f
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v1, :cond_10

    .line 1245
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->available_via_carrier:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1247
    :cond_10
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1248
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1250
    :cond_11
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_14

    .line 1252
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v1

    const/16 v5, 0x11

    if-eq v1, v5, :cond_13

    if-eqz p1, :cond_12

    .line 1260
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_disconnected:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1263
    :cond_12
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1254
    :cond_13
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_ap_unable_to_handle_new_sta:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :cond_14
    :goto_3
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1274
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiUtils;->buildLoggingSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_15
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_17

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isMeteredOverridden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz p1, :cond_17

    .line 1278
    :cond_16
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1280
    invoke-static {v5, p0}, Lcom/android/settingslib/wifi/WifiUtils;->getMeteredLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    .line 1281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 1278
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1286
    :cond_17
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_18

    .line 1287
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 1289
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v4

    .line 1290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 1287
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1291
    :cond_18
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1292
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1294
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSpeed()I
    .locals 0

    .line 1644
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    return p0
.end method

.method getSpeedLabel()Ljava/lang/String;
    .locals 1

    .line 1648
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSpeedLabel(I)Ljava/lang/String;
    .locals 0

    .line 1669
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 0

    .line 1103
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 1183
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 1382
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1171
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object p0

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1178
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiGeneration()I
    .locals 0

    .line 990
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    add-int/2addr v1, v0

    .line 493
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr v1, v0

    .line 494
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v0, v0, 0x17

    add-int/2addr v1, v0

    .line 495
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1d

    add-int/2addr v1, p0

    return v1
.end method

.method public isActive()Z
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 1306
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCarrierAp()Z
    .locals 0

    .line 1130
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    return p0
.end method

.method public isConnectable()Z
    .locals 2

    .line 1310
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEphemeral()Z
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    .line 1315
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFils256Supported()Z
    .locals 3

    const-string v0, "wifi"

    .line 778
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 777
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    :try_start_0
    const-string v1, "key_mgmt"

    .line 782
    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsLib.AccessPoint"

    const-string v2, "Remote Exception"

    .line 784
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_0
    const-string v1, "FILS-SHA256"

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 791
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 792
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public isFils384Supported()Z
    .locals 3

    const-string v0, "wifi"

    .line 823
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 822
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    :try_start_0
    const-string v1, "key_mgmt"

    .line 827
    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsLib.AccessPoint"

    const-string v2, "Remote Exception"

    .line 829
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_0
    const-string v1, "FILS-SHA384"

    .line 832
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 836
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 837
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public isMetered()Z
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1006
    invoke-static {v0, p0}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOsuProvider()Z
    .locals 0

    .line 1336
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasspoint()Z
    .locals 0

    .line 1322
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasspointConfig()Z
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReachable()Z
    .locals 1

    .line 1696
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaved()Z
    .locals 0

    .line 1378
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuiteBSupported()Z
    .locals 3

    const-string v0, "wifi"

    .line 801
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 800
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    :try_start_0
    const-string v1, "key_mgmt"

    .line 805
    invoke-interface {v0, v1}, Landroid/net/wifi/IWifiManager;->getCapabilities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsLib.AccessPoint"

    const-string v2, "Remote Exception"

    .line 807
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_0
    const-string v1, "WPA-EAP-SUITE-B-192"

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 814
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 815
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP_SUITE_B_192"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public isTwtSupported()Z
    .locals 0

    .line 994
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    return p0
.end method

.method public isVhtMax8SpatialStreamsSupported()Z
    .locals 0

    .line 998
    iget-boolean p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    return p0
.end method

.method public synthetic lambda$setScanResults$1$AccessPoint()V
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1516
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setScanResults$2$AccessPoint()V
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1524
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$update$3$AccessPoint()V
    .locals 1

    .line 1604
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1605
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$update$4$AccessPoint()V
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1612
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$update$5$AccessPoint()V
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1629
    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_0
    return-void
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 411
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 412
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 413
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 414
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 415
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 739
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eq v0, v3, :cond_2

    goto :goto_4

    .line 748
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 749
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 750
    iget p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v3, 0x7

    if-eq p0, v3, :cond_7

    const/16 v3, 0x8

    if-eq p0, v3, :cond_4

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    if-eqz p1, :cond_6

    .line 756
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :cond_6
    :goto_2
    return v1

    :cond_7
    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    .line 753
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x5

    if-ne p1, p0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :cond_9
    :goto_3
    return v1

    :cond_a
    :goto_4
    return v2
.end method

.method public matches(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 0

    .line 735
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 5

    .line 1412
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_ssid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :cond_0
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const-string v1, "key_security"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1414
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const-string v1, "key_speed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1415
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    const-string v1, "key_psktype"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1416
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mEapType:I

    const-string v1, "eap_psktype"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1417
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    const-string v1, "key_config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v1, "key_wifiinfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1419
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "key_scanresults"

    .line 1420
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 1421
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 1422
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/os/Parcelable;

    .line 1421
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 1420
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 1425
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "key_scorednetworkcache"

    .line 1424
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1426
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    const-string v1, "key_networkinfo"

    .line 1427
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1429
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "key_fqdn"

    .line 1430
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "key_provider_friendly_name"

    .line 1433
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    :cond_4
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    const-string v1, "key_is_carrier_ap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1436
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    const-string v1, "key_carrier_ap_eap_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1437
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    const-string v0, "key_carrier_name"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1423
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V
    .locals 0

    .line 1441
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    return-void
.end method

.method setRssi(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1636
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    return-void
.end method

.method setScanResults(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1482
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SettingsLib.AccessPoint"

    const-string p1, "Cannot set scan results to empty list"

    .line 1483
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1490
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1491
    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v2

    .line 1492
    invoke-direct {p0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->isKeyEqual(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x3

    .line 1493
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object v2, p1, v0

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    aput-object p0, p1, v0

    const-string p0, "ScanResult %s\nkey of %s did not match current AP key %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsLib.AccessPoint"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1501
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1502
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1503
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1504
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1505
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateBestRssiInfo()V

    .line 1507
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateWifiGeneration()V

    .line 1508
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-lez p1, :cond_3

    if-eq p1, v0, :cond_3

    .line 1513
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    .line 1514
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$MkkIS1nUbezHicDMmYnviyiBJyo;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$MkkIS1nUbezHicDMmYnviyiBJyo;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1522
    :cond_3
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$0Yq14aFJZLjPMzFGAvglLaxsblI;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$0Yq14aFJZLjPMzFGAvglLaxsblI;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1505
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setScanResultsPasspoint(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1538
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1539
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1540
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 1541
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1544
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    goto :goto_0

    .line 1545
    :cond_1
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1546
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsRoaming:Z

    .line 1547
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 1549
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    return-void
.end method

.method setUnreachable()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1641
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    return-void
.end method

.method public startOsuProvisioning(Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3

    .line 1343
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1345
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 1347
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1345
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/wifi/WifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ":"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 516
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "connectable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ",level="

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    if-eqz v1, :cond_6

    const-string v1, ",speed="

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ",metered="

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ",rssi="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, ",scan cache size="

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mExtraScanResults:Landroid/util/ArraySet;

    .line 531
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/2addr v2, p0

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_0
    const/16 p0, 0x29

    .line 535
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 1622
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1623
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 1626
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1627
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 4

    .line 1566
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_7

    .line 1567
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1568
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    move v1, v2

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eq v3, p1, :cond_1

    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 1576
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isMtkHW(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getWifiGeneration()I

    move-result v3

    if-ne p1, v3, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 1577
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isTwtSupported()Z

    move-result v3

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z

    .line 1578
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isVhtMax8SpatialStreamsSupported()Z

    move-result v3

    if-eq p1, v3, :cond_4

    .line 1579
    :cond_3
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getWifiGeneration()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mWifiGeneration:I

    .line 1580
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isTwtSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTwtSupport:Z

    .line 1581
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isVhtMax8SpatialStreamsSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mVhtMax8SpatialStreamsSupport:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    const-string p1, "SettingsLib.AccessPoint"

    const-string v3, "update Throwable!"

    .line 1585
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    if-eq p1, v3, :cond_5

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    const/16 v3, -0x7f

    if-eq p1, v3, :cond_5

    .line 1588
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    :goto_1
    move v1, v2

    goto :goto_2

    .line 1590
    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 1591
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_6

    goto :goto_1

    .line 1594
    :cond_6
    :goto_2
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1595
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_3

    .line 1596
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 1598
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1599
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1600
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateWifiGeneration()V

    move v1, v2

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 1602
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz p1, :cond_9

    .line 1603
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$S7H59e_8IxpVPy0V68Oc2-zX-rg;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$S7H59e_8IxpVPy0V68Oc2-zX-rg;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1609
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p1

    if-eq v0, p1, :cond_9

    .line 1610
    new-instance p1, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QW-1Uw0oxoaKqUtEtPO0oPvH5ng;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QW-1Uw0oxoaKqUtEtPO0oPvH5ng;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_9
    return v1
.end method

.method update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 553
    invoke-direct {p0, p1, p3, p4}, Lcom/android/settingslib/wifi/AccessPoint;->updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    .line 555
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
