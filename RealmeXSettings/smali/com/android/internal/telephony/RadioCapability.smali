.class public Lcom/android/internal/telephony/RadioCapability;
.super Ljava/lang/Object;
.source "RadioCapability.java"


# static fields
.field private static final RADIO_CAPABILITY_VERSION:I = 0x1

.field public static final RC_PHASE_APPLY:I = 0x2

.field public static final RC_PHASE_CONFIGURED:I = 0x0

.field public static final RC_PHASE_FINISH:I = 0x4

.field public static final RC_PHASE_START:I = 0x1

.field public static final RC_PHASE_UNSOL_RSP:I = 0x3

.field public static final RC_STATUS_FAIL:I = 0x2

.field public static final RC_STATUS_NONE:I = 0x0

.field public static final RC_STATUS_SUCCESS:I = 0x1


# instance fields
.field private mLogicalModemUuid:Ljava/lang/String;

.field private mPhase:I

.field private mPhoneId:I

.field private mRadioAccessFamily:I

.field private mSession:I

.field private mStatus:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;I)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    .line 135
    iput p2, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    .line 136
    iput p3, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    .line 137
    iput p4, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    .line 138
    iput-object p5, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    .line 139
    iput p6, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    return-void
.end method


# virtual methods
.method public getLogicalModemUuid()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/RadioCapability;->mLogicalModemUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhase:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 186
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mRadioAccessFamily:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mSession:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/android/internal/telephony/RadioCapability;->mStatus:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mPhoneId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/telephony/RadioCapability;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getPhase()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRadioAccessFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLogicModemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getLogicalModemUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
