.class Lcom/android/keyguard/KeyguardClockSwitch$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardClockSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardClockSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitch;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$3;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorOSThemeChanged()V
    .locals 2

    .line 685
    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onColorOSThemeChanged()V

    const-string v0, "KeyguardClockSwitch"

    const-string v1, "onColorOSThemeChanged"

    .line 686
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$3;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->access$500(Lcom/android/keyguard/KeyguardClockSwitch;)Lcom/android/keyguard/clock/ClockManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->reload()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    .line 678
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    const-string p1, "KeyguardClockSwitch"

    const-string v0, "onUserSwitching"

    .line 679
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$3;->this$0:Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->access$400(Lcom/android/keyguard/KeyguardClockSwitch;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockSwitchHelper;->refreshClockType(Z)V

    return-void
.end method
