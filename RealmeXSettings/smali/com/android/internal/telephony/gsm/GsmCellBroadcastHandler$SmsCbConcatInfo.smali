.class final Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final mLocation:Landroid/telephony/SmsCbLocation;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 210
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 220
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    iget-object p1, p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 227
    invoke-virtual {v0, p1}, Landroid/telephony/SmsCbLocation;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final matchesLocation(Ljava/lang/String;II)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsCbLocation;->isInLocationArea(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
