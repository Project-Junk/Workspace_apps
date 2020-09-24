.class public Lcom/android/internal/telephony/dataconnection/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field static final BASE:I = 0x40000

.field private static final CMD_TO_STRING_COUNT:I = 0x1c

.field private static final DBG:Z = true

.field private static final DEFAULT_INTERNET_CONNECTION_SCORE:I = 0x32

.field static final EVENT_BW_REFRESH_RESPONSE:I = 0x4000e

.field static final EVENT_CONNECT:I = 0x40000

.field static final EVENT_DATA_CONNECTION_DDS_SWITCHED:I = 0x4001b

.field static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x4000b

.field static final EVENT_DATA_CONNECTION_OVERRIDE_CHANGED:I = 0x40011

.field static final EVENT_DATA_CONNECTION_ROAM_OFF:I = 0x4000d

.field static final EVENT_DATA_CONNECTION_ROAM_ON:I = 0x4000c

.field static final EVENT_DATA_CONNECTION_VOICE_CALL_ENDED:I = 0x40010

.field static final EVENT_DATA_CONNECTION_VOICE_CALL_STARTED:I = 0x4000f

.field static final EVENT_DATA_STATE_CHANGED:I = 0x40007

.field static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field static final EVENT_DISCONNECT:I = 0x40004

.field static final EVENT_DISCONNECT_ALL:I = 0x40006

.field static final EVENT_KEEPALIVE_STARTED:I = 0x40013

.field static final EVENT_KEEPALIVE_START_REQUEST:I = 0x40015

.field static final EVENT_KEEPALIVE_STATUS:I = 0x40012

.field static final EVENT_KEEPALIVE_STOPPED:I = 0x40014

.field static final EVENT_KEEPALIVE_STOP_REQUEST:I = 0x40016

.field static final EVENT_LINK_CAPACITY_CHANGED:I = 0x40017

.field static final EVENT_LOST_CONNECTION:I = 0x40009

.field static final EVENT_REEVALUATE_DATA_CONNECTION_PROPERTIES:I = 0x4001a

.field static final EVENT_REEVALUATE_RESTRICTED_STATE:I = 0x40019

.field static final EVENT_RESET:I = 0x40018

.field static final EVENT_RIL_CONNECTED:I = 0x40005

.field static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field static final EVENT_TEAR_DOWN_NOW:I = 0x40008

.field private static final NETWORK_TYPE:Ljava/lang/String; = "MOBILE"

.field private static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field private static final OTHER_CONNECTION_SCORE:I = 0x2d

.field private static final RAT_NAME_5G:Ljava/lang/String; = "nr"

.field private static final RAT_NAME_EVDO:Ljava/lang/String; = "evdo"

.field private static final TCP_BUFFER_SIZES_1XRTT:Ljava/lang/String; = "16384,32768,131072,4096,16384,102400"

.field private static final TCP_BUFFER_SIZES_EDGE:Ljava/lang/String; = "4093,26280,70800,4096,16384,70800"

.field private static final TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String; = "131072,262144,1048576,4096,16384,524288"

.field private static final TCP_BUFFER_SIZES_EVDO:Ljava/lang/String; = "4094,87380,262144,4096,16384,262144"

.field private static final TCP_BUFFER_SIZES_GPRS:Ljava/lang/String; = "4092,8760,48000,4096,8760,48000"

.field private static final TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String; = "61167,367002,1101005,8738,52429,262114"

.field private static final TCP_BUFFER_SIZES_HSPA:Ljava/lang/String; = "40778,244668,734003,16777,100663,301990"

.field private static final TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String; = "122334,734003,2202010,32040,192239,576717"

.field private static final TCP_BUFFER_SIZES_LTE:Ljava/lang/String; = "524288,1048576,2097152,262144,524288,1048576"

.field private static final TCP_BUFFER_SIZES_NR:Ljava/lang/String; = "2097152,6291456,16777216,512000,2097152,8388608"

.field private static final TCP_BUFFER_SIZES_UMTS:Ljava/lang/String; = "58254,349525,1048576,58254,349525,1048576"

