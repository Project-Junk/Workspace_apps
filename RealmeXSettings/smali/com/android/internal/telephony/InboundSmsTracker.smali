.class public Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field public static final DEST_PORT_FLAG_3GPP2:I = 0x40000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEST_PORT_FLAG_NO_PORT:I = 0x10000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEST_PORT_MASK:I = 0xffff

.field public static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND (destination_port & 524288=0) AND deleted=0"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SELECT_BY_REFERENCE_3GPP2WAP:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND (destination_port & 524288=524288) AND deleted=0"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mDeleteWhere:Ljava/lang/String;

.field private mDeleteWhereArgs:[Ljava/lang/String;

.field private final mDestPort:I

.field private final mDisplayAddress:Ljava/lang/String;

.field private final mIs3gpp2:Z

.field private final mIs3gpp2WapPdu:Z

.field private final mMessageBody:Ljava/lang/String;

.field private final mMessageCount:I

.field private final mPdu:[B

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 7

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 164
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    const/4 v1, 0x2

    .line 166
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 167
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 168
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    goto :goto_2

    .line 171
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/high16 v5, 0x20000

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    .line 173
    iput-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_0

    :cond_1
    const/high16 v5, 0x40000

    and-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 175
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_0

    .line 177
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    :goto_0
    const/high16 p2, 0x80000

    and-int/2addr p2, v2

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v0

    .line 179
    :goto_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 180
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    :goto_2
    const/4 p2, 0x3

    .line 183
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    const/4 v2, 0x6

    .line 184
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    const/16 v2, 0x9

    .line 185
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    const/4 v2, 0x5

    .line 187
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v4, :cond_4

    const/4 p2, 0x7

    .line 189
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 190
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 192
    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    const-string p2, "_id=?"

    .line 193
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 194
    new-array p2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    .line 197
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 198
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 201
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 202
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v3

    sub-int/2addr v2, v3

    if-ltz v2, :cond_5

    .line 204
    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    if-ge v2, v3, :cond_5

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 210
    new-array p2, p2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    aput-object v2, p2, v0

    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    :goto_3
    const/16 p2, 0x8

    .line 213
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    return-void

    .line 205
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid PDU sequence "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 144
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 145
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 146
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 147
    iput-boolean p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 148
    iput-object p12, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 150
    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    .line 152
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 153
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 154
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 155
    iput p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return-void
.end method

.method public constructor <init>([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 108
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 109
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 110
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 111
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 112
    iput-object p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 113
    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 114
    iput-object p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    const/4 p1, 0x1

    .line 118
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return-void
.end method

.method private addDestPortQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 368
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const-string v0, "destination_port & 524288=524288"

    goto :goto_0

    :cond_0
    const-string v0, "destination_port & 524288=0"

    .line 374
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getRealDestPort(I)I
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pdu"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-wide v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x10000

    goto :goto_0

    :cond_0
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 228
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x40000

    goto :goto_1

    :cond_1
    const/high16 v2, 0x20000

    :goto_1
    or-int/2addr v1, v2

    .line 233
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v2, :cond_2

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 236
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "destination_port"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "address"

    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    const-string v2, "display_originating_addr"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reference_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sequence"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    const-string v2, "message_body"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeleteWhere()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    return v0
.end method

.method public getDisplayAddress()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getExactMatchDupDetectQuery()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    const-string v6, "address=? AND reference_number=? AND count=? AND sequence=? AND date=? AND message_body=?"

    .line 334
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/InboundSmsTracker;->addDestPortQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    .line 335
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 337
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 312
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    const-string v0, "3gpp2"

    return-object v0

    :cond_0
    const-string v0, "3gpp"

    return-object v0
.end method

.method public getIndexOffset()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 384
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getInexactMatchDupDetectQuery()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=? AND deleted=0"

    .line 360
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/InboundSmsTracker;->addDestPortQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 361
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v2, v6, v1

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    .line 363
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    return-object v0
.end method

.method public getQueryForSegments()Ljava/lang/String;
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const-string v0, "address=? AND reference_number=? AND count=? AND (destination_port & 524288=524288) AND deleted=0"

    return-object v0

    :cond_0
    const-string v0, "address=? AND reference_number=? AND count=? AND (destination_port & 524288=0) AND deleted=0"

    return-object v0
.end method

.method public getReferenceNumber()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    return-wide v0
.end method

.method public is3gpp2()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    return v0
.end method

.method public setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsTracker{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " destPort="

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is3gpp2="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " display_originating_addr="

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDisplayAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " refNumber="

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seqNumber="

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msgCount="

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " deleteWhere("

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") deleteArgs=("

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
