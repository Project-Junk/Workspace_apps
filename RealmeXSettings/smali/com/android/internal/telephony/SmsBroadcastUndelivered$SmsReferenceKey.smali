.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmsReferenceKey"
.end annotation


# instance fields
.field final mAddress:Ljava/lang/String;

.field final mFormat:Ljava/lang/String;

.field final mMessageCount:I

.field final mQuery:Ljava/lang/String;

.field final mReferenceNumber:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 1

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 300
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 320
    instance-of v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 321
    check-cast p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 322
    iget-object v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    iget v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method getDeleteWhere()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    .line 305
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 315
    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
