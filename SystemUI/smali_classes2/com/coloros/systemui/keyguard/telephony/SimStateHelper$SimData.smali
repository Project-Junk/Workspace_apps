.class Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;
.super Ljava/lang/Object;
.source "SimStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimData"
.end annotation


# instance fields
.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mSlotId:I

.field mSubId:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->this$0:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p2, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSubId:I

    .line 333
    iput p3, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSlotId:I

    .line 334
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimData{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper$SimData;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
