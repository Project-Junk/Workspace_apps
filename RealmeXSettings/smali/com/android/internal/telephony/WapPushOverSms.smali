.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;,
        Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCATION_SELECTION:Ljava/lang/String; = "m_type=? AND ct_l =?"

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final THREAD_ID_SELECTION:Ljava/lang/String; = "m_id=? AND m_type=?"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mWapPushManagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/WapPushOverSms$1;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    const-class v1, Landroid/os/IDeviceIdleController;

    .line 141
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 145
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    return-void

    .line 148
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->bindWapPushManagerService(Landroid/content/Context;)V

    return-void
.end method

.method private bindWapPushManagerService(Landroid/content/Context;)V
    .locals 3

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 116
    invoke-virtual {p1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const-string p1, "WAP PUSH"

    const-string v0, "bindService() for wappush manager failed"

    .line 117
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "WAP PUSH"

    .line 173
    new-instance v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 178
    :try_start_0
    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    .line 179
    aget-byte v9, v0, v8

    and-int/lit16 v9, v9, 0xff

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x6

    if-eq v9, v12, :cond_1

    const/4 v13, 0x7

    if-eq v9, v13, :cond_1

    .line 186
    iget-object v7, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x10e00b3

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eq v7, v11, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 189
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v14, v9, 0x1

    .line 190
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    if-eq v9, v12, :cond_2

    if-eq v9, v13, :cond_2

    .line 199
    iput v8, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    .line 204
    :cond_0
    iput v8, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    :cond_1
    move v14, v5

    .line 209
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v12

    const-class v13, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v12

    .line 210
    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v12

    .line 218
    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 220
    iput v5, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    :cond_3
    move/from16 p2, v9

    .line 223
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    long-to-int v8, v8

    .line 224
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v9

    add-int/2addr v14, v9

    .line 240
    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 242
    iput v5, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    .line 246
    :cond_4
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v15

    .line 248
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v17

    add-int v13, v14, v17

    .line 250
    new-array v5, v8, [B

    .line 251
    array-length v11, v5

    invoke-static {v0, v14, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v9, :cond_5

    const-string v11, "application/vnd.wap.coc"

    .line 255
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v0

    goto :goto_0

    :cond_5
    add-int/2addr v14, v8

    .line 259
    array-length v11, v0

    sub-int/2addr v11, v14

    new-array v11, v11, [B

    .line 260
    array-length v4, v11

    invoke-static {v0, v14, v11, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :goto_0
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_6

    .line 264
    array-length v4, v0

    if-lez v4, :cond_6

    aget v0, v0, v6

    goto :goto_1

    .line 265
    :cond_6
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v4, v0

    .line 271
    :try_start_1
    new-instance v0, Lcom/google/android/a/a/m;

    invoke-static {v4}, Lcom/android/internal/telephony/WapPushOverSms;->shouldParseContentDisposition(I)Z

    move-result v6

    invoke-direct {v0, v11, v6}, Lcom/google/android/a/a/m;-><init>([BZ)V

    invoke-virtual {v0}, Lcom/google/android/a/a/m;->a()Lcom/google/android/a/a/f;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 273
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "Unable to parse PDU: "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_7

    .line 276
    invoke-virtual {v0}, Lcom/google/android/a/a/f;->b()I

    move-result v6

    const/16 v14, 0x82

    if-ne v6, v14, :cond_7

    .line 277
    move-object v6, v0

    check-cast v6, Lcom/google/android/a/a/h;

    .line 278
    invoke-virtual {v6}, Lcom/google/android/a/a/h;->d()Lcom/google/android/a/a/e;

    move-result-object v14

    if-eqz v14, :cond_7

    iget-object v14, v1, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {v6}, Lcom/google/android/a/a/h;->d()Lcom/google/android/a/a/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/a/a/e;->b()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {v14, v6, v1}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 280
    iput v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return-object v3

    :cond_7
    add-int/2addr v8, v13

    const/4 v1, 0x1

    sub-int/2addr v8, v1

    .line 291
    invoke-virtual {v12, v13, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 292
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v13

    long-to-int v1, v13

    .line 293
    invoke-virtual {v12, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 294
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 296
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v13

    long-to-int v1, v13

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_8
    iput-object v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 300
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v9

    .line 301
    :goto_3
    iput-object v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    .line 305
    :cond_a
    iput v4, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    .line 306
    iput v10, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    .line 307
    iput-object v0, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/a/a/f;

    .line 308
    iput-object v9, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 309
    iput v7, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    move/from16 v9, p2

    .line 310
    iput v9, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    .line 311
    iput-object v5, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    .line 312
    iput-object v11, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    .line 313
    invoke-virtual {v12}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 314
    iput v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 318
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 319
    iput v1, v3, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    :goto_4
    return-object v3
.end method

.method public static getAppOpsPermissionForIntent(Ljava/lang/String;)I
    .locals 1

    const-string v0, "application/vnd.wap.mms-message"

    .line 642
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto :goto_0

    :cond_0
    const/16 p0, 0x13

    :goto_0
    return p0
.end method

.method private static getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/a/a/f;)J
    .locals 12
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 558
    instance-of v0, p1, Lcom/google/android/a/a/d;

    const-wide/16 v1, -0x1

    const-string v3, "WAP PUSH"

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/a/a/d;

    invoke-virtual {p1}, Lcom/google/android/a/a/d;->a()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 560
    :cond_0
    instance-of v0, p1, Lcom/google/android/a/a/q;

    if-eqz v0, :cond_5

    .line 561
    new-instance v0, Ljava/lang/String;

    check-cast p1, Lcom/google/android/a/a/q;

    invoke-virtual {p1}, Lcom/google/android/a/a/q;->a()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    const/4 p1, 0x0

    .line 571
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "thread_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "m_id=? AND m_type=?"

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    .line 576
    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v9, v11

    const/4 v0, 0x1

    const/16 v4, 0x80

    .line 577
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v0

    const/4 v10, 0x0

    move-object v4, p0

    .line 569
    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 580
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 581
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 587
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "Failed to query delivery or read report thread id"

    .line 584
    invoke-static {v3, v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 587
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v1

    :goto_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    .line 563
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "WAP Push data is neither delivery or read report type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 563
    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public static getPermissionForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "application/vnd.wap.mms-message"

    .line 632
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.permission.RECEIVE_MMS"

    goto :goto_0

    :cond_0
    const-string p0, "android.permission.RECEIVE_WAP_PUSH"

    :goto_0
    return-object p0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/a/a/h;)Z
    .locals 10
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 598
    invoke-virtual {p1}, Lcom/google/android/a/a/h;->a()[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 600
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x1

    .line 601
    new-array v3, v2, [Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v1, 0x0

    .line 606
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "m_type=? AND ct_l =?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/16 v3, 0x82

    .line 611
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v8, v2

    const/4 v9, 0x0

    move-object v3, p0

    .line 604
    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 615
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    if-eqz v1, :cond_0

    .line 623
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v2

    :cond_1
    if-eqz v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "WAP PUSH"

    const-string v2, "failed to query existing notification ind"

    .line 620
    invoke-static {p1, v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 623
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    :goto_2
    return v0
.end method

.method private static shouldParseContentDisposition(I)Z
    .locals 2

    .line 460
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object p0

    .line 461
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "supportMmsContentDisposition"

    const/4 v1, 0x1

    .line 462
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private writeInboxMessage(ILcom/google/android/a/a/f;)V
    .locals 13

    const-string v0, "WAP PUSH"

    if-nez p2, :cond_0

    const-string v1, "Invalid PUSH PDU"

    .line 467
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/a/a/o;->a(Landroid/content/Context;)Lcom/google/android/a/a/o;

    move-result-object v1

    .line 470
    invoke-virtual {p2}, Lcom/google/android/a/a/f;->b()I

    move-result v2

    const/16 v3, 0x82

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 p1, 0x86

    if-eq v2, p1, :cond_1

    const/16 p1, 0x88

    if-eq v2, p1, :cond_1

    :try_start_0
    const-string p1, "Received unrecognized WAP Push PDU."

    .line 542
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->getDeliveryOrReadReportThreadId(Landroid/content/Context;Lcom/google/android/a/a/f;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p1, v5, v7

    if-nez p1, :cond_2

    const-string p1, "Failed to find delivery or read report\'s thread id"

    .line 479
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 482
    :cond_2
    sget-object p1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/a/a/o;->a(Lcom/google/android/a/a/f;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_3

    const-string p1, "Failed to persist delivery or read report"

    .line 489
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo p1, "thread_id"

    .line 494
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v10, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    iget-object v7, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 495
    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eq p1, v4, :cond_4

    const-string p1, "Failed to update delivery or read report thread id"

    .line 502
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void

    .line 507
    :cond_5
    move-object v3, p2

    check-cast v3, Lcom/google/android/a/a/h;

    .line 509
    invoke-static {p1}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object p1

    .line 510
    invoke-virtual {p1}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v5, "enabledTransID"

    const/4 v6, 0x0

    .line 511
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 513
    invoke-virtual {v3}, Lcom/google/android/a/a/h;->a()[B

    move-result-object p1

    const/16 v5, 0x3d

    .line 514
    array-length v7, p1

    sub-int/2addr v7, v4

    aget-byte v4, p1, v7

    if-ne v5, v4, :cond_6

    .line 515
    invoke-virtual {v3}, Lcom/google/android/a/a/h;->e()[B

    move-result-object v4

    .line 516
    array-length v5, p1

    array-length v7, v4

    add-int/2addr v5, v7

    new-array v5, v5, [B

    .line 518
    array-length v7, p1

    invoke-static {p1, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    array-length p1, p1

    array-length v7, v4

    invoke-static {v4, v6, v5, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    invoke-virtual {v3, v5}, Lcom/google/android/a/a/h;->a([B)V

    .line 525
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/WapPushOverSms;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/a/a/h;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 526
    sget-object p1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p2, p1}, Lcom/google/android/a/a/o;->a(Lcom/google/android/a/a/f;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "Failed to save MMS WAP push notification ind"

    .line 533
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .line 536
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip storing duplicate MMS WAP push notification ind: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    .line 537
    invoke-virtual {v3}, Lcom/google/android/a/a/h;->a()[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/a/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unexpected RuntimeException in persisting MMS WAP push data"

    .line 547
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception p1

    .line 545
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Failed to save MMS WAP push data: type="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I
    .locals 9

    .line 350
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object p1

    .line 351
    iget v0, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    iget p1, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    return p1

    .line 355
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget v0, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->subId:I

    iget-object v2, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->parsedPdu:Lcom/google/android/a/a/f;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/WapPushOverSms;->writeInboxMessage(ILcom/google/android/a/a/f;)V

    .line 365
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_3

    .line 373
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManagerPackage:Ljava/lang/String;

    const-string v6, "mms-mgr"

    invoke-interface {v4, v5, v2, v6}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    .line 376
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "transactionId"

    .line 379
    iget v6, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "pduType"

    .line 380
    iget v6, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "header"

    .line 381
    iget-object v6, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "data"

    .line 382
    iget-object v6, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "contentTypeParameters"

    .line 383
    iget-object v6, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    iget v5, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 385
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "address"

    .line 386
    invoke-virtual {v4, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    :cond_2
    iget-object v5, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->wapAppId:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentType:Ljava/lang/String;

    invoke-interface {v0, v5, v6, v4}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit8 v4, v0, 0x1

    if-lez v4, :cond_3

    const v4, 0x8000

    and-int/2addr v0, v4

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 376
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    return v3

    .line 406
    :catch_0
    :cond_4
    iget-object v0, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 p1, 0x2

    return p1

    .line 411
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    iget-object v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->transactionId:I

    const-string/jumbo v5, "transactionId"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    iget v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->pduType:I

    const-string v5, "pduType"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    iget-object v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->header:[B

    const-string v5, "header"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 416
    iget-object v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->intentData:[B

    const-string v5, "data"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 417
    iget-object v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->contentTypeParameters:Ljava/util/HashMap;

    const-string v5, "contentTypeParameters"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 418
    iget v4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->phoneId:I

    invoke-static {v0, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 419
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "address"

    .line 420
    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    :cond_6
    iget-object p4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-static {p4, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p4

    const/4 v3, 0x0

    if-eqz p4, :cond_7

    .line 429
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 433
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 434
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v5, "mms-app"

    .line 433
    invoke-interface {v4, p4, v2, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForMms(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v4

    .line 435
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p4

    .line 436
    invoke-virtual {p4, v4, v5}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 437
    invoke-virtual {p4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, p4

    goto :goto_1

    :catch_1
    :cond_7
    move-object v6, v3

    .line 442
    :goto_1
    iget-object p4, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/internal/telephony/WapPushOverSms;->getPermissionForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    .line 443
    invoke-static {p1}, Lcom/android/internal/telephony/WapPushOverSms;->getAppOpsPermissionForIntent(Ljava/lang/String;)I

    move-result v5

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v2, p3

    move-object v3, v0

    move-object v7, p2

    .line 442
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    return v1
.end method

.method public dispose()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    .line 159
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/WapPushOverSms;->decodeWapPdu([BLcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;

    move-result-object p1

    .line 454
    iget p2, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->statusCode:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;->mimeType:Ljava/lang/String;

    const-string p2, "application/vnd.wap.mms-message"

    .line 455
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 128
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    return-void
.end method
