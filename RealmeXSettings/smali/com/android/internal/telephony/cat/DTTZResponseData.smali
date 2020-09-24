.class Lcom/android/internal/telephony/cat/DTTZResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private byteToBCD(I)B
    .locals 2

    if-gez p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Value has to be between 0 and 99"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 277
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private getTZOffSetByte(J)B
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v2, 0xdbba0

    .line 289
    div-long/2addr p1, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    int-to-long v1, v1

    mul-long/2addr v1, p1

    long-to-int p1, v1

    .line 291
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result p1

    if-eqz v0, :cond_2

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    :cond_2
    return p1
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 229
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v0, 0x8

    .line 231
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput-byte v3, v1, v2

    .line 235
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    if-nez v4, :cond_1

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v5

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    const/4 v4, 0x3

    .line 245
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    const/4 v4, 0x4

    .line 248
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v4

    aput-byte v4, v1, v6

    const/4 v4, 0x6

    .line 254
    iget-object v5, p0, Lcom/android/internal/telephony/cat/DTTZResponseData;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->byteToBCD(I)B

    move-result v5

    aput-byte v5, v1, v4

    const-string v4, "persist.sys.timezone"

    const-string v5, ""

    .line 256
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, -0x1

    aput-byte v4, v1, v3

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int/2addr v5, v4

    int-to-long v4, v5

    .line 262
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;->getTZOffSetByte(J)B

    move-result v4

    aput-byte v4, v1, v3

    :goto_0
    if-ge v2, v0, :cond_3

    .line 265
    aget-byte v3, v1, v2

    .line 266
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
