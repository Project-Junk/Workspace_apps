.class public final Lcom/android/internal/telephony/NitzData;
.super Ljava/lang/Object;
.source "NitzData.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field private static final MAX_NITZ_YEAR:I = 0x7f5

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final MS_PER_QUARTER_HOUR:I = 0xdbba0


# instance fields
.field private final mCurrentTimeMillis:J

.field private final mDstOffset:Ljava/lang/Integer;

.field private final mEmulatorHostTimeZone:Ljava/util/TimeZone;

.field private final mOriginalString:Ljava/lang/String;

.field private final mZoneOffset:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    .line 61
    iput-object p3, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    .line 62
    iput-wide p4, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    .line 63
    iput-object p6, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "originalString==null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createForTests(ILjava/lang/Integer;JLjava/util/TimeZone;)Lcom/android/internal/telephony/NitzData;
    .locals 8

    .line 142
    new-instance v7, Lcom/android/internal/telephony/NitzData;

    const-string v1, "Test data"

    move-object v0, v7

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/NitzData;-><init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V

    return-object v7
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/NitzData;
    .locals 14

    const-string v0, "SST"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "GMT"

    .line 76
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    const/16 v3, 0x10

    const/4 v4, 0x0

    .line 78
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const-string v3, "[/:,+-]"

    .line 80
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 82
    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit16 v5, v5, 0x7d0

    const/16 v6, 0x7f5

    if-le v5, v6, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NITZ year: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exceeds limit, skip NITZ time update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v6, 0x1

    .line 89
    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 92
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v7, 0x2

    .line 93
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 95
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x5

    .line 96
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x3

    .line 98
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0xa

    .line 99
    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x4

    .line 101
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0xc

    .line 102
    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 104
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0xd

    .line 105
    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0x2d

    .line 108
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    move v4, v6

    :cond_1
    const/4 v5, 0x6

    .line 109
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    mul-int/2addr v6, v5

    const v4, 0xdbba0

    mul-int v9, v6, v4

    .line 116
    array-length v4, v3

    const/16 v5, 0x8

    if-lt v4, v5, :cond_3

    const/4 v4, 0x7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_4

    .line 119
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v6, 0x36ee80

    mul-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v10, v4

    goto :goto_2

    :cond_4
    move-object v10, v1

    .line 127
    :goto_2
    array-length v4, v3

    const/16 v6, 0x9

    if-lt v4, v6, :cond_5

    .line 128
    aget-object v3, v3, v5

    const/16 v4, 0x21

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object v13, v3

    goto :goto_3

    :cond_5
    move-object v13, v1

    .line 131
    :goto_3
    new-instance v3, Lcom/android/internal/telephony/NitzData;

    .line 132
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    move-object v7, v3

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/NitzData;-><init>(Ljava/lang/String;ILjava/lang/Integer;JLjava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NITZ: Parsing NITZ time "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ex="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/NitzData;

    .line 200
    iget v2, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    iget v3, p1, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    if-eq v2, v3, :cond_2

    return v1

    .line 203
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    iget-wide v4, p1, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 206
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    .line 213
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_7

    .line 214
    iget-object p1, p1, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    iget-object p1, p1, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-nez p1, :cond_8

    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public final getCurrentTimeInMillis()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    return-wide v0
.end method

.method public final getDstAdjustmentMillis()Ljava/lang/Integer;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEmulatorHostTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public final getLocalOffsetMillis()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget v1, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget-wide v3, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isDst()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NitzData{mOriginalString="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mOriginalString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/NitzData;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDstOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mDstOffset:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/NitzData;->mCurrentTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEmulatorHostTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NitzData;->mEmulatorHostTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
