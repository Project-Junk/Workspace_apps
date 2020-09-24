.class Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockFillLightCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLightCheckOk:Z

.field private mLightTimeStamp:J

.field private mProximityCheckOk:Z

.field private mProximityTimeStamp:J

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 88
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const-string v3, "PROXIMITY"

    goto :goto_0

    :cond_0
    const-string v3, "LIGHT"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Keyguard"

    const-string v5, "KeyguardFaceUnlockFillLightCtrl"

    invoke-static {v3, v5, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 93
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mProximityCheckOk:Z

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mProximityTimeStamp:J

    goto :goto_3

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 96
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mLightCheckOk:Z

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mLightTimeStamp:J

    .line 99
    :cond_4
    :goto_3
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mProximityCheckOk:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mLightCheckOk:Z

    if-eqz p1, :cond_5

    iget-wide v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mProximityTimeStamp:J

    iget-wide v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mLightTimeStamp:J

    sub-long/2addr v0, v2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long p1, v0, v2

    if-gez p1, :cond_5

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mProximityTimeStamp:J

    .line 102
    iput-wide v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mLightTimeStamp:J

    .line 103
    iput-boolean v4, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mProximityCheckOk:Z

    .line 104
    iput-boolean v4, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->mLightCheckOk:Z

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl$1;->this$0:Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->access$000(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;)V

    :cond_5
    return-void
.end method
