.class Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WiredChargingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorKeyguardLoad(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$500(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/charginganim/IUpdateWiredChargingAnimCallback;->onCancel()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onColorOSThemeChanged()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$602(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3

    .line 103
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$200(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)V

    .line 105
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$300(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;)I

    move-result v1

    iget v2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v1, v2, :cond_1

    .line 106
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    iget p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$302(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;I)I

    if-eqz v0, :cond_1

    .line 108
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    :cond_1
    return-void
.end method

.method public onVisibleNotificationChange(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->access$402(Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;Z)Z

    .line 116
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation$2;->this$0:Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/WiredChargingAnimation;->updateWiredChargingAnimation(I)V

    return-void
.end method
