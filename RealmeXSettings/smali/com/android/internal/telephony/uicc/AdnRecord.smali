.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field mAdditionalNumbers:[Ljava/lang/String;

.field mAlphaTag:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEfid:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mEmails:[Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mExtRecord:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mNumber:Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field mRecordNumber:I
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    const/16 v1, 0xff

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 159
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 160
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    const/16 v1, 0xff

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 139
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 140
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 141
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    const/16 v0, 0xff

    .line 50
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 149
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 150
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 151
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    const/16 v0, 0xff

    .line 50
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 118
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 119
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 120
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 134
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    return-void
.end method

.method private static arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-string v1, ""

    if-nez p0, :cond_1

    .line 255
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 260
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    .line 263
    :cond_2
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 264
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 267
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_4
    array-length v1, p1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 276
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 279
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method private parseRecord([B)V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 416
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0xe

    invoke-static {p1, v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 419
    array-length v1, p1

    add-int/lit8 v1, v1, -0xe

    .line 421
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xb

    if-le v3, v4, :cond_0

    .line 425
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 436
    invoke-static {p1, v1, v3, v4}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 443
    array-length v1, p1

    sub-int/2addr v1, v4

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 445
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 446
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "AdnRecord"

    const-string v3, "Error parsing AdnRecord"

    .line 449
    invoke-static {v1, v3, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 451
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 452
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 453
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, ""

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v0

    .line 244
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4

    .line 381
    :try_start_0
    array-length v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 385
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 390
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    return-void

    .line 395
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v1, v3, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "AdnRecord"

    const-string v1, "Error parsing AdnRecord ext record"

    .line 404
    invoke-static {v0, v1, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public buildAdnString(I)[B
    .locals 7
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    add-int/lit8 v0, p1, -0xe

    .line 330
    new-array v1, p1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, p1, :cond_0

    .line 332
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v3, "AdnRecord"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[buildAdnString] Empty dialing number"

    .line 336
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v6, 0x14

    if-le p1, v6, :cond_2

    const-string p1, "[buildAdnString] Max length of dialing number is 20"

    .line 340
    invoke-static {v3, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1

    .line 346
    :cond_3
    new-array p1, v2, [B

    .line 348
    :goto_1
    array-length v6, p1

    if-le v6, v0, :cond_4

    .line 349
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[buildAdnString] Max length of tag is "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 352
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 353
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v3

    add-int/lit8 v5, v0, 0x1

    .line 356
    array-length v6, v3

    invoke-static {v3, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v0, 0x0

    .line 359
    array-length v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v5

    :cond_5
    add-int/lit8 v3, v0, 0xc

    .line 362
    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0xd

    .line 364
    aput-byte v4, v1, v0

    .line 367
    array-length v0, p1

    if-lez v0, :cond_6

    .line 368
    array-length v0, p1

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalNumbers()[Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfid()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRecId()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public getRecordNumber()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .line 230
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    .line 292
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 293
    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 294
    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAdditionalNumbers([Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ADN Record \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v2, "AdnRecord"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 219
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    .line 220
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 306
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 311
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAdditionalNumbers:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
