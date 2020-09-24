.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static sCellularNetworkValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

.field private static sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

.field private static sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

.field private static sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static sNotificationChannelController:Lcom/android/internal/telephony/util/NotificationChannelController;

.field private static sPhone:Lcom/android/internal/telephony/Phone;

.field private static sPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

.field private static sPhones:[Lcom/android/internal/telephony/Phone;

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

.field private static sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

.field private static sUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 70
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 72
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 81
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 3

    .line 485
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v0

    .line 486
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    monitor-exit v0

    return-void

    .line 487
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "calculatePreferredNetworkType: phoneSubId = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PhoneFactory"

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_0

    .line 418
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 420
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 422
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result p1

    .line 420
    invoke-static {p0, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    .line 424
    invoke-static {v4, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 512
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "PhoneFactory:"

    .line 513
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " sMadeDefaults="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 516
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/PhoneSwitcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 519
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v1, 0x0

    .line 520
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 522
    aget-object v2, p1, v1

    .line 525
    :try_start_0
    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    const-string v2, "++++++++++++++++++++++++++++++++"

    .line 532
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 534
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0, v0, p2}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 537
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "++++++++++++++++++++++++++++++++"

    .line 538
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Telephony DebugService: Could not get Phone["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "SubscriptionMonitor:"

    .line 541
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 544
    :try_start_1
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/SubscriptionMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 546
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 548
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 549
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "UiccController:"

    .line 551
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 554
    :try_start_2
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 558
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 559
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 560
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 562
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    if-eqz p1, :cond_1

    const-string p1, "EuiccController:"

    .line 563
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 566
    :try_start_3
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 567
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/euicc/EuiccCardController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 569
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 572
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 573
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p1, "SubscriptionController:"

    .line 576
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 579
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 581
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 584
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 585
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "SubInfoRecordUpdater:"

    .line 587
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 590
    :try_start_5
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 592
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 595
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 596
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "LocalLogs:"

    .line 598
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 600
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter p1

    .line 601
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 602
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 604
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LocalLog;

    invoke-virtual {v2, p0, v0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_7

    .line 607
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 608
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 609
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 610
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "SharedPreferences:"

    .line 612
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 615
    :try_start_7
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 616
    sget-object p1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 617
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 618
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 623
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "++++++++++++++++++++++++++++++++"

    .line 626
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "DebugEvents:"

    .line 627
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 630
    :try_start_8
    invoke-static {p0, v0, p2}, Landroid/telephony/AnomalyReporter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    .line 632
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    :goto_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    .line 608
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 307
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_0

    .line 311
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    monitor-exit v0

    return-object v1

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefaultSubscription()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 435
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getImsResolver()Lcom/android/internal/telephony/ims/ImsResolver;
    .locals 1

    .line 360
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    return-object v0
.end method

.method public static getNetworkFactory(I)Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .locals 2

    .line 369
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 376
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 382
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    if-eqz v1, :cond_1

    if-ltz p0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 384
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    aget-object p0, v1, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 389
    :goto_0
    monitor-exit v0

    return-object p0

    .line 371
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 390
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 320
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 326
    sget-object p0, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_0
    if-ltz p0, :cond_1

    .line 330
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 331
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object p0, v1, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 337
    :goto_0
    monitor-exit v0

    return-object p0

    .line 322
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 343
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-eqz v1, :cond_0

    .line 347
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    monitor-exit v0

    return-object v1

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 1

    .line 352
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    return-object v0
.end method

.method public static isSMSPromptEnabled()Z
    .locals 4

    const-string v0, "PhoneFactory"

    const/4 v1, 0x0

    .line 443
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms_prompt"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Settings Exception Reading Dual Sim SMS Prompt Values"

    .line 446
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 449
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMS Prompt option:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 503
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v0

    .line 504
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 508
    monitor-exit v0

    return-void

    .line 505
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 508
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 15
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 112
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v1, :cond_c

    .line 114
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 116
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :catch_0
    :goto_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 126
    :try_start_1
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "com.android.internal.telephony"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    goto :goto_1

    :catch_1
    move v4, v3

    :goto_1
    if-eqz v4, :cond_1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    const-wide/16 v3, 0x7d0

    .line 137
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 134
    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory probably already running"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 145
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v2

    .line 147
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v4

    const-string v5, "PhoneFactory"

    const-string v6, "Cdma Subscription set to "

    .line 148
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "phone"

    .line 153
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 155
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 157
    new-array v6, v5, [I

    .line 158
    new-array v7, v5, [Lcom/android/internal/telephony/Phone;

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    .line 159
    new-array v7, v5, [Lcom/android/internal/telephony/RIL;

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 160
    new-array v7, v5, [Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_2

    .line 165
    sget v8, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v8, v6, v7

    const-string v8, "PhoneFactory"

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Network Mode set to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v10, v6, v7

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const-class v9, Lcom/android/internal/telephony/RIL;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v9

    aget v10, v6, v7

    .line 169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, p0, v10, v4, v11}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 174
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v4, "PhoneFactory"

    const-string v7, "Creating SubscriptionController"

    .line 176
    invoke-static {v4, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-class v4, Lcom/android/internal/telephony/SubscriptionController;

    .line 178
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 178
    invoke-virtual {v4, p0, v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v7, "android.hardware.telephony.euicc"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sEuiccController:Lcom/android/internal/telephony/euicc/EuiccController;

    .line 183
    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccCardController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/euicc/EuiccCardController;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sEuiccCardController:Lcom/android/internal/telephony/euicc/EuiccCardController;

    :cond_3
    move v4, v1

    :goto_3
    if-ge v4, v5, :cond_6

    const/4 v7, 0x0

    .line 188
    aget v8, v6, v4

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v14

    .line 189
    const-class v8, Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 190
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v8

    if-ne v14, v3, :cond_4

    .line 192
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v9, v7, v4

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v12, 0x1

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v13

    move-object v7, v8

    move-object v8, p0

    move v11, v4

    .line 192
    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    goto :goto_4

    :cond_4
    const/4 v9, 0x2

    if-ne v14, v9, :cond_5

    .line 197
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v9, v7, v4

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v12, 0x6

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v13

    move-object v7, v8

    move-object v8, p0

    move v11, v4

    .line 197
    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    :cond_5
    :goto_4
    const-string v8, "PhoneFactory"

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Creating Phone with type = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sub = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aput-object v7, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-lez v5, :cond_7

    .line 211
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhone:Lcom/android/internal/telephony/Phone;

    .line 212
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    sput-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 218
    :cond_7
    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v4

    const-string v6, "NONE"

    if-eqz v4, :cond_8

    .line 221
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_8
    const-string v4, "PhoneFactory"

    const-string v7, "defaultSmsApplication: "

    .line 223
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 228
    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    const-string v3, "PhoneFactory"

    const-string v4, "Creating SubInfoRecordUpdater "

    .line 230
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-class v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 232
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v3

    .line 233
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v4

    .line 234
    invoke-virtual {v4}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 233
    invoke-virtual {v3, v4, p0, v6, v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSubscriptionInfoUpdater(Landroid/os/Looper;Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 235
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/Phone;)V

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony.ims"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 243
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 246
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x104017a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "PhoneFactory"

    const-string v7, "ImsResolver: defaultImsPackage: "

    .line 249
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v6, Lcom/android/internal/telephony/ims/ImsResolver;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-direct {v6, v7, v4, v5, v3}, Lcom/android/internal/telephony/ims/ImsResolver;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 252
    sput-object v6, Lcom/android/internal/telephony/PhoneFactory;->sImsResolver:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/ImsResolver;->initPopulateCacheAndStartBind()V

    move v3, v1

    :goto_5
    if-ge v3, v5, :cond_a

    .line 258
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->startMonitoringImsService()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    const-string v3, "PhoneFactory"

    const-string v4, "IMS is not supported on this device, skipping ImsResolver."

    .line 261
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v3, "telephony.registry"

    .line 265
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 264
    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v12

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v10

    .line 268
    new-instance v3, Lcom/android/internal/telephony/SubscriptionMonitor;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-direct {v3, v12, v4, v10, v5}, Lcom/android/internal/telephony/SubscriptionMonitor;-><init>(Lcom/android/internal/telephony/ITelephonyRegistry;Landroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;I)V

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 270
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->init(Landroid/content/Context;)Lcom/android/internal/telephony/PhoneConfigurationManager;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    .line 272
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/CellularNetworkValidator;->make(Landroid/content/Context;)Lcom/android/internal/telephony/CellularNetworkValidator;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCellularNetworkValidator:Lcom/android/internal/telephony/CellularNetworkValidator;

    .line 274
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneConfigurationManager:Lcom/android/internal/telephony/PhoneConfigurationManager;

    .line 275
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getNumberOfModemsWithSimultaneousDataConnections()I

    move-result v7

    .line 277
    const-class v3, Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v6

    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 279
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    move v8, v5

    .line 278
    invoke-virtual/range {v6 .. v14}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    .line 282
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {p0, v3, v4, v6, v7}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneSwitcher;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 285
    invoke-static {p0}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sIntentBroadcaster:Lcom/android/internal/telephony/IntentBroadcaster;

    .line 287
    new-instance v3, Lcom/android/internal/telephony/util/NotificationChannelController;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/util/NotificationChannelController;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sNotificationChannelController:Lcom/android/internal/telephony/util/NotificationChannelController;

    :goto_6
    if-ge v1, v5, :cond_b

    .line 290
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sTelephonyNetworkFactories:[Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    new-instance v4, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sSubscriptionMonitor:Lcom/android/internal/telephony/SubscriptionMonitor;

    .line 291
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v8, v1

    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneSwitcher:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/SubscriptionMonitor;Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/PhoneSwitcher;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 293
    :cond_b
    const-class v1, Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 294
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 299
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getOppoPhoneManager()Lcom/android/internal/telephony/OppoPhoneManager;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sPhones:[Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p0, v2}, Lcom/android/internal/telephony/OppoPhoneManager;->createOppoTelephonyController(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;)V

    .line 302
    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1

    .line 459
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    return-object p0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2

    .line 399
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object p0

    return-object p0
.end method

.method public static requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V
    .locals 1

    .line 471
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->requestEmbeddedSubscriptionInfoListRefresh(ILjava/lang/Runnable;)V

    return-void
.end method
