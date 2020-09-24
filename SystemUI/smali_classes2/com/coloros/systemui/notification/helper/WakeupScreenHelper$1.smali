.class Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$1;
.super Ljava/lang/Object;
.source "WakeupScreenHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 73
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 74
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--onSensorChanged sensorValues[0] = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Notification"

    const-string v3, "Notification--SensorHelper"

    invoke-static {v2, v3, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    aget p1, v0, v1

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->powerOnScreen()V

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->access$000(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)V

    return-void
.end method
