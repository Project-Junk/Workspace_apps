.class public Lcom/android/internal/telephony/PhoneSwitcher;
.super Landroid/os/Handler;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;,
        Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_CHANGE_TIMEOUT_MS:I = 0x1388

.field private static final DEFAULT_VALIDATION_EXPIRATION_TIME:I = 0x7d0

.field private static final EVENT_EMERGENCY_TOGGLE:I = 0x69

.field private static final EVENT_MODEM_COMMAND_DONE:I = 0x70

.field private static final EVENT_MODEM_COMMAND_RETRY:I = 0x71

.field private static final EVENT_NETWORK_VALIDATION_DONE:I = 0x6e

.field protected static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x74

.field private static final EVENT_OPPT_DATA_SUB_CHANGED:I = 0x6b

.field private static final EVENT_PHONE_IN_CALL_CHANGED:I = 0x6d

.field protected static final EVENT_PRIMARY_DATA_SUB_CHANGED:I = 0x65

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x6c

.field private static final EVENT_RADIO_CAPABILITY_CHANGED:I = 0x6a

.field private static final EVENT_RELEASE_NETWORK:I = 0x68

.field private static final EVENT_REMOVE_DEFAULT_NETWORK_CHANGE_CALLBACK:I = 0x6f

.field private static final EVENT_REQUEST_NETWORK:I = 0x67

.field protected static final EVENT_SUBSCRIPTION_CHANGED:I = 0x66

.field protected static final EVENT_UNSOL_MAX_DATA_ALLOWED_CHANGED:I = 0x73

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x72

.field protected static final HAL_COMMAND_ALLOW_DATA:I = 0x1

.field protected static final HAL_COMMAND_PREFERRED_DATA:I = 0x2

.field protected static final HAL_COMMAND_UNKNOWN:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "PhoneSwitcher"

.field private static final MAX_LOCAL_LOG_LINES:I = 0x1e

.field private static final MODEM_COMMAND_RETRY_PERIOD_MS:I = 0x1388

.field private static final REQUESTS_CHANGED:Z = true

.field protected static final REQUESTS_UNCHANGED:Z = false

.field protected static final VDBG:Z = false

.field private static sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;


# instance fields
.field protected final mActivePhoneRegistrants:Landroid/os/RegistrantList;

.field protected final mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mHalCommandToUse:I

.field private mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

.field private final mLocalLog:Landroid/util/LocalLog;

.field protected mMaxActivePhones:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mNumPhones:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mOpptDataSubId:I

.field private mPhoneIdInVoiceCall:I

.field public final mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

