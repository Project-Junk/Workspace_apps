.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# static fields
.field private static final BER_SMS_PP_DOWNLOAD_TAG:I = 0xd1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_UICC:I = 0x81

.field private static final EVENT_SEND_ENVELOPE_RESPONSE:I = 0x2

.field private static final EVENT_START_DATA_DOWNLOAD:I = 0x1

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UsimDataDownloadHandler"


# instance fields
.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mPhoneId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 65
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    return-void
.end method

.method private acknowledgeSmsWithError(I)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private addUsimDataDownloadToMetrics(Z)V
    .locals 3

    .line 288
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 289
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSMSPP(ILjava/lang/String;Z)V

    return-void
.end method

.method private static getEnvelopeBodyLength(II)I
    .locals 2

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x7f

    if-le p1, v1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 17

    move-object/from16 v0, p0

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v1

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v3

    const/4 v4, 0x0

    .line 122
    aget-byte v5, v3, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    .line 124
    array-length v8, v3

    sub-int/2addr v8, v7

    .line 126
    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v9

    add-int/lit8 v10, v9, 0x1

    const/16 v11, 0x7f

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-le v9, v11, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    add-int/2addr v10, v14

    .line 132
    new-array v10, v10, [B

    const/16 v14, -0x2f

    .line 136
    aput-byte v14, v10, v4

    const/16 v14, -0x7f

    if-le v9, v11, :cond_1

    .line 138
    aput-byte v14, v10, v13

    move v15, v12

    goto :goto_1

    :cond_1
    move v15, v13

    :goto_1
    add-int/lit8 v16, v15, 0x1

    int-to-byte v9, v9

    .line 140
    aput-byte v9, v10, v15

    add-int/lit8 v9, v16, 0x1

    .line 143
    sget-object v15, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v15}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v15

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    aput-byte v15, v10, v16

    add-int/lit8 v15, v9, 0x1

    .line 144
    aput-byte v12, v10, v9

    add-int/lit8 v9, v15, 0x1

    const/16 v16, -0x7d

    .line 145
    aput-byte v16, v10, v15

    add-int/lit8 v15, v9, 0x1

    .line 146
    aput-byte v14, v10, v9

    if-eqz v5, :cond_2

    add-int/lit8 v9, v15, 0x1

    .line 150
    sget-object v16, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v10, v15

    add-int/lit8 v12, v9, 0x1

    int-to-byte v15, v5

    .line 151
    aput-byte v15, v10, v9

    .line 152
    invoke-static {v3, v13, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v15, v12, v5

    :cond_2
    add-int/lit8 v5, v15, 0x1

    .line 157
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v10, v15

    if-le v8, v11, :cond_3

    add-int/lit8 v9, v5, 0x1

    .line 159
    aput-byte v14, v10, v5

    move v5, v9

    :cond_3
    add-int/lit8 v9, v5, 0x1

    int-to-byte v11, v8

    .line 161
    aput-byte v11, v10, v5

    .line 162
    invoke-static {v3, v7, v10, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v8

    .line 166
    array-length v3, v10

    if-eq v9, v3, :cond_4

    const-string v1, "UsimDataDownloadHandler"

    const-string v2, "startDataDownload() calculated incorrect envelope length, aborting."

    .line 167
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {v0, v6}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    .line 169
    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(Z)V

    return-void

    .line 173
    :cond_4
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v5, v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v1, v7, v4

    aput v2, v7, v13

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v5, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 177
    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(Z)V

    return-void
.end method

.method private static is7bitDcs(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_1

    and-int/lit16 p0, p0, 0xf4

    const/16 v0, 0xf0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V
    .locals 8

    .line 207
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 208
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const-string v2, "UsimDataDownloadHandler"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x90

    if-ne v0, v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/16 v5, 0x91

    if-ne v0, v5, :cond_2

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USIM data download succeeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_2

    :cond_2
    const/16 v5, 0x93

    if-ne v0, v5, :cond_3

    if-nez v1, :cond_3

    const-string p1, "USIM data download failed: Toolkit busy"

    .line 215
    invoke-static {v2, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd4

    .line 216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    return-void

    :cond_3
    const/16 v1, 0x62

    if-eq v0, v1, :cond_5

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 222
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected SW1/SW2 response from UICC: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "USIM data download failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v3

    .line 226
    :goto_2
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 227
    array-length v2, p1

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x2

    const/4 v5, 0x7

    if-eqz v0, :cond_7

    .line 240
    array-length v6, p1

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [B

    .line 241
    aput-byte v3, v6, v3

    .line 242
    aput-byte v5, v6, v4

    goto :goto_3

    .line 244
    :cond_7
    array-length v6, p1

    add-int/lit8 v6, v6, 0x6

    new-array v6, v6, [B

    .line 245
    aput-byte v3, v6, v3

    const/16 v7, -0x2b

    .line 246
    aput-byte v7, v6, v4

    const/4 v4, 0x3

    .line 248
    aput-byte v5, v6, v2

    move v2, v4

    :goto_3
    add-int/lit8 v4, v2, 0x1

    int-to-byte p3, p3

    .line 251
    aput-byte p3, v6, v2

    add-int/lit8 p3, v4, 0x1

    int-to-byte v2, p2

    .line 252
    aput-byte v2, v6, v4

    .line 254
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 255
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v5

    add-int/lit8 v2, p3, 0x1

    int-to-byte p2, p2

    .line 256
    aput-byte p2, v6, p3

    goto :goto_4

    :cond_8
    add-int/lit8 v2, p3, 0x1

    .line 258
    array-length p2, p1

    int-to-byte p2, p2

    aput-byte p2, v6, p3

    .line 261
    :goto_4
    array-length p2, p1

    invoke-static {p1, v3, v6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 264
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-interface {p1, v0, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 229
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v4, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void

    :cond_a
    const/16 p1, 0xd5

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "UsimDataDownloadHandler"

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring unexpected message, what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 322
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p1, "Successfully wrote SMS-PP message to UICC"

    .line 323
    invoke-static {v4, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1, v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void

    .line 326
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v0, "Failed to write SMS-PP message to UICC"

    invoke-static {v4, v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0xff

    invoke-interface {p1, v3, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    return-void

    .line 307
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 309
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UICC Send Envelope failure, exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd5

    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(I)V

    return-void

    .line 316
    :cond_3
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, [I

    .line 317
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccIoResult;

    aget v2, v0, v3

    aget v0, v0, v1

    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;II)V

    return-void

    .line 303
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    return-void
.end method

.method handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 3

    const-string v0, "UsimDataDownloadHandler"

    if-eqz p1, :cond_0

    .line 83
    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Received SMS-PP data download, sending to UICC."

    .line 85
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    .line 88
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(Z)V

    const/4 p1, -0x1

    return p1
.end method

.method public startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string p1, "UsimDataDownloadHandler"

    const-string v0, "startDataDownload failed to send message to start data download."

    .line 112
    invoke-static {p1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method
