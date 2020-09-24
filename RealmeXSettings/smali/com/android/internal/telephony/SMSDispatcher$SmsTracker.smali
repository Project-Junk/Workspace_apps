.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsTracker"
.end annotation


# instance fields
.field private mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mAppInfo:Landroid/content/pm/PackageInfo;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mData:Ljava/util/HashMap;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public final mDestAddress:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mExpectMore:Z

.field mFormat:Ljava/lang/String;

.field private mFullMessageText:Ljava/lang/String;

.field public mImsRetry:I

.field public mIsFallBackRetry:Z

.field private mIsText:Z

.field public mMessageRef:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mMessageUri:Landroid/net/Uri;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPersistMessage:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public mPriority:I

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public final mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private mSubId:I

.field private mTimestamp:J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUserId:I

.field public mUsesImsServiceForIms:Z

.field public mValidityPeriod:I


# direct methods
.method private constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "IZZIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    move-object v1, p1

    .line 1565
    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object v1, p2

    .line 1566
    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object v1, p3

    .line 1567
    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    .line 1568
    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move-object v2, p4

    .line 1569
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    move-object v2, p5

    .line 1570
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    move-object v2, p6

    .line 1571
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    move v2, p11

    .line 1572
    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 1573
    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 1574
    iput-boolean v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUsesImsServiceForIms:Z

    .line 1575
    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    move-object v2, p7

    .line 1576
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v2, p8

    .line 1577
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v2, p9

    .line 1578
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    move-object v2, p10

    .line 1579
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v2, p12

    .line 1580
    iput-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    move/from16 v2, p13

    .line 1581
    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    move/from16 v2, p14

    .line 1582
    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    move/from16 v2, p15

    .line 1583
    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    move/from16 v2, p16

    .line 1584
    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    move/from16 v2, p17

    .line 1585
    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    move/from16 v2, p18

    .line 1586
    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    .line 1587
    iput-boolean v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsFallBackRetry:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIILcom/android/internal/telephony/SMSDispatcher$1;)V
    .locals 0

    .line 1504
    invoke-direct/range {p0 .. p18}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 0

    .line 1504
    iget-boolean p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z
    .locals 0

    .line 1504
    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I
    .locals 0

    .line 1504
    iget p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUserId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Ljava/lang/String;
    .locals 0

    .line 1504
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    return-object p0
.end method

.method private persistOrUpdateMessage(Landroid/content/Context;II)V
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1717
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageState(Landroid/content/Context;II)V

    return-void

    .line 1719
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    return-void
.end method

.method private persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 7

    .line 1662
    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1663
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Persist SMS into "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    const-string v3, "FAILED"

    goto :goto_0

    :cond_1
    const-string v3, "SENT"

    .line 1667
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SMSDispatcher"

    .line 1666
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1669
    iget v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sub_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    const-string v5, "address"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    const-string v5, "body"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    .line 1673
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "seen"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1675
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 1676
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "creator"

    .line 1677
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    .line 1680
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 1683
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v5, "error_code"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1685
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1686
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1688
    :try_start_0
    sget-object p3, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_6

    if-ne p2, v2, :cond_6

    .line 1695
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v0, "type"

    .line 1696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1697
    invoke-virtual {p1, p3, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    :cond_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string/jumbo p2, "writeOutboxMessage: Failed to persist outbox message"

    .line 1701
    invoke-static {v3, p2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1704
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_7
    :goto_3
    return-object v1
.end method

.method private updateMessageState(Landroid/content/Context;II)V
    .locals 9

    .line 1633
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 1636
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1637
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1638
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "error_code"

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1641
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const-string p1, "SMSDispatcher"

    const-string p3, "Failed to move message to "

    .line 1643
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method


# virtual methods
.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1600
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    return-object v0
.end method

.method isMultipart()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1596
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFailed(Landroid/content/Context;II)V
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1732
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_2

    .line 1738
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const/4 v2, 0x5

    .line 1741
    invoke-direct {p0, p1, v2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 1743
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_7

    .line 1746
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1747
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "uri"

    .line 1749
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p3, :cond_5

    const-string v3, "errorCode"

    .line 1752
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1754
    :cond_5
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p3, :cond_6

    if-eqz v0, :cond_6

    const-string p3, "SendNextMsg"

    .line 1756
    invoke-virtual {v2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1758
    :cond_6
    iget-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, p1, p2, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "SMSDispatcher"

    const-string p2, "Failed to send result"

    .line 1760
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public onSent(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1774
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1775
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    const/4 v3, 0x2

    .line 1779
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x5

    .line 1782
    :cond_2
    invoke-direct {p0, p1, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 1784
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    .line 1787
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1788
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "uri"

    .line 1790
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    const-string v0, "SendNextMsg"

    .line 1794
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1796
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "SMSDispatcher"

    const-string v0, "Failed to send result"

    .line 1798
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public updateSentMessageStatus(Landroid/content/Context;I)V
    .locals 7
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1616
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1618
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "status"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1620
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method