.field private static final VDBG:Z = true

.field private static mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

.field private final mApnContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;",
            ">;"
        }
    .end annotation
.end field

.field private mApnSetting:Landroid/telephony/data/ApnSetting;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCid:I

.field private mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private mCreateTime:J

.field private mDataRegState:I

.field private mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

.field private mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDcFailCause:I

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

.field private mDisabledApnTypeBitMask:I

.field private mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

.field private mLastFailCause:I

.field private mLastFailTime:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPcscfAddr:[Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field private mRegistered:Z

.field private mRestrictedNetworkOverride:Z

.field private mRilRat:I

.field private mScore:I

.field private mSubscriptionOverride:I

.field mTag:I

.field private final mTagSuffix:Ljava/lang/String;

.field private final mTransportType:I

.field private mUnmeteredUseOnly:Z

.field private mUserData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x1c

    .line 282
    new-array v0, v0, [Ljava/lang/String;

    .line 284
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v2, "EVENT_CONNECT"

    aput-object v2, v0, v1

    .line 285
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "EVENT_SETUP_DATA_CONNECTION_DONE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EVENT_DEACTIVATE_DONE"

    .line 287
    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EVENT_DISCONNECT"

    .line 288
    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EVENT_RIL_CONNECTED"

    .line 289
    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVENT_DISCONNECT_ALL"

    .line 290
    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EVENT_DATA_STATE_CHANGED"

    .line 291
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EVENT_TEAR_DOWN_NOW"

    .line 292
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EVENT_LOST_CONNECTION"

    .line 293
    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    .line 294
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_ON"

    .line 296
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_OFF"

    .line 297
    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EVENT_BW_REFRESH_RESPONSE"

    .line 298
    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_STARTED"

    .line 299
    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EVENT_DATA_CONNECTION_VOICE_CALL_ENDED"

    .line 301
    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EVENT_DATA_CONNECTION_OVERRIDE_CHANGED"

    .line 303
    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EVENT_KEEPALIVE_STATUS"

    .line 305
    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EVENT_KEEPALIVE_STARTED"

    .line 306
    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EVENT_KEEPALIVE_STOPPED"

    .line 307
    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EVENT_KEEPALIVE_START_REQUEST"

    .line 308
    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EVENT_KEEPALIVE_STOP_REQUEST"

    .line 309
    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "EVENT_LINK_CAPACITY_CHANGED"

    .line 310
    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EVENT_RESET"

    .line 311
    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EVENT_DATA_CONNECTION_DDS_SWITCHED"

    .line 312
    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EVENT_REEVALUATE_RESTRICTED_STATE"

    .line 314
    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EVENT_REEVALUATE_DATA_CONNECTION_PROPERTIES"

    .line 316
    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 3

    .line 560
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DC-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 228
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    const v1, 0x7fffffff

    .line 236
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    .line 237
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    const/4 v1, 0x0

    .line 240
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    .line 244
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    .line 245
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 247
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRegistered:Z

    .line 539
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$1;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1052
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    .line 1073
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    .line 1622
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    .line 1745
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    .line 1859
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    .line 2281
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    .line 2339
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    .line 2392
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 561
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTagSuffix:Ljava/lang/String;

    const/16 p2, 0x12c

    .line 562
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogRecSize(I)V

    const/4 p2, 0x1

    .line 563
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogOnlyTransitions(Z)V

    const-string v0, "DataConnection created"

    .line 564
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 566
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 567
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 568
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    .line 569
    invoke-virtual {p5}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    .line 570
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 571
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 572
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    const/4 p1, -0x1

    .line 573
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 574
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 575
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    .line 576
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    .line 577
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p3

    .line 578
    new-instance p4, Landroid/net/NetworkInfo;

    .line 579
    invoke-static {p3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p5

    const-string p6, "MOBILE"

    invoke-direct {p4, v1, p3, p6, p5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 580
    iget-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, p2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 583
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 584
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 585
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 586
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 587
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 588
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 589
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IZ)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return p0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return p0
.end method

.method static synthetic access$1802(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateNetworkInfo()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateNetworkInfoSuspendState()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    return p0
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/dataconnection/DataConnection;ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/telephony/data/DataCallResponse;)J
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    return p0
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->shouldRestrictNetwork()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    return p0
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isUnmeteredUseOnly()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandoverSourceTransport()I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    iget p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    return p0
.end method

.method static synthetic access$4602(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->calculateScore()I

    move-result p0

    return p0
.end method

.method static synthetic access$4872(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    return p1
.end method

.method static synthetic access$4876(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateScore()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Ljava/util/Map;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/telephony/data/ApnSetting;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataServiceManager;)Lcom/android/internal/telephony/dataconnection/DataServiceManager;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    return-object p1
.end method

.method private calculateScore()I
    .locals 5

    .line 3118
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x2d

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3119
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNetworkRequests()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;

    const/16 v4, 0xc

    .line 3120
    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3121
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v1, 0x32

    goto :goto_0

    :cond_2
    return v1
.end method

.method private checkSetMtu(Landroid/telephony/data/ApnSetting;Landroid/net/LinkProperties;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MTU set by call response to: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 511
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 513
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MTU set by APN to: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtu()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 520
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 521
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTU set by config resource to: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private clearSettings()V
    .locals 2

    const-string v0, "clearSettings"

    .line 859
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 861
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 862
    iput-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    const/4 v0, 0x0

    .line 863
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    const/4 v1, -0x1

    .line 864
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const/4 v1, 0x5

    .line 866
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 868
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 870
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 871
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    .line 872
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    .line 873
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    .line 874
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    return-void
.end method

.method static cmdToString(I)Ljava/lang/String;
    .locals 3

    const/high16 v0, 0x40000

    sub-int/2addr p0, v0

    if-ltz p0, :cond_0

    .line 323
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_0

    .line 324
    aget-object v1, v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private connect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect: carrier=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' APN=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 614
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' proxy=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 615
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' port=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 616
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 618
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    const-string v3, "DataConnection.connect"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 621
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    const/4 v3, 0x0

    const v4, 0x40001

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_1

    .line 622
    new-instance v2, Landroid/telephony/data/DataCallResponse;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 623
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v7

    iget v8, v7, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:I

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 624
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v7

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v13, ""

    move-object v7, v2

    invoke-direct/range {v7 .. v18}, Landroid/telephony/data/DataCallResponse;-><init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 627
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 628
    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 629
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connect: FailBringUpAll="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " send error response="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 634
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    return v6

    :cond_1
    const-wide/16 v7, -0x1

    .line 638
    iput-wide v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 639
    iput-wide v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    .line 640
    iput v6, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    .line 642
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 643
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 645
    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget v7, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 646
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Landroid/telephony/data/ApnSetting;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 645
    invoke-static {v4, v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataProfile(Landroid/telephony/data/ApnSetting;IZ)Landroid/telephony/data/DataProfile;

    move-result-object v4

    .line 651
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result v12

    .line 656
    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v12, :cond_2

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 657
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move v13, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v13, v5

    .line 662
    :goto_1
    iget v7, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 665
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandoverSourceTransport()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v3

    const v5, 0x10006

    if-eqz v3, :cond_7

    .line 666
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-nez v7, :cond_4

    goto :goto_2

    .line 672
    :cond_4
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataConnectionByApnType(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v1, "connect: Can\'t find data connection for handover."

    .line 674
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    return v5

    .line 678
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    if-nez v7, :cond_6

    .line 680
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connect: Can\'t find link properties of handover data connection. dc="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    return v5

    :cond_6
    const/4 v5, 0x3

    move v14, v5

    move-object v15, v7

    goto :goto_3

    .line 667
    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "connect: Handover failed. dcTracker="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    return v5

    :cond_8
    move-object v15, v3

    move v14, v5

    .line 688
    :goto_3
    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 689
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToAccessNetworkType(I)I

    move-result v10

    move-object v11, v4

    move-object/from16 v16, v2

    .line 688
    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 696
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v16

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v17

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 697
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v19

    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v4}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v21

    move/from16 v18, v1

    .line 696
    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetupDataCall(IIILjava/lang/String;I)V

    return v6
.end method

.method private dumpToLog()V
    .locals 3

    .line 3087
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$2;

    new-instance v1, Ljava/io/StringWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$2;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/io/Writer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private getHandoverSourceTransport()I
    .locals 2

    .line 597
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method private getSuggestedRetryDelay(Landroid/telephony/data/DataCallResponse;)J
    .locals 2

    .line 2904
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v0

    if-gez v0, :cond_0

    const-string p1, "No suggested retry delay."

    .line 2905
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x2

    return-wide v0

    .line 2909
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    const-string p1, "Modem suggested not retrying."

    .line 2910
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2916
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSuggestedRetryTime()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 4

    .line 1410
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1411
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v1, :cond_0

    .line 1414
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 1416
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1423
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 1424
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1425
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v3, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 1429
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initConnection:  RefCount="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    .line 1433
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mApnList="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mConnectionParams="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1432
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v2

    .line 1418
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initConnection: incompatible apnSetting in ConnectionParams cp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " dc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private isApnTypeDefault()Z
    .locals 6

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 527
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    .line 526
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 528
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, "default"

    .line 529
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isDnsOk([Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 921
    aget-object v1, p1, v0

    const-string v2, "0.0.0.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 922
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 928
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 929
    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 931
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, "mms"

    aput-object v1, p1, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 932
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 933
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "isDnsOk: return false apn.types=%d APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    .line 929
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return v0

    :cond_0
    return v3
.end method

.method public static isIpAddress(Ljava/lang/String;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1300
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isNRConnected()Z
    .locals 2

    .line 3082
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUnmeteredUseOnly()Z
    .locals 4

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1129
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;

    invoke-direct {v2}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;-><init>()V

    .line 1130
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->UNMETERED_APN:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onSetupConnectionCompleted$0(I)[Ljava/lang/String;
    .locals 0

    .line 912
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static makeDataConnection(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 10

    .line 343
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->getTransportType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "C"

    goto :goto_0

    :cond_0
    const-string v0, "I"

    .line 347
    :goto_0
    new-instance v9, Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v9

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DataServiceManager;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .line 350
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->start()V

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Made "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-object v9
.end method

.method private static msgToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    .line 2951
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{what="

    .line 2953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when="

    .line 2956
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2959
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const-string v1, " arg1="

    .line 2960
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2964
    :cond_1
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_2

    const-string v1, " arg2="

    .line 2965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2969
    :cond_2
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string v1, " obj="

    .line 2970
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2971
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, " target="

    .line 2974
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " replyTo="

    .line 2977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2978
    iget-object p0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 2980
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 5

    .line 735
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 736
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {v0, v1, p3, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 738
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eq v2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 740
    invoke-virtual {v2, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 741
    :cond_1
    new-instance v3, Landroid/util/Pair;

    iget v4, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 742
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    invoke-virtual {v2, p2, v4, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 743
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 744
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;IZ)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 759
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 761
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 762
    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 763
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 766
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 767
    iget p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRequestType:I

    iput p1, v1, Landroid/os/Message;->arg2:I

    if-nez p2, :cond_0

    .line 770
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 771
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 773
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    .line 774
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    if-nez p2, :cond_1

    const/high16 p2, 0x10000

    .line 778
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v4, Ljava/lang/Throwable;

    .line 779
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-static {v1, p1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 782
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "notifyConnectCompleted at "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " cause="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " connectionCompletedMsg="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    if-eqz p3, :cond_3

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Send to all. "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const p1, 0x42023

    .line 791
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 790
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 6

    const-string v0, "NotifyDisconnectCompleted"

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 806
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 808
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 809
    iput-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 810
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_0

    .line 811
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 813
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const/4 v3, 0x2

    .line 815
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 816
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v5, "<no-reason>"

    :goto_0
    aput-object v5, v3, v4

    const-string v4, "msg=%s msg.obj=%s"

    .line 815
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 818
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 819
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_4

    if-nez v0, :cond_3

    const/high16 p2, 0x10000

    .line 823
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const p2, 0x4200f

    .line 825
    invoke-direct {p0, v1, p2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 827
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onSetupConnectionCompleted(ILandroid/telephony/data/DataCallResponse;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 2

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetupConnectionCompleted: resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 891
    iget v0, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-eq v0, v1, :cond_0

    .line 893
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSetupConnectionCompleted stale cp.tag="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mtag="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 895
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_STALE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    const v0, 0x10001

    if-ne p1, p3, :cond_1

    .line 897
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 898
    iput v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    if-eqz p1, :cond_3

    .line 900
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 901
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 902
    iput v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto :goto_0

    .line 904
    :cond_2
    sget-object p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 905
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p2

    invoke-static {p2}, Landroid/telephony/DataFailCause;->getFailCause(I)I

    move-result p2

    iput p2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->mFailCause:I

    goto :goto_0

    :cond_3
    const-string p1, "onSetupConnectionCompleted received successful DataCallResponse"

    .line 908
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 911
    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p3, Lcom/android/internal/telephony/dataconnection/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$XZAGhHrbkIDyusER4MAM6luKcT0;

    .line 912
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p3, Lcom/android/internal/telephony/dataconnection/-$$Lambda$DataConnection$-tFSpFGzTv_UdpzJlTMOvg8VO98;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$DataConnection$-tFSpFGzTv_UdpzJlTMOvg8VO98;

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 914
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    :goto_0
    return-object p1
.end method

.method private setLinkProperties(Landroid/telephony/data/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;
    .locals 8

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1307
    new-array v2, v1, [Ljava/lang/String;

    .line 1308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dns1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dns2"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1310
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v0

    .line 1316
    invoke-virtual {p2}, Landroid/net/LinkProperties;->clear()V

    .line 1318
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v3

    if-nez v3, :cond_a

    .line 1321
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 1325
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 1326
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1328
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "addr/pl="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1328
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p2, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 1340
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1341
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1342
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1343
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_8

    :goto_2
    if-ge v4, v1, :cond_5

    .line 1347
    aget-object v0, v2, v4

    .line 1348
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1349
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_4

    .line 1352
    :try_start_1
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1356
    :try_start_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1357
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 1354
    :catch_0
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Non-numeric dns addr="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1365
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1366
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1367
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addPcscfServer(Ljava/net/InetAddress;)Z

    goto :goto_4

    .line 1371
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1374
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v1}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_5

    .line 1379
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1381
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    goto :goto_6

    .line 1361
    :cond_8
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Empty dns response and no system default dns"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1335
    :cond_9
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no address for ifname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 1383
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setLinkProperties: UnknownHostException "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1384
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_INVALID_ARG:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    goto :goto_6

    .line 1387
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->ERROR_DATA_SERVICE_SPECIFIC_ERROR:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 1391
    :goto_6
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq v0, v1, :cond_b

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setLinkProperties: error clearing LinkProperties status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p2}, Landroid/net/LinkProperties;->clear()V

    :cond_b
    return-object v0
.end method

.method private shouldRestrictNetwork()Z
    .locals 4

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1088
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->hasRestrictedRequests(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    return v3

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 1114
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    return v3
.end method

.method static slog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DC"

    .line 2988
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 716
    instance-of v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    if-eqz v2, :cond_2

    .line 717
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 718
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 719
    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v5, "radioTurnedOff"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v5, "pdpReset"

    .line 720
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReleaseType:I

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    move v0, v1

    .line 727
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tearDownData. mCid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 729
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 730
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataServiceManager:Lcom/android/internal/telephony/dataconnection/DataServiceManager;

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const v3, 0x40003

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const/4 v5, 0x0

    .line 731
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 730
    invoke-virtual {v1, v2, v0, p1}, Lcom/android/internal/telephony/dataconnection/DataServiceManager;->deactivateDataCall(IILandroid/os/Message;)V

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 4

    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1591
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 1592
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1593
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    return-void
.end method

.method private updateNetworkInfoSuspendState()V
    .locals 4

    .line 1598
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    if-nez v0, :cond_0

    .line 1599
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting suspend state without a NetworkAgent"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 1604
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1606
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 1605
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1609
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 1611
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1613
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 1612
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1617
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1618
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    .line 1617
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateScore()V
    .locals 3

    .line 3103
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    .line 3104
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->calculateScore()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    .line 3105
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    if-eq v0, v1, :cond_0

    .line 3106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating score from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 3107
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sendNetworkScore(ILcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_0
    return-void
.end method

.method private updateTcpBufferSizes(I)V
    .locals 9

    const/16 v0, 0xe

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    move p1, v0

    .line 967
    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_1

    const/16 v3, 0xc

    if-ne p1, v3, :cond_2

    :cond_1
    const-string v2, "evdo"

    :cond_2
    if-ne p1, v0, :cond_3

    .line 978
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isNRConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "nr"

    .line 983
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    .line 985
    :goto_0
    array-length v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_5

    .line 986
    aget-object v5, v0, v4

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 987
    aget-object v8, v5, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    array-length v8, v5

    if-ne v8, v6, :cond_4

    .line 988
    aget-object v0, v5, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_9

    const/4 v2, 0x3

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v0, "122334,734003,2202010,32040,192239,576717"

    goto :goto_2

    :pswitch_1
    const-string v0, "131072,262144,1048576,4096,16384,524288"

    goto :goto_2

    :pswitch_2
    const-string v0, "40778,244668,734003,16777,100663,301990"

    goto :goto_2

    :pswitch_3
    const-string v0, "61167,367002,1101005,8738,52429,262114"

    goto :goto_2

    :pswitch_4
    const-string v0, "4094,87380,262144,4096,16384,262144"

    goto :goto_2

    :pswitch_5
    const-string v0, "16384,32768,131072,4096,16384,102400"

    goto :goto_2

    .line 1028
    :cond_6
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isNRConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string v0, "2097152,6291456,16777216,512000,2097152,8388608"

    goto :goto_2

    :cond_7
    const-string v0, "524288,1048576,2097152,262144,524288,1048576"

    goto :goto_2

    :cond_8
    const-string v0, "58254,349525,1048576,58254,349525,1048576"

    goto :goto_2

    :cond_9
    const-string v0, "4093,26280,70800,4096,16384,70800"

    goto :goto_2

    :cond_a
    const-string v0, "4092,8760,48000,4096,8760,48000"

    .line 1042
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;II)V
    .locals 8

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bringUp: apnContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onCompletedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2801
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IILandroid/os/Message;II)V

    const/high16 p1, 0x40000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method dispose()V
    .locals 1

    const-string v0, "dispose: call quiteNow()"

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quitNow()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 3140
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "DataConnection "

    .line 3141
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3142
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 3144
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3145
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transport type="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTransportType:I

    .line 3146
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3145
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mApnContexts.size="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3148
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mApnContexts="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3149
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mApnSetting="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mTag="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCid="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3152
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mConnectionParams="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mDisconnectParams="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3154
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mDcFailCause="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mPhone="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mLinkProperties="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 3158
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mDataRegState="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mRilRat="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mNetworkCapabilities="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3161
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCreateTime="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mLastFailTime="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mLastFailCause="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mUserData="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mSubscriptionOverride="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubscriptionOverride:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3166
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mRestrictedNetworkOverride="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3167
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mUnmeteredUseOnly="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3168
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mInstanceNumber="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mAc="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3170
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mScore="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mScore:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    iget-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    if-eqz p2, :cond_0

    .line 3172
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3174
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3175
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3176
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public getApnContexts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation

    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method getCid()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    return v0
.end method

.method public getConnectionParams()Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1

    .line 2879
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method public getDataConnectionId()I
    .locals 1

    .line 846
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return v0
.end method

.method getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 363
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 15

    .line 1143
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    const/4 v1, 0x0

    .line 1144
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1146
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    .line 1148
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisabledApnTypeBitMask:I

    not-int v6, v6

    and-int/2addr v2, v6

    .line 1147
    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, ","

    .line 1148
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1149
    array-length v6, v2

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v2, v7

    .line 1150
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1151
    invoke-static {v8, v9}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMeteredApnType(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1152
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dropped the metered "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for the unmetered data call."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const/4 v9, -0x1

    .line 1155
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x7

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "emergency"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "default"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v5

    goto/16 :goto_2

    :sswitch_2
    const-string v10, "supl"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v14

    goto :goto_2

    :sswitch_3
    const-string v10, "fota"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v12

    goto :goto_2

    :sswitch_4
    const-string v10, "mms"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_2

    :sswitch_5
    const-string v10, "mcx"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0xa

    goto :goto_2

    :sswitch_6
    const-string v10, "ims"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_7
    const-string v10, "dun"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v13

    goto :goto_2

    :sswitch_8
    const-string v10, "cbs"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v11

    goto :goto_2

    :sswitch_9
    const-string v10, "ia"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x8

    goto :goto_2

    :sswitch_a
    const-string v10, "*"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v9

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/16 v8, 0x17

    .line 1204
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    :pswitch_1
    const/16 v8, 0xa

    .line 1200
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1196
    :pswitch_2
    invoke-virtual {v0, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1192
    :pswitch_3
    invoke-virtual {v0, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1188
    :pswitch_4
    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1184
    :pswitch_5
    invoke-virtual {v0, v14}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1180
    :pswitch_6
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1176
    :pswitch_7
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 1172
    :pswitch_8
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    :pswitch_9
    const/16 v8, 0xc

    .line 1168
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    :pswitch_a
    const/16 v8, 0xc

    .line 1157
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1158
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1159
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1160
    invoke-virtual {v0, v14}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1161
    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1162
    invoke-virtual {v0, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1163
    invoke-virtual {v0, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1164
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1214
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUnmeteredUseOnly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1215
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/ApnSettingUtils;->isMetered(Landroid/telephony/data/ApnSetting;Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1216
    :cond_4
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_4

    .line 1218
    :cond_5
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1221
    :goto_4
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 1224
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    if-eqz v1, :cond_7

    const/16 v1, 0xd

    .line 1225
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1227
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1232
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    const/16 v2, 0x13

    const/16 v6, 0x733

    const/16 v7, 0x99

    const/16 v8, 0x64

    const/16 v9, 0x180

    const/16 v10, 0x50

    const/16 v11, 0x3800

    const/16 v12, 0xe

    if-eq v1, v2, :cond_8

    packed-switch v1, :pswitch_data_1

    :pswitch_b
    move v6, v12

    :goto_5
    move v8, v6

    goto :goto_8

    :pswitch_c
    const/16 v6, 0x2c00

    const v8, 0xa800

    goto :goto_8

    :cond_8
    :pswitch_d
    const v6, 0xc800

    const v8, 0x19000

    goto :goto_8

    :pswitch_e
    const/16 v8, 0x9d4

    goto :goto_7

    :pswitch_f
    const/16 v8, 0x1399

    goto :goto_8

    :pswitch_10
    const/16 v6, 0x170a

    goto :goto_6

    :pswitch_11
    const/16 v6, 0x800

    :goto_6
    move v8, v11

    goto :goto_8

    :pswitch_12
    const/16 v8, 0xc66

    goto :goto_8

    :pswitch_13
    const/16 v8, 0x999

    :goto_7
    move v6, v7

    goto :goto_8

    :pswitch_14
    move v6, v8

    goto :goto_8

    :pswitch_15
    move v6, v9

    goto :goto_5

    :pswitch_16
    const/16 v6, 0x3b

    const/16 v8, 0xec

    goto :goto_8

    :pswitch_17
    move v6, v10

    goto :goto_5

    .line 1251
    :goto_8
    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 1252
    invoke-virtual {v0, v8}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 1254
    new-instance v1, Landroid/net/StringNetworkSpecifier;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x12

    .line 1256
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1257
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    xor-int/2addr v2, v5

    .line 1256
    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    const/16 v1, 0x14

    .line 1259
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1262
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubscriptionOverride:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_9

    .line 1263
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1265
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubscriptionOverride:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    const/16 v1, 0x14

    .line 1266
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    :cond_a
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_a
        0xd18 -> :sswitch_9
        0x17ff4 -> :sswitch_8
        0x185fd -> :sswitch_7
        0x197cf -> :sswitch_6
        0x1a5a2 -> :sswitch_5
        0x1a6d3 -> :sswitch_4
        0x300cf6 -> :sswitch_3
        0x360bde -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6118c591 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_b
        :pswitch_b
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public getPcscfAddresses()[Ljava/lang/String;
    .locals 1

    .line 2886
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 0

    .line 2943
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isActivating()Z
    .locals 2

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isActive()Z
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isDisconnecting()Z
    .locals 2

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isInactive()Z
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIpv4Connected()Z
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 431
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 432
    check-cast v1, Ljava/net/Inet4Address;

    .line 433
    invoke-virtual {v1}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    invoke-virtual {v1}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIpv6Connected()Z
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 447
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 448
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 449
    check-cast v1, Ljava/net/Inet6Address;

    .line 450
    invoke-virtual {v1}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    invoke-virtual {v1}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 2998
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 3008
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 3048
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3059
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1

    .line 3028
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    .line 3018
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1

    .line 3038
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSubscriptionOverride(II)V
    .locals 2

    .line 702
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubscriptionOverride:I

    not-int v1, p1

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mSubscriptionOverride:I

    const p1, 0x40011

    .line 704
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method reevaluateDataConnectionProperties()V
    .locals 1

    const v0, 0x4001a

    .line 2871
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(I)V

    const-string v0, "reevaluate data connection properties"

    .line 2872
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method reevaluateRestrictedState()V
    .locals 1

    const v0, 0x40019

    .line 2862
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(I)V

    const-string v0, "reevaluate restricted state"

    .line 2863
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const v0, 0x40018

    .line 2853
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(I)V

    const-string v0, "reset"

    .line 2854
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method public shouldSkip464Xlat()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1288
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v3, 0x4

    .line 1289
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    .line 1290
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tearDown: apnContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onCompletedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2819
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;ILandroid/os/Message;)V

    const p1, 0x40004

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public tearDownAll(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tearDownAll: reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;ILandroid/os/Message;)V

    const p1, 0x40006

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method tearDownNow()V
    .locals 1

    const-string/jumbo v0, "tearDownNow()"

    .line 2830
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    const v0, 0x40008

    .line 2831
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3077
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApnContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringSimple()Ljava/lang/String;
    .locals 3

    .line 3064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/Map;

    .line 3065
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRestrictedNetworkOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRestrictedNetworkOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferNetworkAgent(Lcom/android/internal/telephony/dataconnection/DataConnection;I)Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
    .locals 1

    .line 2934
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->acquireOwnership(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 2935
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    return-object p1
.end method

.method public updateLinkProperty(Landroid/telephony/data/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 462
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    if-nez p1, :cond_0

    return-object v0

    .line 466
    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 469
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkProperties(Landroid/telephony/data/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    .line 470
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    if-eq p1, v1, :cond_1

    .line 471
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLinkProperty failed : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataConnection$SetupResult;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    return-object v0

    .line 475
    :cond_1
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 477
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkSetMtu(Landroid/telephony/data/ApnSetting;Landroid/net/LinkProperties;)V

    .line 479
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 481
    iget p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    .line 483
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLinkProperty old LP="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateLinkProperty new LP="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 488
    :cond_2
    iget-object p1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;

    if-eqz p1, :cond_3

    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    :cond_3
    return-object v0
.end method
