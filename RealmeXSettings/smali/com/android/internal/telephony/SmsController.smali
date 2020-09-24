.class public Lcom/android/internal/telephony/SmsController;
.super Lcom/android/internal/telephony/ISmsImplBase;
.source "SmsController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmsController"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/ISmsImplBase;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string p1, "isms"

    .line 57
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method private getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 542
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    return-object p1
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 63
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getSmsPermissions(I)Lcom/android/internal/telephony/SmsPermissions;
    .locals 3

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 73
    new-instance v0, Lcom/android/internal/telephony/SmsPermissions;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/SmsPermissions;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V

    return-object v0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    .line 547
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 548
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method private isBluetoothSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendBluetoothText(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6

    .line 183
    new-instance v0, Lcom/android/internal/telephony/BtSmsInterfaceManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/BtSmsInterfaceManager;-><init>()V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/BtSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method private sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    if-eqz p1, :cond_0

    .line 518
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private sendErrorInPendingIntents(Ljava/util/List;I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 531
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendIccText(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 8

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 192
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void

    .line 195
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendTextForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p6

    .line 197
    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method


# virtual methods
.method public checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkSmsShortCodeDestination"

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 486
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 488
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {p1, p3, p4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result p1

    return p1

    .line 99
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "copyMessageToIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/AppSmsManager;->createAppSpecificSmsToken(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1

    .line 463
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AppSmsManager;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public disableCellBroadcastForSubscriber(III)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 289
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/SmsController;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result p1

    return p1
.end method

.method public disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    move-result p1

    return p1

    .line 301
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "disableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/SmsController;->mContext:Landroid/content/Context;

    const-string v1, "SmsController"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 503
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    const/4 v5, 0x1

    .line 504
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "SmsManager for subId = %d:"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 506
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 507
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 509
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    return-void
.end method

.method public enableCellBroadcastForSubscriber(III)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/android/internal/telephony/SmsController;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result p1

    return p1
.end method

.method public enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    move-result p1

    return p1

    .line 279
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "enableCellBroadcastRangeForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getAllMessagesFromIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "SmsController"

    const-string v0, "getImsSmsFormatForSubscriber iccSmsIntMgr is null"

    .line 393
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreferredSmsSubscription()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v0

    return v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SmsController;->getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "SmsController"

    const-string p2, "getPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    .line 318
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getSmsCapacityOnIccForSubscriber(I)I
    .locals 1

    .line 556
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsCapacityOnIcc()I

    move-result p1

    return p1

    .line 561
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "iccSmsIntMgr is null for  subId: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getSmsMessagesForFinancialApp(ILjava/lang/String;Landroid/os/Bundle;Landroid/telephony/IFinancialSmsCallback;)V
    .locals 0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/AppSmsManager;->getSmsMessagesForFinancialApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/telephony/IFinancialSmsCallback;)V

    return-void
.end method

.method public injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    const-string p1, "SmsController"

    const-string p2, "injectSmsPduForSubscriber iccSmsIntMgr is null"

    .line 405
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 407
    invoke-direct {p0, p4, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public isImsSmsSupportedForSubscriber(I)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "SmsController"

    const-string v0, "isImsSmsSupportedForSubscriber iccSmsIntMgr is null"

    .line 348
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isSMSPromptEnabled()Z
    .locals 1

    .line 429
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmsSimPickActivityNeeded(I)Z
    .locals 6

    .line 355
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 361
    :try_start_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 370
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_0

    .line 371
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    .line 378
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    return v0

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 363
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 125
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 128
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendDataForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p7

    .line 131
    invoke-direct {p0, p7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8

    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 141
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p7

    .line 147
    invoke-direct {p0, p7, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 238
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void

    .line 241
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendMultipartTextForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p6

    .line 243
    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 254
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    return-void

    .line 258
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendMultipartTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object/from16 v2, p6

    .line 260
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 451
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 454
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 456
    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntents(Ljava/util/List;I)V

    return-void
.end method

.method public sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6

    .line 435
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 437
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 440
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sendStoredText iccSmsIntMgr is null for subscription: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 441
    invoke-direct {p0, p5, p1}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 10

    move-object v7, p0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getSmsPermissions(I)Lcom/android/internal/telephony/SmsPermissions;

    move-result-object v0

    const-string v1, "Sending SMS message"

    move-object v2, p2

    move/from16 v3, p8

    invoke-virtual {v0, v3, p2, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move-object/from16 v5, p6

    .line 157
    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void

    :cond_0
    move-object/from16 v5, p6

    .line 161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 164
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsController;->isBluetoothSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 169
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SmsController;->sendBluetoothText(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .line 171
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/SmsController;->sendIccText(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 166
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 11

    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    .line 223
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    return-void

    .line 226
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendTextWithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object/from16 v2, p6

    .line 228
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 8

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 207
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    return-void

    .line 210
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p6

    .line 212
    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/SmsController;->sendErrorInPendingIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsController;->getPreferredSmsSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SmsController;->setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V

    return-void
.end method

.method public setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p1, "SmsController"

    const-string p2, "setPremiumSmsPermissionForSubscriber iccSmsIntMgr is null"

    .line 337
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsController;->getIccSmsInterfaceManager(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "updateMessageOnIccEfForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SmsController"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
