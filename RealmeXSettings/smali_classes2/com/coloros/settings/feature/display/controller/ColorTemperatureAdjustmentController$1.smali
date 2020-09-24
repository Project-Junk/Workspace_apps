.class final Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;
.super Landroid/database/ContentObserver;
.source "ColorTemperatureAdjustmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;Landroid/os/Handler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->access$000(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->access$100(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const-string v2, "setting_enable_color_temperature_regulation"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController$1;->a:Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;->access$000(Lcom/coloros/settings/feature/display/controller/ColorTemperatureAdjustmentController;)Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
