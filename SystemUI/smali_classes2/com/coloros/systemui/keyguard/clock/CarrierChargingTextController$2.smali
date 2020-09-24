.class Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierChargingTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 6

    .line 79
    instance-of v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    const-string v1, "CarrierChargingTxtCtr"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    move-object v4, p1

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;->isConnectNotGood()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$102(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    iget v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;->notifyCode:I

    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$202(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$102(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$202(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I

    const-string v0, "set notifyCode and connection by default value"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    .line 88
    invoke-static {v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$100(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 87
    :goto_1
    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$302(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$402(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$502(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)I

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$602(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$702(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$300(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$700(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v4}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$200(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$900(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$802(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo : mBatteryFullCharged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$600(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBatteryConnectNotGood="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    .line 97
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$100(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBatteryLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    .line 98
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$400(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notifyCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$200(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCharging="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    .line 99
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$300(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->updateChargingText()V

    return-void
.end method

.method public onVisibleNotificationChange(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->access$1002(Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;Z)Z

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/CarrierChargingTextController;->updateChargingText()V

    return-void
.end method
