.class public Lcom/android/internal/telephony/uicc/AnswerToReset;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;,
        Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    }
.end annotation


# static fields
.field private static final B2_MASK:I = 0x2

.field private static final B7_MASK:I = 0x40

.field private static final B8_MASK:I = 0x80

.field public static final DIRECT_CONVENTION:B = 0x3bt

.field private static final EXTENDED_APDU_INDEX:I = 0x2

.field public static final INTERFACE_BYTES_MASK:I = 0xf0

.field public static final INVERSE_CONVENTION:B = 0x3ft

.field private static final TAG:Ljava/lang/String; = "AnswerToReset"

.field private static final TAG_CARD_CAPABILITIES:I = 0x7

.field public static final TA_MASK:I = 0x10

.field public static final TB_MASK:I = 0x20

.field public static final TC_MASK:I = 0x40

.field public static final TD_MASK:I = 0x80

.field public static final T_MASK:I = 0xf

.field public static final T_VALUE_FOR_GLOBAL_INTERFACE:I = 0xf

.field private static final VDBG:Z = false


# instance fields
.field private mCheckByte:Ljava/lang/Byte;

.field private mFormatByte:B

.field private mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

.field private mInterfaceBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectConvention:Z

.field private mIsEuiccSupported:Z

.field private mOnlyTEqualsZero:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkIsEuiccSupported()V
    .locals 4

    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/16 v3, 0xf

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    .line 155
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 158
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsEuiccSupported:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AnswerToReset"

    .line 431
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AnswerToReset"

    .line 435
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;
    .locals 1

    .line 137
    new-instance v0, Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;-><init>()V

    .line 138
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtrString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseAtrString(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "The input ATR string can not be null"

    .line 284
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 288
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The length of input ATR string "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not even."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 293
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    const-string p1, "Valid ATR string must at least contains TS and T0."

    .line 294
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 298
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 303
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseConventionByte([BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v0

    .line 308
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseFormatByte([BI)I

    move-result v2

    if-ne v2, v3, :cond_5

    return v0

    .line 313
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseInterfaceBytes([BI)I

    move-result v2

    if-ne v2, v3, :cond_6

    return v0

    .line 318
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseHistoricalBytes([BI)I

    move-result v2

    if-ne v2, v3, :cond_7

    return v0

    .line 323
    :cond_7
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseCheckBytes([BI)I

    move-result v2

    if-ne v2, v3, :cond_8

    return v0

    .line 328
    :cond_8
    array-length v1, v1

    if-eq v2, v1, :cond_9

    const-string p1, "Unexpected bytes after the check byte."

    .line 329
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v0

    .line 332
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully parsed the ATR string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->log(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->checkIsEuiccSupported()V

    const/4 p1, 0x1

    return p1
.end method

.method private parseCheckBytes([BI)I
    .locals 1

    .line 268
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 269
    aget-byte p1, p1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    if-nez p1, :cond_1

    const-string p1, "Check byte must be present because T equals to values other than 0."

    .line 273
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_1
    const-string p1, "Check byte can be absent because T=0."

    .line 276
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->log(Ljava/lang/String;)V

    :goto_0
    return p2
.end method

.method private parseConventionByte([BI)I
    .locals 3

    .line 165
    array-length v0, p1

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    const-string p1, "Failed to read the convention byte."

    .line 166
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v1

    .line 169
    :cond_0
    aget-byte p1, p1, p2

    const/16 v0, 0x3b

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    :goto_0
    add-int/2addr p2, v2

    return p2

    .line 175
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unrecognized convention byte "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v1
.end method

.method private parseFormatByte([BI)I
    .locals 1

    .line 182
    array-length v0, p1

    if-lt p2, v0, :cond_0

    const-string p1, "Failed to read the format byte."

    .line 183
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 186
    :cond_0
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private parseHistoricalBytes([BI)I
    .locals 3

    .line 256
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    and-int/lit8 v0, v0, 0xf

    add-int v1, v0, p2

    .line 257
    array-length v2, p1

    if-le v1, v2, :cond_0

    const-string p1, "Failed to read the historical bytes."

    .line 258
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez v0, :cond_1

    .line 262
    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->access$100([BII)Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    :cond_1
    return v1
.end method

.method private parseInterfaceBytes([BI)I
    .locals 4

    .line 193
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    :cond_0
    :goto_0
    and-int/lit16 v1, v0, 0xf0

    if-eqz v1, :cond_9

    .line 201
    new-instance v1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;-><init>(Lcom/android/internal/telephony/uicc/AnswerToReset$1;)V

    and-int/lit8 v2, v0, 0x10

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 204
    array-length v2, p1

    if-lt p2, v2, :cond_1

    const-string p1, "Failed to read the byte for TA."

    .line 205
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 208
    :cond_1
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTA(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_4

    .line 213
    array-length v2, p1

    if-lt p2, v2, :cond_3

    const-string p1, "Failed to read the byte for TB."

    .line 214
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 217
    :cond_3
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTB(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    :cond_4
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_6

    .line 222
    array-length v2, p1

    if-lt p2, v2, :cond_5

    const-string p1, "Failed to read the byte for TC."

    .line 223
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 226
    :cond_5
    aget-byte v2, p1, p2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTC(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    :cond_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 231
    array-length v0, p1

    if-lt p2, v0, :cond_7

    const-string p1, "Failed to read the byte for TD."

    .line 232
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->loge(Ljava/lang/String;)V

    return v3

    .line 235
    :cond_7
    aget-byte v0, p1, p2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->setTD(Ljava/lang/Byte;)V

    add-int/lit8 p2, p2, 0x1

    .line 238
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 244
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 249
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mOnlyTEqualsZero:Z

    goto/16 :goto_0

    :cond_9
    return p2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "AnswerToReset:"

    .line 509
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getCheckByte()Ljava/lang/Byte;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    return-object v0
.end method

.method public getConventionByte()B
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    return v0

    :cond_0
    const/16 v0, 0x3f

    return v0
.end method

.method public getFormatByte()B
    .locals 1

    .line 443
    iget-byte v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    return v0
.end method

.method public getHistoricalBytes()Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    return-object v0
.end method

.method public getInterfaceBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEuiccSupported()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsEuiccSupported:Z

    return v0
.end method

.method public isExtendedApduSupported()Z
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x7

    .line 469
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->getValue(I)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 470
    array-length v2, v0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mIsDirectConvention:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    .line 474
    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_2

    return v3

    :cond_2
    return v1

    .line 476
    :cond_3
    aget-byte v0, v0, v4

    and-int/2addr v0, v4

    if-lez v0, :cond_4

    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 482
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AnswerToReset:{"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "mConventionByte="

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->getConventionByte()B

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mFormatByte="

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mFormatByte:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mInterfaceBytes={"

    .line 488
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mInterfaceBytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    .line 490
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "},"

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "mHistoricalBytes={"

    .line 493
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mHistoricalBytes:Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;

    if-eqz v3, :cond_1

    .line 495
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AnswerToReset$HistoricalBytes;->getRawData()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-byte v6, v3, v5

    .line 496
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "mCheckByte="

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset;->mCheckByte:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->byteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
