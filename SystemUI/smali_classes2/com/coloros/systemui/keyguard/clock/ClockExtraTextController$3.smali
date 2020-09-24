.class Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ClockExtraTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4

    .line 91
    instance-of v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    move-object v2, p1

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$ColorBatteryStatus;->isConnectNotGood()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$202(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$202(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z

    const-string v0, "ClockExtraTextController"

    const-string v2, "set notifyCode and connection by default value"

    .line 95
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    .line 98
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$200(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 97
    :goto_1
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$302(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$402(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;I)I

    .line 101
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isCharged()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$502(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$602(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->updateExtraText()V

    return-void
.end method

.method public onVisibleNotificationChange(Z)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$702(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;Z)Z

    return-void
.end method
