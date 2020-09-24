.class Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$3;
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

    .line 110
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "ClockSwitchHelper"

    const-string v0, "mResidentCityChangeObserver switch change"

    .line 113
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->access$200(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->access$102(Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;Z)Z

    .line 116
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper$3;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->refreshClockType(Z)V

    return-void
.end method
