.class Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;
.super Landroid/database/ContentObserver;
.source "ClockSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Landroid/os/Handler;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->isDualClockOnScreenLockSwitchOn()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->access$002(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Z)Z

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDualClockOnScreenLockObserver switch change "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->access$000(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClockSwitchHelper"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->access$200(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->access$102(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Z)Z

    .line 95
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->refreshClockType(Z)V

    return-void
.end method
