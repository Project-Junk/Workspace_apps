.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;,
        Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsSender;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x8

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x9

.field protected static final EVENT_GET_IMS_SERVICE:I = 0x10

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0xa

.field protected static final EVENT_ICC_CHANGED:I = 0xf

.field protected static final EVENT_NEW_ICC_SMS:I = 0xe

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x4

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final MAP_KEY_DATA:Ljava/lang/String; = "data"

.field protected static final MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field protected static final MAP_KEY_DEST_PORT:Ljava/lang/String; = "destPort"

.field protected static final MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field protected static final MAP_KEY_SC_ADDR:Ljava/lang/String; = "scAddr"

.field protected static final MAP_KEY_SMSC:Ljava/lang/String; = "smsc"

.field protected static final MAP_KEY_TEXT:Ljava/lang/String; = "text"

.field protected static final MAX_SEND_RETRIES:I = 0x3

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field protected static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static sConcatenatedRef:I


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/Phone;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mResolver:Landroid/content/ContentResolver;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

.field protected mSmsSendDisabled:Z

.field protected final mTelephonyManager:Landroid/telephony/TelephonyManager;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsDispatchersController;)V
    .locals 3

    .line 198
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 200
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 201
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 202
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 203
    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 205
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "sms_short_code_rule"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11100c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 211
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 212
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 211
    invoke-virtual {p1, p2, v0}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SMSDispatcher: ctor mSmsCapable="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " format="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mSmsSendDisabled="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMSDispatcher"

    invoke-static {p2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Landroid/app/PendingIntent;)I
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSendSmsFlag(Landroid/app/PendingIntent;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->checkCallerIsPhoneOrCarrierApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V

    return-void
.end method

.method private checkCallerIsPhoneOrCarrierApp()V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "Caller is not phone or carrier app!"

    .line 2015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2016
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 2021
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2022
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2023
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 2024
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    :catch_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 5

    .line 1321
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    const-string v0, "SMSDispatcher"

    const-string v4, "Denied because queue limit reached"

    .line 1323
    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return v2

    :cond_0
    add-int/2addr v0, v2

    .line 1327
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    return v1
.end method

.method private getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1339
    :try_start_0
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    const/high16 v1, 0x43fa0000    # 500.0f

    const/4 v2, 0x5

    .line 1340
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1344
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PackageManager Name Not Found for package "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1982
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1987
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v0

    const/4 v13, 0x0

    const-string v14, "SMSDispatcher"

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_6

    .line 1084
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1085
    iput-object v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1086
    iput-object v12, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move/from16 v5, p6

    if-ne v5, v8, :cond_1

    .line 1088
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isAscii7bitSupportedForLongMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    .line 1089
    :goto_0
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message encoding for proper 7 bit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 1092
    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1094
    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz p8, :cond_2

    if-eqz p9, :cond_2

    move/from16 v7, p14

    move v1, v8

    goto :goto_2

    :cond_2
    move/from16 v7, p14

    move/from16 v1, v16

    .line 1102
    :goto_2
    invoke-static {v9, v0, v1, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1106
    invoke-virtual {v15, v9, v10, v11, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_4

    if-eqz p15, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v10, v16

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v8

    :goto_4
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    move-object/from16 v11, p13

    move v12, v13

    move v13, v14

    move/from16 v14, p14

    move/from16 v15, p16

    .line 1108
    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "CdmaSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null"

    .line 1113
    invoke-static {v14, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_6
    move/from16 v5, p6

    if-eqz p8, :cond_7

    move v3, v8

    goto :goto_5

    :cond_7
    move/from16 v3, v16

    .line 1121
    :goto_5
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    iget v6, v12, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v7, v12, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v5, p6

    move v15, v8

    move/from16 v8, p16

    .line 1119
    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object/from16 v8, p0

    .line 1124
    invoke-virtual {v8, v9, v10, v11, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    if-eqz p9, :cond_9

    if-eqz p15, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v10, v16

    goto :goto_7

    :cond_9
    :goto_6
    move v10, v15

    :goto_7
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p5

    move-object/from16 v11, p13

    move v12, v13

    move v13, v14

    move/from16 v14, p14

    move/from16 v15, p16

    .line 1126
    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v0, "GsmSMSDispatcher.getNewSubmitPduTracker(): getSubmitPdu() returned null"

    .line 1131
    invoke-static {v14, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 190
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    .line 191
    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static getNotInServiceError(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method private static getSendSmsFlag(Landroid/app/PendingIntent;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    .line 750
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(I)V

    return-void

    :cond_0
    const/4 p0, 0x4

    .line 752
    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SMSDispatcher"

    const-string p1, "Failed to send result"

    .line 755
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private isAscii7bitSupportedForLongMessage()Z
    .locals 4

    .line 2036
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 2039
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2041
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v0, :cond_0

    const-string v1, "ascii_7_bit_support_for_long_message_bool"

    .line 2046
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 2043
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private processSendSmsResponse(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;II)V
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "SMSDispatcher"

    if-nez p1, :cond_0

    const-string p1, "processSendSmsResponse: null tracker"

    .line 507
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 511
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p3, v3, v2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    const/4 p3, 0x2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, p3, :cond_1

    .line 533
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Unknown result "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Retry on carrier network."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :cond_1
    const-string p2, "Sending SMS by IP failed."

    .line 523
    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance p2, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p2, p1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string p2, "Sending SMS by IP failed. Retry on carrier network."

    .line 529
    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :cond_3
    const-string p2, "Sending SMS by IP succeeded."

    .line 516
    invoke-static {v0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance p2, Landroid/os/AsyncResult;

    invoke-direct {p2, p1, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3, p2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 14
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1472
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "destination"

    .line 1474
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "scaddress"

    .line 1475
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "parts"

    .line 1477
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/ArrayList;

    const-string v1, "sentIntents"

    .line 1478
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    const-string v1, "deliveryIntents"

    .line 1479
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1484
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 1485
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_1

    const/4 v2, 0x0

    if-eqz v6, :cond_0

    .line 1487
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1488
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1490
    :cond_0
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1496
    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$300(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v10

    iget v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPriority:I

    iget-boolean v12, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    iget v13, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mValidityPeriod:I

    move-object v2, p0

    .line 1495
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V

    return-void
.end method

.method private sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 3

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SMSDispatcher"

    const-string v2, "Found carrier package."

    .line 909
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 912
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 914
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 916
    :goto_0
    new-instance p2, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->shouldBlockSmsForEcbm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SMSDispatcher"

    const-string v1, "Block SMS in Emergency Callback mode"

    .line 646
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    .line 649
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method private triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 889
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "SMSDispatcher"

    const-string v0, "Intent has been canceled!"

    .line 891
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private triggerSentIntentForFailure(Ljava/util/List;)V
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

    .line 901
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

    .line 902
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 9

    .line 1234
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "SMSDispatcher"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    .line 1241
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1242
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1243
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v3, :cond_4

    :cond_3
    const-string v6, "Can\'t get SIM country Iso: trying network country Iso"

    .line 1244
    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1246
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v6

    .line 1249
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :goto_1
    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_8

    .line 1253
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1254
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v3, :cond_7

    :cond_6
    const-string v0, "Can\'t get Network country Iso: trying SIM country Iso"

    .line 1256
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1258
    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1261
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1262
    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1261
    invoke-static {v6, v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v6

    :cond_8
    if-eqz v6, :cond_f

    if-eq v6, v1, :cond_f

    if-ne v6, v3, :cond_9

    goto :goto_3

    .line 1273
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "device_provisioned"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "Can\'t send premium sms during Setup Wizard"

    .line 1274
    invoke-static {v4, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1279
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    .line 1280
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    .line 1281
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1280
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :cond_b
    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_d

    if-ne v6, v2, :cond_c

    const/16 v0, 0x8

    goto :goto_2

    :cond_c
    const/16 v0, 0x9

    .line 1308
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return v5

    :cond_d
    const-string p1, "User approved this app to send to premium SMS"

    .line 1289
    invoke-static {v4, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    const-string v0, "User denied this app from sending to premium SMS"

    .line 1293
    invoke-static {v4, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 1294
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1295
    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 1296
    iput v1, p1, Landroid/os/Message;->arg2:I

    .line 1297
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return v5

    :cond_f
    :goto_3
    return v1
.end method

.method public dispose()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected getCarrierAppPackageName()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1992
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1997
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 1998
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1999
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2000
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2004
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/CarrierSmsUtils;->getCarrierImsPackageForIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method protected getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    .line 1833
    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/String;",
            "ZZII)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    .line 1843
    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "ZZII)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1810
    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1813
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    const/16 v2, 0x40

    move-object/from16 v3, p1

    .line 1816
    :try_start_0
    invoke-virtual {v1, v3, v2, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const-string v1, "destAddr"

    move-object/from16 v3, p2

    .line 1823
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1824
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v2, v1

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSubId()I

    move-result v15

    const/16 v21, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v18, v14

    move-object/from16 v14, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v19, p14

    move/from16 v20, p15

    invoke-direct/range {v2 .. v21}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZZIIILcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v1
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1861
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "destAddr"

    .line 1862
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scAddr"

    .line 1863
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "destPort"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 1865
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    iget-object p1, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    const-string p2, "smsc"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    iget-object p1, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    const-string p2, "pdu"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1850
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "destAddr"

    .line 1851
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "scAddr"

    .line 1852
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "text"

    .line 1853
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    iget-object p1, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    const-string p2, "smsc"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    iget-object p1, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    const-string p2, "pdu"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getSubId()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2010
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v0

    return v0
.end method

.method protected abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1386
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x1040699

    goto :goto_0

    :cond_1
    const p1, 0x104069f

    .line 1397
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1398
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104069d

    const/4 v3, 0x2

    .line 1399
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v5, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1402
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x1090102

    const/4 v5, 0x0

    .line 1404
    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1407
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v5, 0x1020443

    .line 1408
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v3, p0, p2, v5, v4}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    const p2, 0x102043e

    .line 1412
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1413
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x102043f

    .line 1415
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x1020440

    .line 1417
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 1419
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x1020441

    .line 1421
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 1423
    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1425
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1426
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104069a

    .line 1427
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104069c

    .line 1428
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1429
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1430
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1432
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x7d3

    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    .line 1433
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 1435
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    const/4 p2, -0x2

    .line 1436
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "SMSDispatcher"

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 355
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage() ignoring message of unexpected type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    return-void

    .line 304
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 300
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 326
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 327
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    .line 328
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_0

    .line 329
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NEVER_ALLOWED error code."

    .line 331
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x7

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending SHORT_CODE_NOT_ALLOWED error code."

    .line 336
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_2

    .line 340
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x5

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - sending LIMIT_EXCEEDED error code."

    .line 341
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "SMSDispatcher: EVENT_STOP_SENDING - unexpected cases."

    .line 344
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    return-void

    .line 309
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 310
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 313
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-le v0, v3, :cond_4

    .line 314
    iput-boolean v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    goto :goto_1

    .line 316
    :cond_4
    iput-boolean v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 318
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 320
    :goto_2
    iget p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    return-void

    .line 296
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    :pswitch_7
    const-string v0, "SMS retry.."

    .line 291
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 287
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1358
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1359
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040694

    const/4 v3, 0x1

    .line 1360
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 1363
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V

    .line 1366
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040696

    .line 1367
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x108008a

    .line 1368
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1369
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040697

    .line 1370
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040695

    .line 1371
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1372
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1373
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1375
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1376
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 6

    .line 668
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 671
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string v2, "SMSDispatcher"

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsResponse;

    iget v1, v1, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    goto :goto_0

    :cond_0
    const-string v1, "SmsResponse was null"

    .line 674
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 680
    iget-object p1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    .line 682
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 685
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Phone;->notifySmsSent(Ljava/lang/String;)V

    return-void

    .line 689
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 691
    iget v3, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    const/4 v4, 0x3

    if-lez v3, :cond_3

    if-eqz v1, :cond_3

    .line 695
    iput v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "handleSendComplete: Skipping retry:  isIms()="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mRetryCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mImsRetry="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mMessageRef="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " SS= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 702
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 707
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    .line 708
    :cond_4
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    const/4 v5, 0x1

    if-ne v1, v2, :cond_5

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v1, v4, :cond_5

    .line 719
    iget p1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/2addr p1, v5

    iput p1, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 720
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 721
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 724
    :cond_5
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 725
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsResponse;

    iget v3, v1, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    .line 728
    :cond_6
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v1, :cond_7

    const/4 v5, 0x6

    .line 732
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v5, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "SMSDispatcher"

    const-string v0, "handleStatusReport() called with no subclass."

    .line 265
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isCdmaMo()Z
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isCdmaMo()Z

    move-result v0

    return v0
.end method

.method public isIms()Z
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v0, :cond_0

    .line 1972
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->isIms()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "SMSDispatcher"

    const-string v1, "mSmsDispatchersController  is null"

    .line 1974
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object v11, p0

    const/4 v12, 0x1

    if-eqz p7, :cond_0

    move v5, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 801
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    .line 804
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 805
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZ)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 810
    invoke-direct {p0, v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 811
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher.sendData(): getSubmitPdu() returned null"

    .line 814
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p6

    .line 815
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 29
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZI)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    .line 992
    invoke-direct {v15, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 993
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v0

    and-int/lit16 v11, v0, 0xff

    .line 995
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_0

    .line 997
    invoke-direct {v15, v13}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    .line 1001
    :cond_0
    new-array v9, v10, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    const/4 v8, 0x0

    move v0, v8

    move v7, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v0, v10, :cond_3

    .line 1003
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v15, v1, v8}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 1004
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_2

    if-eqz v7, :cond_1

    if-ne v7, v6, :cond_2

    .line 1007
    :cond_1
    iget v7, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1009
    :cond_2
    aput-object v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_3
    new-array v5, v10, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1015
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1016
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v2, v8

    :goto_1
    if-ge v2, v10, :cond_9

    .line 1019
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1020
    iput v11, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v1, v2, 0x1

    .line 1021
    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1022
    iput v10, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1029
    iput-boolean v6, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1030
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1031
    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-ne v7, v6, :cond_4

    .line 1035
    aget-object v0, v9, v2

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 1036
    aget-object v0, v9, v2

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_4
    if-eqz v13, :cond_5

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1041
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    :goto_2
    if-eqz v12, :cond_6

    .line 1045
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 1046
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    goto :goto_3

    :cond_6
    const/16 v18, 0x0

    .line 1050
    :goto_3
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    add-int/lit8 v0, v10, -0x1

    if-ne v2, v0, :cond_7

    move/from16 v21, v6

    goto :goto_4

    :cond_7
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, p0

    move/from16 v22, v1

    move-object/from16 v1, p7

    move/from16 v23, v2

    move-object/from16 v2, p1

    move-object/from16 v24, v3

    move-object/from16 v3, p2

    move-object/from16 v25, v4

    move-object/from16 v4, v20

    move-object/from16 v26, v5

    move-object v5, v8

    move/from16 v20, v6

    move v6, v7

    move/from16 v27, v7

    move-object/from16 v7, v19

    const/16 v19, 0x0

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v21

    move/from16 v28, v10

    move-object/from16 v10, v25

    move/from16 v21, v11

    move-object/from16 v11, v24

    move-object/from16 v12, p6

    move-object/from16 v13, v17

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/telephony/SMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;IZI)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    move-object/from16 v1, v26

    aput-object v0, v1, v23

    .line 1054
    aget-object v0, v1, v23

    if-nez v0, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 1055
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Ljava/util/List;)V

    return-void

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 1058
    aget-object v3, v1, v23

    move/from16 v4, p8

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$302(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z

    move-object/from16 v14, p3

    move-object/from16 v12, p5

    move-object v15, v0

    move-object v5, v1

    move-object v13, v2

    move-object/from16 v9, v18

    move/from16 v8, v19

    move/from16 v6, v20

    move/from16 v11, v21

    move/from16 v2, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move/from16 v7, v27

    move/from16 v10, v28

    goto/16 :goto_1

    :cond_9
    move-object v1, v5

    move/from16 v19, v8

    move/from16 v28, v10

    move-object v0, v15

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMSDispatcher"

    if-eqz v2, :cond_a

    const-string v4, "Found carrier package."

    .line 1063
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v4, p3

    invoke-direct {v3, v0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1065
    new-instance v1, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    invoke-virtual {v3, v2, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    return-void

    :cond_a
    const-string v2, "No carrier package."

    .line 1068
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v19

    move/from16 v2, v28

    :goto_5
    if-ge v3, v2, :cond_b

    .line 1069
    aget-object v4, v1, v3

    .line 1070
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1162
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "pdu"

    .line 1163
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1165
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    const/4 v2, 0x4

    const-string v3, "SMSDispatcher"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Device does not support sending sms."

    .line 1166
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Empty PDU"

    .line 1172
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void

    .line 1177
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v5, 0x40

    const/4 v6, 0x1

    .line 1184
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$400(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)I

    move-result v7

    .line 1183
    invoke-virtual {v1, v0, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1196
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1198
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsUsageMonitor;->isSmsAuthorizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1203
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v9, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->getUsageMonitor()Lcom/android/internal/telephony/SmsUsageMonitor;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1215
    invoke-static {p1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->access$500(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Ljava/lang/String;

    move-result-object v8

    move-object v10, p0

    .line 1214
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/SmsUsageMonitor;->authorizeOutgoingSms(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 1217
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1221
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1222
    new-instance p1, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;-><init>(Landroid/content/Context;)V

    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/AsyncEmergencyContactNotifier;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    return-void

    :catch_0
    const-string v0, "Can\'t get calling app package info: refusing to send SMS"

    .line 1186
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v6, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void

    .line 1457
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is null. Retry failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZI)V
    .locals 15

    move-object v13, p0

    const-string v8, "SMSDispatcher"

    const-string v0, "sendText"

    .line 868
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v14

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v6, p9

    move/from16 v7, p11

    .line 869
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;II)Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    .line 872
    invoke-virtual {p0, v1, v2, v9, v0}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v2

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move/from16 v7, p10

    move-object/from16 v8, p3

    move v9, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    .line 873
    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/lang/String;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;ZZII)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    .line 877
    invoke-direct {p0, v14, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsByCarrierApp(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 878
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "SmsDispatcher.sendText(): getSubmitPdu() returned null"

    .line 881
    invoke-static {v8, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p4

    .line 882
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected abstract shouldBlockSmsForEcbm()Z
.end method
