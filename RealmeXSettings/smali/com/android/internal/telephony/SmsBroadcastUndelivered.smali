.class public Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;,
        Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final DEFAULT_PARTIAL_SEGMENT_EXPIRE_AGE:J = 0x240c8400L

.field private static final PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SmsBroadcastUndelivered"

.field private static instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private final mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "pdu"

    const-string v1, "sequence"

    const-string v2, "destination_port"

    const-string v3, "date"

    const-string v4, "reference_number"

    const-string v5, "count"

    const-string v6, "address"

    const-string v7, "_id"

    const-string v8, "message_body"

    const-string v9, "display_originating_addr"

    .line 58
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mResolver:Landroid/content/ContentResolver;

    .line 132
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 133
    iput-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    const-string/jumbo p2, "user"

    .line 135
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 137
    invoke-virtual {p2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 138
    new-instance p2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->start()V

    return-void

    .line 140
    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.USER_UNLOCKED"

    .line 141
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object p3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)J
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getUndeliveredSmsExpirationTime(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x2

    .line 266
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "null handler for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " format, can\'t deliver."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsBroadcastUndelivered"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getPhoneId(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getUndeliveredSmsExpirationTime(Landroid/content/Context;)J
    .locals 3

    .line 273
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    const-string v1, "carrier_config"

    .line 275
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 276
    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    const-wide/32 v0, 0x240c8400

    if-eqz p1, :cond_0

    const-string/jumbo v2, "undelivered_sms_message_expiration_time"

    .line 279
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    sput-object v0, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->instance:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    :cond_0
    const/4 p0, 0x6

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->sendMessage(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 124
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(I)V

    :cond_2
    return-void
.end method

.method static scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, " ms"

    const-string v4, "finished scanning raw table in "

    const-string v5, "SmsBroadcastUndelivered"

    const-string v0, "scanning raw table for undelivered messages"

    .line 151
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 154
    new-instance v15, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 156
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    const-wide/32 v16, 0xf4240

    const/16 v18, 0x0

    .line 160
    :try_start_0
    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->PDU_PENDING_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v11, "deleted = 0"

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v8, v14

    move-object/from16 p0, v14

    move-object v14, v13

    move-object v13, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v8, :cond_1

    :try_start_1
    const-string v0, "error getting pending message cursor"

    .line 163
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v6

    div-long v1, v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->isCurrentFormat3gpp2()Z

    move-result v9

    .line 168
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 171
    :try_start_3
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v10, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 172
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :try_start_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 181
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    goto :goto_1

    .line 183
    :cond_3
    new-instance v10, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;-><init>(Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 184
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_4

    .line 186
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v11

    cmp-long v0, v11, p3

    if-gez v0, :cond_2

    .line 190
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_4
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v11

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v11

    if-ne v12, v11, :cond_5

    const-string v11, "found complete multi-part message"

    .line 197
    invoke-static {v5, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->broadcastSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    .line 200
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "error loading SmsTracker: "

    .line 175
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_6
    invoke-static {v2, v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->getPhoneId(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)I

    move-result v0

    .line 211
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 213
    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 214
    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhere()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p0

    .line 213
    invoke-virtual {v12, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_7

    const-string v10, "No rows were deleted from raw table!"

    .line 216
    invoke-static {v5, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 218
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Deleted "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rows from raw table for incomplete "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " part message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-lez v9, :cond_8

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v10

    .line 224
    iget-object v11, v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    iget v2, v2, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    invoke-virtual {v10, v0, v11, v9, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeDroppedIncomingMultipartSms(ILjava/lang/String;II)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move-object/from16 p0, v12

    goto :goto_2

    :cond_9
    if-eqz v8, :cond_a

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_4
    :try_start_5
    const-string v1, "error reading pending SMS messages"

    .line 229
    invoke-static {v5, v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v18, :cond_b

    .line 232
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_5
    if-eqz v8, :cond_c

    .line 232
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    div-long v8, v8, v16

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v5, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
