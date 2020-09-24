.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field mCurDataLength:I

.field mCurDataOffset:I

.field mCurOffset:I

.field mHasValidTlvObject:Z

.field mRecord:[B

.field mTlvLength:I

.field mTlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    .line 41
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    .line 42
    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    .line 43
    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return-void
.end method

.method private parseCurrentTlvObject()Z
    .locals 5

    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    const/16 v3, 0x80

    if-ge v1, v3, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    .line 99
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    const/16 v3, 0x81

    if-ne v1, v3, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    .line 103
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvOffset:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mTlvLength:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    return v0

    :cond_2
    return v4

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    new-array v1, v0, [B

    .line 79
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getTag()I
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mRecord:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isValidObject()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return v0
.end method

.method public nextObject()Z
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mCurOffset:I

    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->mHasValidTlvObject:Z

    return v0
.end method
