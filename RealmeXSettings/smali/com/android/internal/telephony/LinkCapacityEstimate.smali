.class public Lcom/android/internal/telephony/LinkCapacityEstimate;
.super Ljava/lang/Object;
.source "LinkCapacityEstimate.java"


# static fields
.field public static final INVALID:I = -0x1

.field public static final STATUS_ACTIVE:I = 0x0

.field public static final STATUS_SUSPENDED:I = 0x1


# instance fields
.field public final confidence:I

.field public final downlinkCapacityKbps:I

.field public final status:I

.field public final uplinkCapacityKbps:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 55
    iput p2, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->uplinkCapacityKbps:I

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->confidence:I

    .line 57
    iput p1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->status:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 47
    iput p2, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->confidence:I

    .line 48
    iput p3, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->status:I

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->uplinkCapacityKbps:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{downlinkCapacityKbps="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget v1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uplinkCapacityKbps="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->uplinkCapacityKbps:I

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->confidence:I

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/LinkCapacityEstimate;->status:I

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