.field protected final mPhoneSubscriptions:[I

.field private final mPhones:[Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPreferredDataPhoneId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mPreferredDataSubId:I

.field protected mPrimaryDataSubId:I

.field protected final mPrioritizedDcRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/DcRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

.field protected final mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private final mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;

.field protected final mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 235
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSwitcher$WfAxZbJDpCUxBytiUchQ87aGijQ;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSwitcher$WfAxZbJDpCUxBytiUchQ87aGijQ;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    const v1, 0x7fffffff

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    .line 120
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 122
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 132
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataSubId:I

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHalCommandToUse:I

    .line 168
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    .line 172
    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 335
    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$4;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$5;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 236
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 237
    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    .line 238
    iput-object p8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 239
    new-array p8, p2, [I

    iput-object p8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 240
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    .line 241
    new-instance p1, Landroid/util/LocalLog;

    const/16 p8, 0x1e

    invoke-direct {p1, p8}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    .line 243
    iput-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 244
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 246
    new-instance p1, Lcom/android/internal/telephony/PhoneSwitcher$3;

    invoke-direct {p1, p0, p5}, Lcom/android/internal/telephony/PhoneSwitcher$3;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/CellularNetworkValidator;->getInstance()Lcom/android/internal/telephony/CellularNetworkValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 277
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    const-string p4, "phone"

    .line 278
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 279
    iget-object p4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const p8, 0x200800

    invoke-virtual {p1, p4, p8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 282
    new-instance p1, Landroid/os/RegistrantList;

    invoke-direct {p1}, Landroid/os/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    .line 283
    new-array p1, p2, [Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    move p1, v0

    :goto_0
    const/4 p4, 0x0

    if-ge p1, p2, :cond_1

    .line 285
    iget-object p8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;-><init>()V

    aput-object v1, p8, p1

    .line 286
    iget-object p8, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, p8, p1

    if-eqz v1, :cond_0

    .line 287
    aget-object p8, p8, p1

    const/16 v1, 0x69

    invoke-virtual {p8, p0, v1, p4}, Lcom/android/internal/telephony/Phone;->registerForEmergencyCallToggle(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iput-object p7, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    if-lez p2, :cond_2

    .line 294
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object p1, p1, v0

    const/16 p2, 0x6c

    invoke-interface {p1, p0, p2, p4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {p6, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "connectivity"

    .line 304
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 306
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance p4, Landroid/content/IntentFilter;

    const-string p6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {p4, p6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    new-instance p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 310
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 311
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 p2, 0x1

    .line 312
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 p2, 0x2

    .line 313
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 p2, 0x3

    .line 314
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 p2, 0x4

    .line 315
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 p2, 0x5

    .line 316
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/4 p2, 0x7

    .line 317
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 p2, 0x8

    .line 318
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 p2, 0x9

    .line 319
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 p2, 0xa

    .line 320
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 p2, 0xd

    .line 321
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 p2, 0xc

    .line 322
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    const/16 p2, 0x17

    .line 323
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 324
    new-instance p2, Landroid/net/MatchAllNetworkSpecifier;

    invoke-direct {p2}, Landroid/net/MatchAllNetworkSpecifier;-><init>()V

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 326
    new-instance p2, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;

    invoke-direct {p2, p5, p3, p1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$PhoneSwitcherNetworkRequestListener;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneSwitcher;)V

    const/16 p1, 0x65

    .line 329
    invoke-virtual {p2, p1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 330
    invoke-virtual {p2}, Landroid/net/NetworkFactory;->register()V

    const-string p1, "PhoneSwitcher started"

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Looper;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 211
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSwitcher$WfAxZbJDpCUxBytiUchQ87aGijQ;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSwitcher$WfAxZbJDpCUxBytiUchQ87aGijQ;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    const v1, 0x7fffffff

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    .line 120
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    .line 122
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 132
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataSubId:I

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHalCommandToUse:I

    .line 168
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    .line 172
    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$1;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 335
    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$4;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v1, Lcom/android/internal/telephony/PhoneSwitcher$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSwitcher$5;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionsChangedListener:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 212
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 214
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 215
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    .line 216
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    .line 217
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 218
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    .line 219
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    .line 220
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    .line 221
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    .line 222
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/RadioConfig;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/RadioConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    .line 223
    new-instance p1, Lcom/android/internal/telephony/PhoneSwitcher$2;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/PhoneSwitcher$2;-><init>(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 228
    invoke-static {}, Lcom/android/internal/telephony/CellularNetworkValidator;->getInstance()Lcom/android/internal/telephony/CellularNetworkValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/PhoneSwitcher;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/PhoneSwitcher;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/PhoneSwitcher;III)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;->logDataSwitchEvent(III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/PhoneSwitcher;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->removeDefaultNetworkChangeCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/telephony/PhoneCapability;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onPhoneCapabilityChangedInternal(Landroid/telephony/PhoneCapability;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/PhoneSwitcher;)I
    .locals 0

    .line 81
    iget p0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/PhoneSwitcher;I)I
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/PhoneSwitcher;)[Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/PhoneSwitcher;Lcom/android/internal/telephony/Phone;)Z
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->isCallActive(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    return p0
.end method

.method private collectReleaseNetworkMetrics(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 528
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 530
    new-instance p1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-direct {p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;-><init>()V

    const/4 v0, 0x2

    .line 531
    iput v0, p1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->apn:I

    .line 532
    iput v0, p1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->state:I

    .line 533
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)V

    :cond_0
    return-void
.end method

.method private collectRequestNetworkMetrics(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 516
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    new-instance p1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-direct {p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;-><init>()V

    const/4 v0, 0x2

    .line 519
    iput v0, p1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->apn:I

    .line 520
    iput v1, p1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;->state:I

    .line 521
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnDemandDataSwitch(Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 1

    .line 191
    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    return-object v0
.end method

.method private getSubIdForDefaultNetworkRequests()I
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    return v0

    .line 771
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    return v0
.end method

.method private isCallActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 944
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 945
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private logDataSwitchEvent(III)V
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 968
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    .line 969
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    .line 970
    iput p2, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->state:I

    .line 971
    iput p3, v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;->reason:I

    .line 972
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDataSwitch(ILcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;)V

    return-void
.end method

.method public static make(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 10

    .line 200
    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 205
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneSwitcher;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    return-object v0
.end method

.method private notifyPreferredDataSubIdChanged()V
    .locals 3

    const-string/jumbo v0, "telephony.registry"

    .line 979
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    .line 982
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyPreferredDataSubIdChanged to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 983
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyActiveDataSubIdChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private onPhoneCapabilityChangedInternal(Landroid/telephony/PhoneCapability;)V
    .locals 1

    .line 705
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 706
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNumberOfModemsWithSimultaneousDataConnections()I

    move-result p1

    .line 707
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-eq v0, p1, :cond_0

    .line 708
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Max active phones changed to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "phoneCfgChanged"

    .line 710
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private onReleaseNetwork(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 483
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "netReleased"

    .line 486
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 487
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->collectReleaseNetworkMetrics(Landroid/net/NetworkRequest;)V

    :cond_0
    return-void
.end method

.method private onRequestNetwork(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 473
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DcRequest;-><init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->collectRequestNetworkMetrics(Landroid/net/NetworkRequest;)V

    .line 476
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p1, 0x1

    const-string v0, "netRequest"

    .line 478
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private onValidationDone(IZ)V
    .locals 2

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network validation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "passed"

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 920
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->setOpportunisticSubscriptionInternal(I)V

    .line 923
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    const/4 p1, 0x0

    .line 925
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    return-void
.end method

.method private registerDefaultNetworkChangeCallback()V
    .locals 4

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->removeDefaultNetworkChangeCallback()V

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    monitor-enter v0

    .line 505
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/16 v1, 0x6f

    .line 508
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 507
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 510
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeDefaultNetworkChangeCallback()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHasRegisteredDefaultNetworkChangeCallback:Ljava/lang/Boolean;

    const/16 v1, 0x6f

    .line 495
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->removeMessages(I)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 498
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 896
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 898
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteException "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can\'t switch data to inactive subId "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 850
    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 855
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->getSubIdInValidation()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->stopValidation()V

    .line 859
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 860
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void

    .line 866
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/CellularNetworkValidator;->isValidationFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    const/4 v0, 0x3

    .line 867
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 869
    iput-object p3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSetOpptSubCallback:Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    .line 870
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    const/16 p3, 0x7d0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidationCallback:Lcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->validate(IIZLcom/android/internal/telephony/CellularNetworkValidator$ValidationCallback;)V

    return-void

    .line 873
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->setOpportunisticSubscriptionInternal(I)V

    .line 874
    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void
.end method

.method private setOpportunisticSubscriptionInternal(I)V
    .locals 2

    .line 906
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    if-eq v0, p1, :cond_0

    .line 907
    iput p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    const/4 p1, 0x0

    const-string v0, "oppt data subId changed"

    .line 908
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 909
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 912
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->registerDefaultNetworkChangeCallback()V

    :cond_0
    return-void
.end method

.method private switchPhone(IZ)V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v0, v0, p1

    .line 671
    iget-boolean v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    if-ne v1, p2, :cond_0

    return-void

    .line 672
    :cond_0
    iput-boolean p2, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string p2, "activate "

    goto :goto_0

    :cond_1
    const-string p2, "deactivate "

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendRilCommands(I)V

    return-void
.end method

.method private unsetOpportunisticDataSubscription(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellularNetworkValidator;->stopValidation()V

    :cond_0
    const v0, 0x7fffffff

    .line 889
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->setOpportunisticSubscriptionInternal(I)V

    const/4 v0, 0x0

    .line 890
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->sendSetOpptCallbackHelper(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;I)V

    return-void
.end method

.method private updateHalCommandToUse()V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioConfig;->isSetPreferredDataCommandSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 950
    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHalCommandToUse:I

    return-void
.end method


# virtual methods
.method protected activate(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    .line 661
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->switchPhone(IZ)V

    return-void
.end method

.method protected deactivate(I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 666
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->switchPhone(IZ)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 990
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "PhoneSwitcher:"

    .line 991
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 992
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    .line 993
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v2, v3, :cond_1

    .line 994
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object v3, v3, v2

    .line 995
    iget-wide v4, v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    invoke-virtual {p2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 996
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PhoneId("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", lastRequest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-wide v5, v3, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->lastRequested:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    const-string v3, "never"

    goto :goto_1

    :cond_0
    const/4 v3, 0x6

    .line 998
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v5, 0x2

    aput-object p2, v3, v5

    const/4 v5, 0x3

    aput-object p2, v3, v5

    const/4 v5, 0x4

    aput-object p2, v3, v5

    const/4 v5, 0x5

    aput-object p2, v3, v5

    const-string v5, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 996
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1001
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getOpportunisticDataSubscriptionId()I
    .locals 1

    .line 954
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    return v0
.end method

.method public getPreferredDataPhoneId()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    return v0
.end method

.method protected getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 3

    .line 745
    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    return p1

    .line 752
    :cond_0
    instance-of v0, p1, Landroid/net/StringNetworkSpecifier;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 754
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/net/StringNetworkSpecifier;

    iget-object v0, v0, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 756
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NumberFormatException on "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroid/net/StringNetworkSpecifier;

    iget-object p1, p1, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneSwitcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 432
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 433
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resend modem command on phone "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendRilCommands(I)V

    goto/16 :goto_0

    .line 422
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_3

    .line 423
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Modem command failed. with exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/16 p1, 0x71

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 426
    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 418
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->removeDefaultNetworkChangeCallback()V

    return-void

    .line 412
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 413
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_0

    move v1, v2

    .line 414
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->onValidationDone(IZ)V

    return-void

    :pswitch_4
    const-string p1, "EVENT_PHONE_IN_CALL_CHANGED"

    .line 403
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 407
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->registerDefaultNetworkChangeCallback()V

    return-void

    .line 398
    :pswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->updateHalCommandToUse()V

    const-string p1, "EVENT_RADIO_AVAILABLE"

    .line 399
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 386
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 387
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 388
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    .line 390
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->setOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void

    .line 393
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->unsetOpportunisticDataSubscription(Lcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    return-void

    .line 381
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendRilCommands(I)V

    return-void

    :pswitch_8
    const-string p1, "emergencyToggle"

    .line 377
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    .line 373
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onReleaseNetwork(Landroid/net/NetworkRequest;)V

    return-void

    .line 369
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onRequestNetwork(Landroid/net/NetworkRequest;)V

    return-void

    :pswitch_b
    const-string p1, "subChanged"

    .line 356
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    return-void

    :pswitch_c
    const-string p1, "primary data subId changed"

    .line 360
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 361
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mOpptDataSubId:I

    invoke-direct {p0, p1, v2, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->logDataSwitchEvent(III)V

    .line 364
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->registerDefaultNetworkChangeCallback()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isEmergency()Z
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 442
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isInEmergencyCall()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method protected isPhoneActive(I)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    return p1
.end method

.method public synthetic lambda$new$0$PhoneSwitcher(ZI)V
    .locals 1

    const/16 v0, 0x6e

    .line 103
    invoke-static {p0, v0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "PhoneSwitcher"

    .line 963
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected onEvaluate(ZLjava/lang/String;)Z
    .locals 7

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->isEmergency()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p1, "onEvalute aborted due to Emergency"

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    return v1

    .line 556
    :cond_0
    iget p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v1

    .line 559
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {p2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result p2

    .line 560
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    const-string v5, "->"

    if-eq p2, v4, :cond_2

    const-string v4, " mPrimaryDataSubId "

    .line 561
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    iput p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrimaryDataSubId:I

    :cond_2
    move p2, p1

    move p1, v1

    .line 567
    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge p1, v4, :cond_4

    .line 568
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v4

    .line 569
    iget-object v6, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v6, v6, p1

    if-eq v4, v6, :cond_3

    const-string p2, " phone["

    .line 570
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget p2, p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    iget-object p2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aput v4, p2, p1

    move p2, v3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 578
    :cond_4
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->updatePreferredDataPhoneId()V

    .line 580
    iget v4, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-eq p1, v4, :cond_5

    const-string p2, " preferred phoneId "

    .line 581
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move p2, v3

    :cond_5
    if-eqz p2, :cond_f

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "evaluating due to "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    .line 588
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHalCommandToUse:I

    if-ne p1, v2, :cond_7

    .line 592
    :goto_2
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, p1, :cond_6

    .line 593
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneStates:[Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;

    aget-object p1, p1, v1

    iput-boolean v3, p1, Lcom/android/internal/telephony/PhoneSwitcher$PhoneState;->active:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 595
    :cond_6
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->sendRilCommands(I)V

    goto/16 :goto_6

    .line 597
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    array-length v2, v2

    if-ne v0, v2, :cond_8

    move v0, v1

    .line 605
    :goto_3
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-ge v0, v2, :cond_b

    .line 606
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 609
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPrioritizedDcRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .line 610
    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 612
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 613
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-lt v2, v3, :cond_9

    .line 617
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mMaxActivePhones:I

    if-ge v0, v2, :cond_b

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 618
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 619
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 620
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_b
    :goto_4
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v1, v0, :cond_d

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 636
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PhoneSwitcher;->deactivate(I)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 641
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->activate(I)V

    goto :goto_5

    .line 646
    :cond_e
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->notifyPreferredDataSubIdChanged()V

    .line 649
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_f
    return p2
.end method

.method public onRadioCapChanged(I)V
    .locals 1

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    const/16 v0, 0x6a

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 685
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 686
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected phoneIdForRequest(Landroid/net/NetworkRequest;)I
    .locals 4

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 717
    iget p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    return p1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 720
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    aget v2, v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 726
    :goto_0
    iget-object p1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 728
    invoke-virtual {p1}, Lcom/android/internal/telephony/CellularNetworkValidator;->getSubIdInValidation()I

    move-result p1

    if-eq v0, p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    .line 735
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge p1, v2, :cond_5

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v2, v2, p1

    if-ne v2, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_2
    return p1
.end method

.method public registerForActivePhoneSwitch(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 825
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 826
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {p1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 827
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    return-void
.end method

.method protected sendRilCommands(I)V
    .locals 3

    .line 690
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x70

    .line 692
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 693
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mHalCommandToUse:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 698
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    if-ne p1, v1, :cond_3

    .line 700
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/RadioConfig;->setPreferredDataModem(ILandroid/os/Message;)V

    goto :goto_1

    .line 695
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-le v1, v2, :cond_3

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->isPhoneActive(I)Z

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public shouldApplyNetworkRequest(Landroid/net/NetworkRequest;I)Z
    .locals 2

    .line 805
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->validatePhoneId(I)V

    .line 808
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->isPhoneActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 810
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->phoneIdForRequest(Landroid/net/NetworkRequest;)I

    move-result p1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public trySetOpportunisticDataSubscription(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    .locals 2

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Try set opportunistic data subscription to subId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, " with "

    goto :goto_0

    :cond_0
    const-string v1, " without "

    .line 934
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PhoneSwitcher;->log(Ljava/lang/String;)V

    const/16 v0, 0x6b

    .line 935
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneSwitcher;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 936
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterForActivePhoneSwitch(Landroid/os/Handler;)V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mActivePhoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method protected updatePreferredDataPhoneId()V
    .locals 4

    .line 778
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneIdInVoiceCall:I

    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    goto :goto_2

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneSwitcher;->getSubIdForDefaultNetworkRequests()I

    move-result v0

    const/4 v1, -0x1

    .line 789
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 790
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge v2, v3, :cond_2

    .line 791
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPhoneSubscriptions:[I

    aget v3, v3, v2

    if-ne v3, v0, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    :cond_2
    :goto_1
    iput v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    .line 801
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget v1, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mPreferredDataSubId:I

    return-void
.end method

.method protected validatePhoneId(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-ltz p1, :cond_0

    .line 836
    iget v0, p0, Lcom/android/internal/telephony/PhoneSwitcher;->mNumPhones:I

    if-ge p1, v0, :cond_0

    return-void

    .line 837
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid PhoneId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
