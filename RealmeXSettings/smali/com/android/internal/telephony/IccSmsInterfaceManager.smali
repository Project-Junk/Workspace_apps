.class public Lcom/android/internal/telephony/IccSmsInterfaceManager;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_LOAD_DONE:I = 0x1

.field protected static final EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field protected static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "IccSmsInterfaceManager"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I = 0x0

.field public static final SMS_MESSAGE_PERIOD_NOT_SPECIFIED:I = -0x1

.field public static final SMS_MESSAGE_PRIORITY_NOT_SPECIFIED:I = -0x1


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

.field private final mCellBroadcastLocalLog:Landroid/util/LocalLog;

.field private mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mSms:Ljava/util/List;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

.field protected mSuccess:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/AppOpsManager;

    .line 148
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/UserManager;

    new-instance v5, Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object v0, p1, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v5, p1, v0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    move-object v0, p0

    move-object v1, p1

    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/internal/telephony/SmsDispatchersController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/os/UserManager;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 76
    new-instance p4, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    .line 79
    new-instance p4, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    .line 101
    new-instance p4, Landroid/util/LocalLog;

    const/16 v0, 0x64

    invoke-direct {p4, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    .line 103
    new-instance p4, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;

    invoke-direct {p4, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    .line 159
    iput-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 160
    iput-object p5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 161
    new-instance p4, Lcom/android/internal/telephony/SmsPermissions;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/internal/telephony/SmsPermissions;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Landroid/app/AppOpsManager;)V

    iput-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    move-result p0

    return p0
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 11

    .line 1244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "type"

    .line 1247
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1253
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1254
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 1262
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]isFailedOrDraft: query message type failed"

    .line 1259
    invoke-static {p2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    .line 1262
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    if-eqz v3, :cond_5

    .line 1262
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1264
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method static synthetic lambda$injectSmsPdu$0(Landroid/app/PendingIntent;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 587
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "IccSmsInterfaceManager"

    const-string p1, "receivedIntent cancelled."

    .line 589
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11

    .line 1274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "body"

    const-string v4, "address"

    .line 1277
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1286
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 1287
    new-array p2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 1293
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, v2

    :goto_0
    :try_start_2
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]loadText: query message text failed"

    .line 1290
    invoke-static {v3, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 1293
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1
    move-exception p2

    :goto_2
    if-eqz p1, :cond_3

    .line 1293
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2
.end method

.method private returnUnspecifiedFailure(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1303
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private returnUnspecifiedFailure(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1314
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

    .line 1315
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    const-string v2, "SMS"

    const/4 v3, 0x2

    .line 401
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendData: destAddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " scAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destPort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " data=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' sentIntent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " deliveryIntent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p7

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, p3

    move/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 406
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    iget-object v4, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v5, p1

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/SmsDispatchersController;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "SMS"

    const/4 v3, 0x2

    .line 490
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendText: destAddr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " scAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " text=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' sentIntent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " deliveryIntent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " priority="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p8

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " expectMore="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " validityPeriod="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p10

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    .line 497
    :goto_0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 498
    iget-object v4, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v10, 0x0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p1

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v4 .. v15}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void
.end method

.method private setCdmaBroadcastActivation(Z)Z
    .locals 3

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling setCdmaBroadcastActivation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 1104
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1105
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "interrupted while trying to set cdma broadcast activation"

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1112
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1114
    iget-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return p1

    :catchall_0
    move-exception p1

    .line 1112
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling setCdmaBroadcastConfig with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configurations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 1084
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1085
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "interrupted while trying to set cdma broadcast config"

    .line 1090
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1092
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1094
    iget-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return p1

    :catchall_0
    move-exception p1

    .line 1092
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private setCellBroadcastActivation(Z)Z
    .locals 3

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling setCellBroadcastActivation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 1063
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1064
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "interrupted while trying to set cell broadcast activation"

    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1071
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1073
    iget-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return p1

    :catchall_0
    move-exception p1

    .line 1071
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling setGsmBroadcastConfig with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " configurations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 1043
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1044
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, v2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    :try_start_1
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "interrupted while trying to set cell broadcast config"

    .line 1049
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1051
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1053
    iget-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return p1

    :catchall_0
    move-exception p1

    .line 1051
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method protected buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .line 760
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 766
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 767
    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 768
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 770
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "copyMessageToIccEf: status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> pdu=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), smsc=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v0, "Copying message to Icc"

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 284
    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p4

    .line 290
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    .line 289
    invoke-interface {v1, p2, p4, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object p4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p4, p4, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p2, "interrupted while trying to update by index"

    .line 299
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 301
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    iget-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return p1

    :catchall_0
    move-exception p2

    .line 301
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public declared-synchronized disableCdmaBroadcastRange(II)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Disabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 933
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 932
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to remove cdma broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 940
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    monitor-exit p0

    return v1

    .line 945
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removed cdma broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 946
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 947
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 950
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    move v1, p2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disableCellBroadcast(II)Z
    .locals 0

    .line 810
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    move-result p1

    return p1
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 1

    if-nez p3, :cond_0

    .line 825
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRange(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 827
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRange(II)Z

    move-result p1

    return p1

    .line 829
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a supported RAN Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized disableGsmBroadcastRange(II)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Disabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 871
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to remove GSM cell broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 878
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 879
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    monitor-exit p0

    return v1

    .line 884
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removed GSM cell broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 887
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    move v1, p2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellBroadcast log:"

    .line 1327
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v0, "SMS dispatcher controller log:"

    .line 1329
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public declared-synchronized enableCdmaBroadcastRange(II)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Enabling cdma broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 903
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 902
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to add cdma broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 910
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    monitor-exit p0

    return v1

    .line 915
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added cdma broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 916
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 917
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 920
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    move v1, p2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableCellBroadcast(II)Z
    .locals 0

    .line 806
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    move-result p1

    return p1
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 1

    if-nez p3, :cond_0

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRange(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 817
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRange(II)Z

    move-result p1

    return p1

    .line 819
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a supported RAN Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized enableGsmBroadcastRange(II)Z
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Enabling cell broadcast SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 840
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to add GSM cell broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 848
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    monitor-exit p0

    return v1

    .line 853
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added GSM cell broadcast channels range "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 856
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 859
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    move v1, p2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected enforceReceiveAndSend(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllMessagesFromEF"

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    const-string v2, "Reading messages from Icc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "Cannot load Sms records. No icc card?"

    .line 326
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit p1

    return-object v0

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f3c

    .line 332
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "interrupted while trying to load from the Icc"

    .line 337
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 339
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1

    :catchall_0
    move-exception v0

    .line 339
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSmsCapacityOnIcc()I
    .locals 3

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1339
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSmsCapacityOnIcc()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "getSmsCapacityOnIcc - aborting, no icc card present."

    .line 1341
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1344
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSmsCapacityOnIcc().numberOnIcc = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "injectSmsPdu"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsPermissions;->enforceCallerIsImsAppOrCarrierApp(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    const-string v1, "SMS"

    .line 578
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pdu: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n receivedIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    new-instance v1, Lcom/android/internal/telephony/-$$Lambda$IccSmsInterfaceManager$rB1zRNxMbL7VadRMSxZ5tebvHwM;

    invoke-direct {v1, p3}, Lcom/android/internal/telephony/-$$Lambda$IccSmsInterfaceManager$rB1zRNxMbL7VadRMSxZ5tebvHwM;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->injectSmsPdu([BLjava/lang/String;Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;)V

    return-void
.end method

.method public isImsSmsSupported()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IccSmsInterfaceManager] "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "IccSmsInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected makeSmsRecordData(I[B)[B
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/16 v0, 0xb0

    .line 787
    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    .line 789
    new-array v0, v0, [B

    :goto_0
    and-int/lit8 p1, p1, 0x7

    int-to-byte p1, p1

    const/4 v2, 0x0

    .line 793
    aput-byte p1, v0, v2

    .line 795
    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    array-length p1, p2

    add-int/2addr p1, v1

    :goto_1
    array-length p2, v0

    if-ge p1, p2, :cond_1

    const/4 p2, -0x1

    .line 799
    aput-byte p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected markMessagesAsRead(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const-string v7, "SMS"

    const/4 v8, 0x3

    if-nez v0, :cond_2

    .line 174
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "markMessagesAsRead - aborting, no icc card present."

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_4

    .line 183
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 184
    aget-byte v2, v1, v10

    if-ne v2, v8, :cond_3

    .line 185
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 186
    new-array v4, v2, [B

    .line 187
    invoke-static {v1, v3, v4, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v4

    const/16 v2, 0x6f3c

    add-int/lit8 v12, v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, v12

    .line 189
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 190
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " marked as read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "Sending SMS message"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    .line 368
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendDataWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "Sending SMS message"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    .line 353
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 625
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    return-void
.end method

.method public sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 682
    iget-object v5, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v6, "Sending SMS message"

    move-object/from16 v15, p1

    move/from16 v14, p7

    invoke-virtual {v5, v14, v15, v6}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendText(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 684
    invoke-direct {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    :cond_0
    const/4 v5, 0x2

    const-string v6, "SMS"

    .line 687
    invoke-static {v6, v5}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 689
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 690
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendMultipartTextWithOptions: destAddr="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", srAddr="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p3

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", part["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    move v7, v10

    goto :goto_0

    :cond_1
    move-object/from16 v13, p3

    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 697
    :try_start_0
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0xa

    if-ge v5, v7, :cond_6

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_6

    .line 700
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_5

    .line 703
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 704
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v7

    const/16 v8, 0x2f

    if-eqz v7, :cond_2

    .line 705
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v6, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 707
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v6, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v10, v5

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 711
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_3

    .line 712
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    move-object v11, v7

    goto :goto_3

    :cond_3
    move-object v11, v5

    :goto_3
    if-eqz v4, :cond_4

    .line 716
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 717
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    :cond_4
    move-object v12, v5

    .line 720
    iget-object v7, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    const/4 v5, 0x0

    move-object v8, v0

    move-object/from16 v9, p3

    move-object v13, v5

    move-object/from16 v14, p1

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    invoke-virtual/range {v7 .. v18}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v15, p1

    move-object/from16 v13, p3

    move/from16 v14, p7

    goto/16 :goto_1

    .line 737
    :cond_5
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 729
    :cond_6
    :try_start_1
    iget-object v7, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    move-object v10, v2

    check-cast v10, Ljava/util/ArrayList;

    move-object v11, v3

    check-cast v11, Ljava/util/ArrayList;

    move-object v12, v4

    check-cast v12, Ljava/util/ArrayList;

    const/4 v13, 0x0

    move-object v8, v0

    move-object/from16 v9, p3

    move-object/from16 v14, p1

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    invoke-virtual/range {v7 .. v18}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 24
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1165
    iget-object v2, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v3, "Sending SMS message"

    move-object/from16 v13, p1

    invoke-virtual {v2, v13, v3}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1166
    invoke-direct {v1, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 1169
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1170
    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    const-string v4, "IccSmsInterfaceManager"

    if-nez v3, :cond_1

    const-string v0, "[IccSmsInterfaceManager]sendStoredMultipartText: not FAILED or DRAFT message"

    .line 1171
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {v1, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 1176
    :cond_1
    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_2

    const-string v0, "[IccSmsInterfaceManager]sendStoredMultipartText: can not load text"

    .line 1178
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-direct {v1, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void

    .line 1182
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-virtual {v2, v5}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 1183
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    goto/16 :goto_3

    .line 1189
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    const/4 v11, 0x1

    .line 1191
    :try_start_0
    aget-object v2, v16, v11

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v11

    .line 1193
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v11, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0xa

    if-ge v2, v4, :cond_8

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v2

    if-nez v2, :cond_8

    move v10, v3

    .line 1194
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    .line 1197
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1198
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_4

    .line 1199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v10, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1201
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v10, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v5, v2

    const/4 v2, 0x0

    if-eqz v14, :cond_5

    .line 1205
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v10, :cond_5

    .line 1206
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    move-object v6, v3

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_2
    if-eqz v15, :cond_6

    .line 1210
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v10, :cond_6

    .line 1211
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :cond_6
    move-object v7, v2

    .line 1214
    iget-object v2, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    aget-object v3, v16, v11

    const/16 v19, 0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v4, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v23, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    move/from16 v12, v21

    move/from16 v13, v22

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v23, 0x1

    move-object/from16 v13, p1

    move/from16 v11, v19

    move-object/from16 v12, v20

    goto/16 :goto_0

    .line 1236
    :cond_7
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_8
    move/from16 v19, v11

    move-object/from16 v20, v12

    .line 1223
    :try_start_1
    iget-object v2, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    aget-object v3, v16, v19

    move-object v6, v14

    check-cast v6, Ljava/util/ArrayList;

    move-object v7, v15

    check-cast v7, Ljava/util/ArrayList;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object/from16 v4, p3

    move-object/from16 v5, v20

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1236
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    :goto_3
    const-string v0, "[IccSmsInterfaceManager]sendStoredMultipartText: can not divide text"

    .line 1184
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-direct {v1, v14}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    return-void
.end method

.method public sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v5, p4

    .line 1135
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v2, "Sending SMS message"

    move-object v8, p1

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1136
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    const-string v2, "SMS"

    .line 1139
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendStoredText: scAddr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " messageUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " deliveryIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p3

    move-object/from16 v6, p5

    .line 1143
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1144
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v2

    const-string v4, "IccSmsInterfaceManager"

    if-nez v2, :cond_2

    const-string v1, "[IccSmsInterfaceManager]sendStoredText: not FAILED or DRAFT message"

    .line 1145
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    .line 1149
    :cond_2
    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "[IccSmsInterfaceManager]sendStoredText: can not load text"

    .line 1151
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    .line 1155
    aget-object v4, v1, v2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1156
    iget-object v4, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    aget-object v2, v1, v2

    const/4 v9, 0x0

    aget-object v9, v1, v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object v1, v4

    move-object/from16 v3, p3

    move-object v4, v9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object v8, p1

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 11

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 419
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    return-void
.end method

.method public sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "Sending SMS message"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    .line 557
    :cond_0
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    return-void
.end method

.method public sendTextWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 12

    move-object v11, p0

    .line 431
    iget-object v0, v11, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsPermissions:Lcom/android/internal/telephony/SmsPermissions;

    const-string v1, "Sending SMS message"

    move-object v2, p1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SmsPermissions;->checkCallingOrSelfCanSendSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v5, p5

    .line 432
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    return-void

    :cond_0
    move-object/from16 v5, p5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 435
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ==> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v0, "Updating message on Icc"

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 229
    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_2

    .line 237
    iget-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p3

    const/4 p4, 0x1

    if-ne p4, p3, :cond_1

    .line 238
    iget-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, p2, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p3, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p3, p2, v7}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    if-nez v2, :cond_3

    .line 246
    invoke-virtual {v7}, Landroid/os/Message;->recycle()V

    .line 247
    iget-boolean p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    monitor-exit p1

    return p2

    .line 249
    :cond_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v5

    const/16 v3, 0x6f3c

    const/4 v6, 0x0

    move v4, p2

    .line 250
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p2, "interrupted while trying to update by index"

    .line 257
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 259
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    iget-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return p1

    :catchall_0
    move-exception p2

    .line 259
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method
