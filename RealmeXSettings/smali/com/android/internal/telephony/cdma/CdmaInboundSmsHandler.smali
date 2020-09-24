.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# instance fields
.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 6

    .line 62
    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    const-string v1, "CdmaInboundSmsHandler"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 53
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110061

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 63
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 64
    iget-object p2, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 66
    iget-object p1, p3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private addVoicemailSmsToMetrics()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingVoiceMailSms(ILjava/lang/String;)V

    return-void
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 3

    add-int/lit8 p1, p1, 0x4

    .line 329
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    .line 330
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    new-instance p0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    const/4 p1, 0x2

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v0

    add-int/2addr v0, p1

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "application/vnd.syncml.notification"

    .line 348
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 2

    .line 237
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result p1

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voicemail count="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    const/16 v0, 0x63

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 249
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    .line 251
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addVoicemailSmsToMetrics()V

    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 88
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 268
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v1, "Received a WAP SMS which is not WDP. Discard."

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    return v4

    .line 273
    :cond_0
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    .line 274
    aget-byte v6, v1, v6

    and-int/lit16 v15, v6, 0xff

    if-lt v15, v5, :cond_1

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WDP bad segment #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expecting 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 v4, 0x7

    const/4 v6, 0x3

    if-nez v15, :cond_3

    .line 286
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x4

    .line 287
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    const/4 v7, 0x5

    .line 288
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x6

    .line 289
    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 292
    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v8, :cond_2

    .line 293
    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v4, 0xb

    :cond_2
    move v10, v7

    goto :goto_0

    :cond_3
    move v10, v2

    move v4, v6

    move v6, v10

    .line 300
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Received WAP PDU. Type = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", originator = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", src-port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", dst-port = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ID = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p2

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", segment# = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 305
    array-length v6, v1

    sub-int/2addr v6, v4

    new-array v7, v6, [B

    .line 306
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v4, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    const-class v4, Lcom/android/internal/telephony/InboundSmsTracker;

    .line 308
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v6

    const/4 v11, 0x1

    const/16 v17, 0x1

    .line 310
    invoke-static {v7}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v18

    move-wide/from16 v8, p5

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v16, v5

    .line 308
    invoke-virtual/range {v6 .. v18}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v1

    return v1
.end method

.method private static resultToCause(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 p0, 0x27

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x23

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 1

    .line 202
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result p2

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez p2, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    :cond_0
    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    return-void
.end method

.method public dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 109
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string p1, "Broadcast type message"

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms(Ljava/lang/String;)Landroid/telephony/SmsCbMessage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "error trying to parse broadcast SMS"

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    :goto_1
    return v2

    .line 126
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 128
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 133
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 134
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v1

    const v3, 0xfdea

    if-eq v1, v3, :cond_5

    const/high16 v4, 0x40000

    if-eq v1, v4, :cond_4

    packed-switch v1, :pswitch_data_0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unsupported teleservice 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 p1, 0x4

    return p1

    .line 152
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    return v2

    .line 145
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v2

    .line 140
    :cond_4
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    return v2

    .line 168
    :cond_5
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 169
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v4, v5, :cond_6

    const/4 p1, 0x3

    return p1

    :cond_6
    const/16 v4, 0x1004

    if-ne v4, v1, :cond_7

    .line 177
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v6

    iget v7, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v10

    move-object v5, p0

    .line 177
    invoke-direct/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1

    :cond_7
    if-ne v3, v1, :cond_9

    .line 183
    invoke-virtual {v0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->processCdmaCTWdpHeader(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    .line 186
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    move-object v3, p0

    .line 186
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;Ljava/lang/String;J)I

    move-result p1

    return p1

    .line 191
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public is3gpp2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onQuitting()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    const-string/jumbo v0, "unregistered for 3GPP2 SMS"

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    return-void
.end method
