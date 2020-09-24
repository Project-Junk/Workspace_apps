.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;
.super Ljava/lang/Object;
.source "OnScreenFingerprintAODShowMech.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isHideFromReset()Z

    move-result v0

    const-string v1, "OnScreenFingerprintAODShowMech"

    const-string v2, "Aod"

    if-eqz v0, :cond_0

    const-string p0, "onSensorChanged: return for hide from reset"

    .line 104
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget p1, p1, v3

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$102(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;Z)Z

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSensorChanged: mProximityNear "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/common/AodManager;->setCurrentNearState(Z)V

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/common/AodManager;->setOnNearState(Z)V

    .line 111
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->removeCallbacksInWorkThread(Ljava/lang/Runnable;)V

    const-string p0, "onSensorChanged: aod is not in show"

    .line 113
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 116
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->removeCallbacksInWorkThread(Ljava/lang/Runnable;)V

    const-string p0, "onSensorChanged: aod is already in show"

    .line 117
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1388

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 121
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->removeCallbacksInWorkThread(Ljava/lang/Runnable;)V

    .line 122
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Ljava/lang/Runnable;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;

    .line 123
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintAODShowMech;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-wide/16 v0, 0xfa0

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x1f4

    .line 122
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/AodThreadUtil;->runOnWorkThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
