.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaRedirectingNumberInfoRec"
.end annotation


# static fields
.field public static final REASON_CALLED_DTE_OUT_OF_ORDER:I = 0x9

.field public static final REASON_CALL_FORWARDING_BUSY:I = 0x1

.field public static final REASON_CALL_FORWARDING_BY_THE_CALLED_DTE:I = 0xa

.field public static final REASON_CALL_FORWARDING_NO_REPLY:I = 0x2

.field public static final REASON_CALL_FORWARDING_UNCONDITIONAL:I = 0xf

.field public static final REASON_UNKNOWN:I


# instance fields
.field public numberInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

.field public redirectingReason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v7, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    const/4 v1, 0x5

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;-><init>(ILjava/lang/String;IIII)V

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->numberInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    .line 222
    iput p6, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->redirectingReason:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CdmaNumberInfoRec: { numberInfoRec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->numberInfoRec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaNumberInfoRec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redirectingReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaRedirectingNumberInfoRec;->redirectingReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
