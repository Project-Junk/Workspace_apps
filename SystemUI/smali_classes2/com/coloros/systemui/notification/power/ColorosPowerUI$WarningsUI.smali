.class public interface abstract Lcom/coloros/systemui/notification/power/ColorosPowerUI$WarningsUI;
.super Ljava/lang/Object;
.source "ColorosPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WarningsUI"
.end annotation


# virtual methods
.method public abstract dismissHighTemperatureWarning()V
.end method

.method public abstract dismissInvalidChargerWarning()V
.end method

.method public abstract dismissLowBatteryWarning()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract isInvalidChargerWarningShowing()Z
.end method

.method public abstract showHighTemperatureWarning()V
.end method

.method public abstract showInvalidChargerWarning()V
.end method

.method public abstract showLowBatteryWarning(Z)V
.end method

.method public abstract showThermalShutdownWarning()V
.end method

.method public abstract update(IIJ)V
.end method

.method public abstract updateEstimate(Lcom/android/settingslib/fuelgauge/Estimate;)V
.end method

.method public abstract updateLowBatteryWarning()V
.end method

.method public abstract updateThresholds(JJ)V
.end method

.method public abstract userSwitched()V
.end method
