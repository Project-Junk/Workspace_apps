.class public Lcom/android/internal/telephony/TelephonyComponentFactory;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;
    }
.end annotation


# static fields
.field protected static LOG_TAG:Ljava/lang/String; = "TelephonyComponentFactory"

.field private static final TAG:Ljava/lang/String; = "TelephonyComponentFactory"

.field static final USE_NEW_NITZ_STATE_MACHINE:Z = true

.field private static sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;


# instance fields
.field private mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 1

    .line 229
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 232
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 2

    .line 424
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCdmaSubscriptionSourceManagerInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object p1

    return-object p1
.end method

.method public getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .locals 2

    .line 429
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getIDeviceIdleController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "deviceidle"

    .line 431
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 430
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    return-object v0
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 2

    .line 452
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string v1, "initSubscriptionController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    return-object p1
.end method

.method public inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->access$600(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->access$700(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p1

    return-object p1

    .line 273
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object p1
.end method

.method public injectTheComponentFactory(Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    if-eqz v0, :cond_0

    .line 249
    sget-object p1, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string v0, "Already injected."

    invoke-static {p1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 254
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->access$200(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 256
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->access$300(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    .line 257
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->access$400(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 258
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total components injected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->access$500(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public makeAppSmsManager(Landroid/content/Context;)Lcom/android/internal/telephony/AppSmsManager;
    .locals 1

    .line 410
    new-instance v0, Lcom/android/internal/telephony/AppSmsManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/AppSmsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;
    .locals 1

    .line 331
    new-instance v0, Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeCarrierResolver(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierResolver;
    .locals 1

    .line 335
    new-instance v0, Lcom/android/internal/telephony/CarrierResolver;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CarrierResolver;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;
    .locals 1

    .line 327
    new-instance v0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeDataEnabledSettings(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    .locals 1

    .line 440
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1

    .line 323
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object v0
.end method

.method public makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/DeviceStateMonitor;
    .locals 1

    .line 414
    new-instance v0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .locals 1

    .line 300
    new-instance v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 2

    .line 357
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeEriManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object v0
.end method

.method public makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 479
    sget-object p1, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string p2, "makeExtTelephonyClasses"

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 2

    .line 277
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeGsmCdmaCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .line 339
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 2

    .line 344
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeIccSmsInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1

    .line 403
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 2

    .line 397
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeImsPhoneCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 2

    .line 392
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 15

    .line 383
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object v2, v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 12

    .line 372
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public makeLocaleTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;)Lcom/android/internal/telephony/LocaleTracker;
    .locals 1

    .line 436
    new-instance v0, Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/LocaleTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;)V

    return-object v0
.end method

.method public makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;
    .locals 1

    .line 313
    new-instance v0, Lcom/android/internal/telephony/NewNitzStateMachine;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/NewNitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .locals 9

    .line 446
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string v1, "makePhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v0
.end method

.method public makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;
    .locals 11

    .line 465
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string v1, "makePhoneSwitcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Lcom/android/internal/telephony/PhoneSwitcher;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/PhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .locals 2

    .line 473
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Lcom/android/internal/telephony/RIL;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-object v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 2

    .line 292
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeServiceStateTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSimActivationTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SimActivationTracker;
    .locals 1

    .line 319
    new-instance v0, Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 2

    .line 282
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsStorageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 2

    .line 287
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSmsUsageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 2

    .line 458
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string v1, "makeSubscriptionInfoUpdater"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeTransportManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/TransportManager;
    .locals 1

    .line 418
    new-instance v0, Lcom/android/internal/telephony/dataconnection/TransportManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/dataconnection/TransportManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 8

    .line 353
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccProfile;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    return-object v7
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 2

    .line 362
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeWspTypeDecoder"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    return-object v0
.end method
