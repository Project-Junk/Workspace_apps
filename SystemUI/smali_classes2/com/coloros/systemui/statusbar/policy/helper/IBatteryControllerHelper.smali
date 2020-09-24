.class public interface abstract Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;
.super Ljava/lang/Object;
.source "IBatteryControllerHelper.java"


# virtual methods
.method public abstract addBroadcastAction(Landroid/content/IntentFilter;)V
.end method

.method public abstract getChargerTechnology()I
.end method

.method public abstract getFastChargeState()Z
.end method

.method public abstract handleBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract isCharging(Landroid/content/Intent;)Z
.end method

.method public abstract onDestroy()V
.end method
