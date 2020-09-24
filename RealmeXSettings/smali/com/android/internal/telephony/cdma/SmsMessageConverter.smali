.class public Lcom/android/internal/telephony/cdma/SmsMessageConverter;
.super Ljava/lang/Object;
.source "SmsMessageConverter.java"


# static fields
.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessageConverter"

.field private static final VDBG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCdmaSmsMessageFromRil(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 9

    .line 71
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 72
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 73
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 80
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->teleserviceId:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 82
    iget-boolean v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->isServicePresent:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 83
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 86
    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v3, :cond_1

    const/4 v3, 0x2

    .line 88
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .line 90
    :cond_1
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 93
    :goto_0
    iget v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->serviceCategory:I

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 96
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digitMode:I

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    .line 97
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 98
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberMode:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 99
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberType:I

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 100
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->numberPlan:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 101
    iget-object v5, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-byte v5, v5

    .line 102
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 103
    new-array v6, v5, [B

    move v7, v4

    :goto_1
    if-ge v7, v5, :cond_3

    .line 105
    iget-object v8, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->address:Landroid/hardware/radio/V1_0/CdmaSmsAddress;

    iget-object v8, v8, Landroid/hardware/radio/V1_0/CdmaSmsAddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v6, v7

    if-nez v3, :cond_2

    .line 109
    aget-byte v8, v6, v7

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v6, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 113
    :cond_3
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 115
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->subaddressType:I

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 116
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-boolean v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->odd:Z

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 117
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v3, v3, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    if-gez v3, :cond_4

    move v3, v4

    .line 125
    :cond_4
    new-array v5, v3, [B

    move v6, v4

    :goto_2
    if-ge v6, v3, :cond_5

    .line 128
    iget-object v7, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->subAddress:Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;

    iget-object v7, v7, Landroid/hardware/radio/V1_0/CdmaSmsSubaddress;->digits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v7}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 131
    :cond_5
    iput-object v5, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 141
    iget-object v3, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gez v3, :cond_6

    move v3, v4

    .line 146
    :cond_6
    new-array v5, v3, [B

    :goto_3
    if-ge v4, v3, :cond_7

    .line 148
    iget-object v6, p0, Landroid/hardware/radio/V1_0/CdmaSmsMessage;->bearerData:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 151
    :cond_7
    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 154
    iput-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 155
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 157
    new-instance p0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    return-object p0
.end method

.method public static newSmsMessageFromCdmaSmsMessage(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Landroid/telephony/SmsMessage;
    .locals 1

    .line 164
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessageConverter;->newCdmaSmsMessageFromRil(Landroid/hardware/radio/V1_0/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v0
.end method
